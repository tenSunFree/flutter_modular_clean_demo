import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import '../../../../speed_test.dart';

@module
abstract class SpeedTestModule {
  @lazySingleton
  SpeedTestRemoteDataSource get remoteDataSource =>
      SpeedTestRemoteDataSourceImpl();

  @lazySingleton
  SpeedTestCacheService get cacheService => SpeedTestCacheService();

  @lazySingleton
  ISpeedTestRepository speedTestRepository(
      SpeedTestRemoteDataSource ds,
      SpeedTestCacheService cache,
      ) {
    return SpeedTestRepositoryImpl(ds, cache);
  }
}
