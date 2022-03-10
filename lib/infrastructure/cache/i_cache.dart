// Infrastructure service for all actions related data caching
abstract class ICache {
  Future<void> clear();
}
