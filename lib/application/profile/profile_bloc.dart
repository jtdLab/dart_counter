import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> with AutoResetLazySingleton {
  final IUserFacade _userFacade;

  StreamSubscription? _userSubscription;

  ProfileBloc(
    this._userFacade,
  ) : super(
          _userFacade.getUser()?.fold(
                    (failure) => throw Error(),
                    (user) => ProfileState.initial(user: user),
                  ) ??
              (throw Error()),
        ) {
    _userSubscription = _userFacade.watchUser().listen((failurOrUser) {
      return failurOrUser.fold(
        (failure) => throw Error(), // TODO failure
        (user) => add(ProfileEvent.userReceived(user: user)),
      );
    });
  }

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      userReceived: (event) => _mapWatchUserReceivedToState(event),
    );
  }

  Stream<ProfileState> _mapWatchUserReceivedToState(
    UserReceived event,
  ) async* {
    yield ProfileState.initial(user: event.user);
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<ProfileBloc>()) {
      getIt.resetLazySingleton<ProfileBloc>();
    }
    return super.close();
  }
}
