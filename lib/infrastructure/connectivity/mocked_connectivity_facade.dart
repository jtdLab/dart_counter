import 'package:dart_counter/domain/connectivity/i_connectivity_facade.dart';
import 'package:dart_counter/main_dev.dart' as md;
import 'package:injectable/injectable.dart';

@Environment(Environment.dev)
@LazySingleton(as: IConnectivityFacade)
class MockedConnectivityFacade implements IConnectivityFacade {
  @override
  Stream<bool> watchIsOffline() => Stream.value(!md.hasNetworkConnection);

  @override
  Future<bool> isOffline() async => !md.hasNetworkConnection;
}
