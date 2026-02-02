import 'package:app_shell/app_shell.dart';
import 'package:auth/auth.dart';
import 'package:home/home.dart';
import 'package:profile/profile.dart';

class AppRoutes {
  static const app = AppShellRoutes();
  static const auth = AuthRoutes();
  static const home = HomeRoutes();
  static const profile = ProfileRoutes();
}

// class AppRoutes {
//   static AppShellRoutes get app => AppShellRoutes();
//   static AuthRoutes get auth => AuthRoutes();
//   static HomeRoutes get home => HomeRoutes();
//   static ProfileRoutes get profile => ProfileRoutes();
// }
