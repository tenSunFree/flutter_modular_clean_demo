import 'package:core/core.dart';

class SpeedTestCacheService {
  List<SpeedTestResult> _cachedResults = const [];
  String _cachedJson = '[]';

  List<SpeedTestResult> get cachedResults =>
      List<SpeedTestResult>.unmodifiable(_cachedResults);

  String get cachedJson => _cachedJson;

  void save(List<SpeedTestResult> results, String jsonString) {
    _cachedResults = List<SpeedTestResult>.from(results);
    _cachedJson = jsonString;
  }

  void clear() {
    _cachedResults = const [];
    _cachedJson = '[]';
  }
}
