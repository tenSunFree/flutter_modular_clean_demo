import 'package:app_shell/app_shell.dart';
import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:home/home.dart';
import 'package:profile/profile.dart';
import 'package:root/core/di/injection_container.config.dart';
import 'package:session/session.dart';
import 'package:theming/theming.dart';
import 'package:analytics/analytics.dart';

final GetIt getIt = GetIt.I;

@InjectableInit(
  // You must manually tell injectable which external modules to include
  externalPackageModulesBefore: [
    // Use ExternalModule to wrap the class name
    ExternalModule(ThemingPackageModule),
    ExternalModule(AuthPackageModule),
    ExternalModule(SessionPackageModule),
    ExternalModule(HomePackageModule),
    ExternalModule(ProfilePackageModule),
    ExternalModule(AppShellPackageModule),
    ExternalModule(AnalyticsPackageModule),
    // Other external modules
    // ...
  ],
)
Future<void> configureDependencies() async {
  // The generated extension will be updated according to your config file
  // will execute the registration logic of all Modules above in order
  getIt.init();
}
