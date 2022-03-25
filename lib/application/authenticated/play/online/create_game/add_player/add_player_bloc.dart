import 'package:bloc/bloc.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_player_bloc.freezed.dart';
part 'add_player_event.dart';
part 'add_player_state.dart';

// TODO design

@injectable
class AddPlayerBloc extends Bloc<AddPlayerEvent, AddPlayerState> {
  AddPlayerBloc()
      : super(
          // Set initial state
          const AddPlayerState.initial(),
        ) {
    // Register event handlers
    on<AddPlayerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  /// Returns instance registered inside getIt.
  factory AddPlayerBloc.getIt() => getIt<AddPlayerBloc>();
}
