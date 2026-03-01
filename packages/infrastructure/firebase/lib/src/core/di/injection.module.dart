//@GeneratedMicroModule;FirebasePackageModule;package:firebase/src/core/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:analytics/analytics.dart' as _i548;
import 'package:firebase/src/firebase_analytics_service.dart' as _i740;
import 'package:firebase_analytics/firebase_analytics.dart' as _i398;
import 'package:injectable/injectable.dart' as _i526;

const String _prod = 'prod';
const String _staging = 'staging';

class FirebasePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i548.IAnalyticsService>(
      () => _i740.FirebaseAnalyticsService(gh<_i398.FirebaseAnalytics>()),
      registerFor: {
        _prod,
        _staging,
      },
    );
  }
}
