//@GeneratedMicroModule;SpeedTestPackageModule;package:speed_test/src/core/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core/core.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;
import 'package:speed_test/speed_test.dart' as _i792;
import 'package:speed_test/src/core/di/speed_test_module.dart' as _i251;

class SpeedTestPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final speedTestModule = _$SpeedTestModule();
    gh.lazySingleton<_i792.SpeedTestRemoteDataSource>(
        () => speedTestModule.remoteDataSource);
    gh.lazySingleton<_i792.SpeedTestCacheService>(
        () => speedTestModule.cacheService);
    gh.lazySingleton<_i494.ISpeedTestRepository>(
        () => speedTestModule.speedTestRepository(
              gh<_i792.SpeedTestRemoteDataSource>(),
              gh<_i792.SpeedTestCacheService>(),
            ));
  }
}

class _$SpeedTestModule extends _i251.SpeedTestModule {}
