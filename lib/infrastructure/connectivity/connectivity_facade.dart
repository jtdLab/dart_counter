import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_counter/domain/connectivity/i_connectivity_service.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IConnectivityService)
class ConnectivityFacade implements IConnectivityService {
  final Connectivity _connectivity;

  ConnectivityFacade(
    this._connectivity,
  );

  @override
  Future<bool> isOffline() async {
    final connectivityResult = await _connectivity.checkConnectivity();

    return connectivityResult == ConnectivityResult.none;
  }

  @override
  Stream<bool> watchIsOffline() {
    return _connectivity.onConnectivityChanged.map(
      (connectivityResult) => connectivityResult == ConnectivityResult.none,
    );
  }
}
