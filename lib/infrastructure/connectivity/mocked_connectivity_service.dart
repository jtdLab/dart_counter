import 'package:dart_counter/domain/connectivity/i_connectivity_service.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IConnectivityService)
class MockedConnectivityService implements IConnectivityService {
  static bool hasNetworkConnection = true;

  final BehaviorSubject<bool> _isOfflineController;

  MockedConnectivityService()
      : _isOfflineController = BehaviorSubject.seeded(!hasNetworkConnection);

  @override
  Future<bool> isOffline() async => _isOfflineController.value;

  @override
  Stream<bool> watchIsOffline() => _isOfflineController.stream;
}
