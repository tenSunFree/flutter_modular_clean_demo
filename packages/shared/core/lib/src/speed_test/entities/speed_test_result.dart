class SpeedTestResult {
  final String domain;
  final double rawTimeMs;

  const SpeedTestResult({required this.domain, required this.rawTimeMs});

  bool get isSuccess => rawTimeMs.isFinite && !rawTimeMs.isNaN;

  int? get roundedTimeMs => isSuccess ? rawTimeMs.round() : null;
}
