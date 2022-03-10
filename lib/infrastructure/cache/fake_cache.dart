import 'package:dart_counter/infrastructure/cache/i_cache.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: ICache)
class FakeCache implements ICache {
  final Map<String, dynamic> _cache;

  FakeCache() : _cache = {};

  @override
  Future<void> clear() async {
    _cache.clear();
  }
}
