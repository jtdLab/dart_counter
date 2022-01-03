import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_event.dart';
part 'app_user_state.dart';
part 'app_user_bloc.freezed.dart';

// TODO design and impl this and keep or remove this ???

class AppUserBloc extends Bloc<AppUserEvent, AppUserState> {
  AppUserBloc() : super(const AppUserState.initial()) {
    on<_Started>((event, emit) {
      // TODO: implement event handler
    });
  }
}
