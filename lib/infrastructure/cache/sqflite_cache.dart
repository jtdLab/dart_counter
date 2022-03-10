import 'package:dart_counter/infrastructure/cache/i_cache.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';

/// Implementation of [ICache] using flutter_cache_manager which is based on sqflite.
///
/// For more information see https://pub.dev/packages/flutter_cache_manager
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: ICache)
class SqfliteCache implements ICache {
  final DefaultCacheManager _cacheManager;

  SqfliteCache(this._cacheManager);

  /**
   * Future<void> cache(
    String url, {
    required String key,
  }) async {
    await _cacheManager.downloadFile(url, key: key);
  }
   */

  @override
  Future<void> clear() async {
    await _cacheManager.emptyCache();
  }
}
