import '../../analytics.dart';

abstract class IAnalyticsService {
  /// Strongly-typed event — primary usage
  Future<void> log(AnalyticsEvent event);

  /// Raw event entry retained for special cases or incremental migration
  Future<void> logRawEvent(String name, {Map<String, Object>? parameters});

  /// Screen view tracking
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
    Map<String, Object>? parameters,
  });

  /// Set user id after login; pass null on logout
  Future<void> setUserId(String? id);

  /// User property, e.g., member_level, theme_preference
  Future<void> setUserProperty({required String name, String? value});

  /// Privacy/consent toggle
  Future<void> setEnabled(bool enabled);

  /// Reset analytics state
  Future<void> reset();
}
