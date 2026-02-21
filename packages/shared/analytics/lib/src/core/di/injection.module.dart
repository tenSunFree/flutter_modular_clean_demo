//@GeneratedMicroModule;AnalyticsPackageModule;package:analytics/src/core/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:analytics/src/feature/analytics/analytics_service.dart'
    as _i561;
import 'package:analytics/src/feature/analytics/i_analytics_service.dart'
    as _i753;
import 'package:injectable/injectable.dart' as _i526;

class AnalyticsPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i753.IAnalyticsService>(() => _i561.AnalyticsService());
  }
}
