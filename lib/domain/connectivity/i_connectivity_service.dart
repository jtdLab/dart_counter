/// Domain interface for actions related to the availability of an internet connection.
abstract class IConnectivityService {
  /// Returns a stream that emits `true` if the app is offline.
  ///
  /// **Attention:** 
  /// 
  /// If this emits false the app can be online or offline.
  /// 
  /// For example if the app is connected with a hotel wifi but doesn`t have internet access.
  Stream<bool> watchIsOffline();

  /// Returns `true` if the app is offline.
  /// 
  /// **Attention:** 
  /// 
  /// If this is false the app can be online or offline.
  /// 
  /// For example if the app is connected with a hotel wifi but doesn`t have internet access.
  Future<bool> isOffline();
}
