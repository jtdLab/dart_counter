import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';
part 'user_data_bloc.freezed.dart';

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  UserDataBloc()
      : super(
          // Set initial state
          const UserDataState.loadInProgress(),
        ) {
    // Register event handlers
    on<UserDataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
