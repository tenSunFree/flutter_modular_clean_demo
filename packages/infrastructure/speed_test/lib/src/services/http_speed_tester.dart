import 'dart:convert';
import 'package:http/http.dart' as http;

/// Third-party package usage note:
/// Package: http
/// Source: https://pub.dev/packages/http
/// Rationale:
/// 1. Lightweight, cross-platform, and easy to integrate; suitable for simple network I/O tasks.
/// 2. This task only requires downloading a specified resource and measuring elapsed time; heavy interceptors or advanced features are unnecessary.
/// 3. You can obtain a StreamedResponse via http.Client.send(),
///    and use response.stream.drain() to fully read the response body,
///    enabling measurement of the time to download the entire image instead of only to the response headers.
class DomainSpeedTester {
  DomainSpeedTester({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  static const String _testImgPath = '/test-img';
  static const Duration _requestTimeout = Duration(seconds: 15);

  /// Per requirements, store results as a JSON-encoded string
  String _cachedJson = '[]';

  /// Function to request/download the image (asynchronous background I/O)
  ///
  /// The task description conceptually specifies downloadImg(domain: String): double,
  /// but in Dart/Flutter network I/O is asynchronous, so it is implemented as Future<double>.
  ///
  /// Return value is in milliseconds (ms).
  /// On failure the function returns double.infinity so failed entries sort to the end.
  Future<double> downloadImg({required String domain}) async {
    final trimmedDomain = domain.trim();
    if (trimmedDomain.isEmpty) {
      return double.infinity;
    }
    try {
      final uri = Uri.https(trimmedDomain, _testImgPath);
      final request = http.Request('GET', uri);
      final stopwatch = Stopwatch()..start();
      final response = await _client.send(request).timeout(_requestTimeout);
      if (response.statusCode != 200) {
        stopwatch.stop();
        return double.infinity;
      }

      /// Read the response stream completely to ensure the measurement is the
      /// time taken to download the entire image.
      await response.stream.timeout(_requestTimeout).drain();
      stopwatch.stop();
      return stopwatch.elapsedMicroseconds / 1000.0;
    } catch (_) {
      return double.infinity;
    }
  }

  /// Function to store results
  ///
  /// Accepts Iterable<MapEntry<String, double>> as input. This allows
  /// preserving duplicate domain test results and avoids overwriting data.
  ///
  /// The input results are sorted by download time (ascending) and stored
  /// as a JSON string. If a download failed, the output JSON will contain
  /// null for that entry's time.
  void set(Iterable<MapEntry<String, double>> results) {
    final sortedResults = results.toList()
      ..sort((a, b) => a.value.compareTo(b.value));
    final jsonList = sortedResults
        .map((result) {
          final isValidTime = result.value.isFinite && !result.value.isNaN;
          return <String, dynamic>{
            'domain': result.key,
            'time': isValidTime ? result.value.round() : null,
          };
        })
        .toList(growable: false);
    _cachedJson = jsonEncode(jsonList);
  }

  /// Function to retrieve stored results
  /// Returns the sorted, stored JSON string.
  String get() => _cachedJson;

  /// Additional notes: full workflow
  ///
  /// Uses sequential downloads to avoid multiple domains competing for
  /// bandwidth, which could distort individual speed measurements.
  Future<void> measureAndStore(List<String> domains) async {
    final results = <MapEntry<String, double>>[];
    for (final domain in domains) {
      final time = await downloadImg(domain: domain);
      results.add(MapEntry(domain, time));
    }
    set(results);
  }

  /// Release HTTP client resources
  void dispose() {
    _client.close();
  }
}
