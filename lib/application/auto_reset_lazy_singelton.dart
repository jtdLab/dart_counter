import 'package:dart_counter/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin AutoResetLazySingleton<E, S> on Bloc<E, S> {
  @override
  Future<void> close() {
    if (getIt.isRegistered<Bloc<E, S>>(instance: this)) {
      getIt.resetLazySingleton<Bloc<E, S>>(instance: this);
    }
    return super.close();
  }
}
