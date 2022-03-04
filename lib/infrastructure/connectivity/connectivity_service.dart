import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_counter/domain/connectivity/i_connectivity_service.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IConnectivityService)
class ConnectivityService implements IConnectivityService {
  final Connectivity _connectivity;

  ConnectivityService(
    this._connectivity,
  );

  @override
  Future<bool> isOffline() async {
    // request connectivity result
    final connectivityResult = await _connectivity.checkConnectivity();

    // when connectivity result is none return true else false
    return connectivityResult == ConnectivityResult.none;
  }

  @override
  Stream<bool> watchIsOffline() {
    // map connectivity results
    return _connectivity.onConnectivityChanged.map(
      // to true when none else false
      (connectivityResult) => connectivityResult == ConnectivityResult.none,
    );
  }
}
