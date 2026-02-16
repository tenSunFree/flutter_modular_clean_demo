import 'package:injectable/injectable.dart';
import 'i_analytics_service.dart';

@LazySingleton(as: IAnalyticsService)
class AnalyticsService implements IAnalyticsService {
  AnalyticsService();

  @override
  Future<void> logEvent(String name, [Map<String, dynamic>? params]) async {
    // TODO: Replace with actual reporting (Firebase / Segment / HTTP)
    // For now, use print to guarantee behavior
    final payload = params ?? {};
    // Use platform logger or your existing logging service
    print('[Analytics] event=$name payload=$payload');
  }
}
