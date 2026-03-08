import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:analytics/analytics.dart';

// Use the Environment annotation to easily switch between dev and prod
@Injectable(as: IAnalyticsService, env: ['prod', 'staging', 'dev'])
class FirebaseAnalyticsService implements IAnalyticsService {
  final FirebaseAnalytics _analytics;

  FirebaseAnalyticsService(this._analytics);

  @override
  Future<void> log(AnalyticsEvent event) {
    return logRawEvent(event.name, parameters: event.parameters);
  }

  @override
  Future<void> logRawEvent(
    String name, {
    Map<String, Object>? parameters,
  }) async {
    try {
      _debugLog('Event: $name, Params: $parameters');
      await _analytics.logEvent(name: name, parameters: parameters);
    } catch (e, stack) {
      _handleError('logRawEvent', e, stack);
    }
  }

  @override
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
    Map<String, Object>? parameters,
  }) async {
    try {
      _debugLog(
        'ScreenView: $screenName, Class: $screenClass, Params: $parameters',
      );
      await _analytics.logScreenView(
        screenName: screenName,
        screenClass: screenClass,
        parameters: parameters,
      );
    } catch (e, stack) {
      _handleError('logScreenView', e, stack);
    }
  }

  @override
  Future<void> setUserId(String? id) async {
    try {
      _debugLog('SetUserId: $id');
      await _analytics.setUserId(id: id);
    } catch (e, stack) {
      _handleError('setUserId', e, stack);
    }
  }

  @override
  Future<void> setUserProperty({required String name, String? value}) async {
    try {
      _debugLog('UserProperty: $name = $value');
      await _analytics.setUserProperty(name: name, value: value);
    } catch (e, stack) {
      _handleError('setUserProperty', e, stack);
    }
  }

  @override
  Future<void> setEnabled(bool enabled) async {
    try {
      _debugLog('SetEnabled: $enabled');
      await _analytics.setAnalyticsCollectionEnabled(enabled);
    } catch (e, stack) {
      _handleError('setEnabled', e, stack);
    }
  }

  @override
  Future<void> reset() async {
    try {
      _debugLog('Reset analytics data');
      await _analytics.resetAnalyticsData();
    } catch (e, stack) {
      _handleError('reset', e, stack);
    }
  }

  void _debugLog(String message) {
    if (kDebugMode) {
      debugPrint('[FirebaseAnalytics] $message');
    }
  }

  void _handleError(String method, Object error, StackTrace stack) {
    if (kDebugMode) {
      debugPrint('[FirebaseAnalytics] Error in $method: $error');
      debugPrintStack(stackTrace: stack);
    }
    // TODO: Consider injecting ILogger / Crashlytics / Sentry in the future
  }
}
