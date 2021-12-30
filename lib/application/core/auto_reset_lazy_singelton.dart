import 'package:dart_counter/injection.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

// TODO this doesnt work since get it 7.0.0
mixin AutoResetLazySingleton<E, S> on Bloc<E, S> {
  @override
  Future<void> close() async {
    /*
    if (getIt.isRegistered<Bloc<E, S>>(instance: this)) {
      await getIt.resetLazySingleton<Bloc<E, S>>(instance: this);
    }
    */
    return super.close();
  }
}
