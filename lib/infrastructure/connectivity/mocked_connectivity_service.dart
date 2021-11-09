import 'package:dart_counter/domain/connectivity/i_connectivity_service.dart';
import 'package:dart_counter/main_dev.dart' as md;
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: IConnectivityService)
class MockedConnectivityService implements IConnectivityService {
  @override
  Stream<bool> watchIsOffline() => Stream.value(!md.hasNetworkConnection);

  @override
  Future<bool> isOffline() async => !md.hasNetworkConnection;
}
