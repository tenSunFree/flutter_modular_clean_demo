abstract class IAnalyticsService {
  Future<void> logEvent(String name, [Map<String, dynamic>? params]);
}