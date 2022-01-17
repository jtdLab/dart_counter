/**
 * import 'package:bloc/bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PointsCubit extends Cubit<int> {
  PointsCubit() : super(0);

  void update(int newPoints) => emit(newPoints);

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<PointsCubit>()) {
      getIt.resetLazySingleton<PointsCubit>();
    }

    return super.close();
  }
}

 */