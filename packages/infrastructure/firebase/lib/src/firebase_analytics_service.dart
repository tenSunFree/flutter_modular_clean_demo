import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:analytics/analytics.dart';

// Use the Environment annotation to easily switch between dev and prod
@Injectable(as: IAnalyticsService, env: ['prod', 'staging'])
class FirebaseAnalyticsService implements IAnalyticsService {
  final FirebaseAnalytics _analytics;

  FirebaseAnalyticsService(this._analytics);

  @override
  Future<void> logEvent(String name, [Map<String, Object>? params]) async {
    debugPrint('FirebaseAnalyticsService, logEvent, name: $name, params: $params');
    await _analytics.logEvent(name: name, parameters: params);
  }
}
