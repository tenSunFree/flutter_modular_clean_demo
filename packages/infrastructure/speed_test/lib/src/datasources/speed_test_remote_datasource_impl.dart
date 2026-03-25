import 'package:http/http.dart' as http;
import 'speed_test_remote_datasource.dart';

class SpeedTestRemoteDataSourceImpl implements SpeedTestRemoteDataSource {
  SpeedTestRemoteDataSourceImpl({http.Client? client})
    : _client = client ?? http.Client();

  final http.Client _client;
  static const String _testImgPath = '/test-img';
  static const Duration _timeout = Duration(seconds: 15);

  @override
  Future<double> downloadImg({required String domain}) async {
    final trimmedDomain = domain.trim();
    if (trimmedDomain.isEmpty) {
      return double.infinity;
    }
    try {
      final uri = Uri.https(trimmedDomain, _testImgPath);
      final request = http.Request('GET', uri);
      final stopwatch = Stopwatch()..start();
      final response = await _client.send(request).timeout(_timeout);
      if (response.statusCode != 200) {
        stopwatch.stop();
        return double.infinity;
      }

      /// Ensure measurement covers the full response body download time
      await response.stream.timeout(_timeout).drain();
      stopwatch.stop();
      return stopwatch.elapsedMicroseconds / 1000.0;
    } catch (_) {
      return double.infinity;
    }
  }

  @override
  void dispose() {
    _client.close();
  }
}
