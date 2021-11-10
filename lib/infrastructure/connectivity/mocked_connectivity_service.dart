import 'package:dart_counter/domain/connectivity/i_connectivity_service.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: IConnectivityService)
class MockedConnectivityService implements IConnectivityService {
  static bool hasNetworkConnection = true;

  @override
  Future<bool> isOffline() async => !hasNetworkConnection;

  @override
  Stream<bool> watchIsOffline() => Stream.value(!hasNetworkConnection);
}
