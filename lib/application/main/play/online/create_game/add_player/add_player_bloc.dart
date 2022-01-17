import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_player_bloc.freezed.dart';
part 'add_player_event.dart';
part 'add_player_state.dart';

// TODO

@injectable
class AddPlayerBloc extends Bloc<AddPlayerEvent, AddPlayerState> {
  AddPlayerBloc() : super(const AddPlayerState.initial()) {
    on<AddPlayerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
