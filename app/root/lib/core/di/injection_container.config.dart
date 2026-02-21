// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:analytics/analytics.dart' as _i548;
import 'package:app_shell/app_shell.dart' as _i671;
import 'package:auth/auth.dart' as _i662;
import 'package:get_it/get_it.dart' as _i174;
import 'package:home/home.dart' as _i1024;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/network.dart' as _i372;
import 'package:profile/profile.dart' as _i16;
import 'package:root/core/di/injection_module.dart' as _i352;
import 'package:root/core/event/app_event_listener.dart' as _i332;
import 'package:session/session.dart' as _i332;
import 'package:storage/storage.dart' as _i431;
import 'package:theming/theming.dart' as _i370;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    await _i370.ThemingPackageModule().init(gh);
    await _i662.AuthPackageModule().init(gh);
    await _i332.SessionPackageModule().init(gh);
    await _i1024.HomePackageModule().init(gh);
    await _i16.ProfilePackageModule().init(gh);
    await _i671.AppShellPackageModule().init(gh);
    await _i548.AnalyticsPackageModule().init(gh);
    final injectionModule = _$InjectionModule();
    gh.singleton<_i372.NetworkInfo>(() => injectionModule.networkInfo);
    gh.singleton<_i332.AppEventListener>(() => _i332.AppEventListener());
    gh.lazySingleton<_i372.HttpClient>(() => injectionModule.httpClient);
    gh.lazySingleton<_i431.StorageHelper<_i431.AuthTokenDbModel>>(
      () => injectionModule.authStore,
    );
    gh.lazySingleton<_i431.StorageHelper<_i431.SettingsDbModel>>(
      () => injectionModule.settingsStore,
    );
    return this;
  }
}

class _$InjectionModule extends _i352.InjectionModule {}
