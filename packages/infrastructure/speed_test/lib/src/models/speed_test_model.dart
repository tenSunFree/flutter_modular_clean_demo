import 'package:core/core.dart';

class SpeedTestModel extends SpeedTestResult {
  const SpeedTestModel({required super.domain, required super.rawTimeMs});

  Map<String, dynamic> toJson() {
    return {'domain': domain, 'time': roundedTimeMs};
  }
}
