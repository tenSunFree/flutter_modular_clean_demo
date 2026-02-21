import 'package:app_shell/app_shell.dart';
import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:root/core/di/injection_container.dart';
import 'package:root/core/route/app_router.dart';
import 'package:session/session.dart';
import 'package:storage/storage.dart';
import 'package:theming/theming.dart';
import 'package:analytics/analytics.dart';

final appRouter = AppRouter();

Future<void> main() async {
  debugPrint('[App] Starting engine...');
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await StorageService.I.initialize();
  debugPrint('[App] Storage initialized.');
  _reportAppStart();
  runApp(const MainApp());
}

/// Handles analytics logging when the app starts
void _reportAppStart() {
  try {
    final analytics = di<IAnalyticsService>();
    analytics.logEvent('app_start');
    debugPrint('[Analytics] App start event logged.');
  } catch (e, s) {
    debugPrint('[Analytics] Failed to log event: $e');
    // Only print the stack trace in Debug mode
    assert(() {
      debugPrint('StackTrace: \n$s');
      return true;
    }());
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di<AuthBloc>(), lazy: false),
        BlocProvider(create: (context) => di<AppBloc>()),
        BlocProvider(create: (context) => di<SessionBloc>()),
      ],
      child: ValueListenableBuilder(
        valueListenable: di<ThemeManager>().currentThemeMode,
        builder: (context, themeMode, child) {
          return MaterialApp.router(
            routerConfig: appRouter.config(),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Modular Clean Architecture',
            theme: themeMode == ThemeMode.dark ? AppTheme.dark : AppTheme.light,
          );
        },
      ),
    );
  }
}
