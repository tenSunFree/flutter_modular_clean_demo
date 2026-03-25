abstract class SpeedTestRemoteDataSource {
  /// Downloads a test image from the specified domain and returns the elapsed time in milliseconds.
  /// Returns double.infinity on failure.
  Future<double> downloadImg({required String domain});

  void dispose();
}
