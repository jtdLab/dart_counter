import 'package:dart_counter/presentation/core/core.dart';
import 'package:injectable/injectable.dart';

@injectable
class BackendService {
  BackendService(@factoryParam String? url);
}
