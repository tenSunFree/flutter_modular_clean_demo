import '../entities/speed_test_result.dart';

abstract class ISpeedTestRepository {
  /// Measure all domains sequentially and update the in-memory cache with
  /// the sorted results.
  Future<void> measureAndStore(List<String> domains);

  /// Get the cached results as a JSON string.
  String getCachedResultsJson();

  /// Get the cached results as structured objects.
  List<SpeedTestResult> getCachedResults();

  /// Release any underlying resources.
  void dispose();
}
