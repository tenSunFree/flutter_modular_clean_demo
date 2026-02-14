import 'package:auto_route/auto_route.dart';
import '../../../auth.dart';

class AuthRoutesModule {
  // Define the route list as a static variable for reuse across the app
  static final List<AutoRoute> routes = [
    AutoRoute(path: AuthRoutes().login, page: LoginRoute.page, initial: true),
    AutoRoute(
      path: AuthRoutes().forgotPassword,
      page: ForgotPasswordRoute.page,
    ),
  ];
}
