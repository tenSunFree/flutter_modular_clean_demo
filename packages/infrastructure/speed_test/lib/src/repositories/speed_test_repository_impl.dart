import 'dart:convert';
import 'package:core/core.dart';
import '../datasources/speed_test_remote_datasource.dart';
import '../models/speed_test_model.dart';
import '../cache/speed_test_cache_service.dart';

class SpeedTestRepositoryImpl implements ISpeedTestRepository {
  SpeedTestRepositoryImpl(this._remoteDataSource, this._cacheService);

  final SpeedTestRemoteDataSource _remoteDataSource;
  final SpeedTestCacheService _cacheService;

  @override
  Future<void> measureAndStore(List<String> domains) async {
    final List<SpeedTestModel> results = [];

    /// Preserve sequential downloads to avoid multiple domains competing for bandwidth and skewing results
    for (final domain in domains) {
      final time = await _remoteDataSource.downloadImg(domain: domain);
      results.add(SpeedTestModel(domain: domain, rawTimeMs: time));
    }

    /// Business rule: shorter times come first; failures (infinite) naturally go last
    results.sort((a, b) => a.rawTimeMs.compareTo(b.rawTimeMs));
    final jsonString = jsonEncode(
      results.map((e) => e.toJson()).toList(growable: false),
    );
    _cacheService.save(results, jsonString);
  }

  @override
  String getCachedResultsJson() => _cacheService.cachedJson;

  @override
  List<SpeedTestResult> getCachedResults() => _cacheService.cachedResults;

  @override
  void dispose() {
    _remoteDataSource.dispose();
  }
}
