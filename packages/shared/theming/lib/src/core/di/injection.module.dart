//@GeneratedMicroModule;ThemingPackageModule;package:theming/src/core/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:storage/storage.dart' as _i431;
import 'package:theming/src/feature/application/theme_manager.dart' as _i262;
import 'package:theming/src/feature/data/datasources/theme_local_datasource.dart'
    as _i419;
import 'package:theming/src/feature/data/repository/theme_repository.dart'
    as _i595;
import 'package:theming/src/feature/domain/repository/i_theming_repository.dart'
    as _i820;

class ThemingPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i419.IThemeLocalDataSource>(() =>
        _i419.ThemingLocalDatasource(
            gh<_i431.StorageHelper<_i431.SettingsDbModel>>()));
    gh.lazySingleton<_i820.IThemeRepository>(
        () => _i595.ThemeRepository(gh<_i419.IThemeLocalDataSource>()));
    gh.lazySingleton<_i262.ThemeManager>(
        () => _i262.ThemeManager(gh<_i820.IThemeRepository>()));
  }
}
