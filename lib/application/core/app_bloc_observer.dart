import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

class AppBlocObserver extends BlocObserver {
  final Logger logger = Logger('AppBlocObserver');

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.config(
      'onChange ${bloc.runtimeType}(current: ${change.currentState}, next: ${change.nextState})',
    );
  }
}
