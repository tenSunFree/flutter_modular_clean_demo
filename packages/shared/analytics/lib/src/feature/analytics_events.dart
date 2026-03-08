import 'analytics_event.dart';

class SignUpSuccessEvent implements AnalyticsEvent {
  final String method;

  SignUpSuccessEvent(this.method);

  @override
  String get name => 'sign_up';

  @override
  Map<String, Object> get parameters => {'method': method};
}

class LoginEvent implements AnalyticsEvent {
  final String method;
  final bool success;

  LoginEvent({required this.method, required this.success});

  @override
  String get name => 'login';

  @override
  Map<String, Object> get parameters => {'method': method, 'success': success};
}

class LoginSuccessEvent implements AnalyticsEvent {
  final String userId;

  LoginSuccessEvent({required this.userId});

  @override
  String get name => 'login_success';

  @override
  Map<String, Object> get parameters => {'user_id': userId};
}

class LoginFailureEvent implements AnalyticsEvent {
  final String reason;
  final String email;

  LoginFailureEvent({required this.reason, required this.email});

  @override
  String get name => 'login_failure';

  @override
  Map<String, Object> get parameters => {'reason': reason, 'email': email};
}

class LogoutEvent implements AnalyticsEvent {
  final String reason;

  LogoutEvent({required this.reason});

  @override
  String get name => 'user_logout';

  @override
  Map<String, Object> get parameters => {'reason': reason};
}

class AppStartEvent implements AnalyticsEvent {
  @override
  String get name => 'app_start';

  @override
  Map<String, Object>? get parameters => null;
}
