import 'package:bloc/bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ShowCheckoutDetailsCubit extends Cubit<bool> {
  ShowCheckoutDetailsCubit() : super(false);

  void showCheckoutDetails() {
    emit(true);
    emit(false);
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ShowCheckoutDetailsCubit>()) {
      getIt.resetLazySingleton<ShowCheckoutDetailsCubit>();
    }

    return super.close();
  }
}
