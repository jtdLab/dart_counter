import 'package:dart_counter/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin AutoResetLazySingleton<E, S> on Bloc<E, S> {
  @override
  Future<void> close() async {
    if (getIt.isRegistered<Bloc<E, S>>()) {
      await getIt.resetLazySingleton<Bloc<E, S>>();
    }
    return super.close();
  }
}
