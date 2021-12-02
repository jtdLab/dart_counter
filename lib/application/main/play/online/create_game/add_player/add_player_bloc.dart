import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_player_event.dart';
part 'add_player_state.dart';
part 'add_player_bloc.freezed.dart';

// TODO

@lazySingleton
class AddPlayerBloc extends Bloc<AddPlayerEvent, AddPlayerState>
    with AutoResetLazySingleton {
  AddPlayerBloc() : super(const AddPlayerState.initial()) {
    on<AddPlayerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<AddPlayerBloc>()) {
      getIt.resetLazySingleton<AddPlayerBloc>();
    }

    return super.close();
  }
}
