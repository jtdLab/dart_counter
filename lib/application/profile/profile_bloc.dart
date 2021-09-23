import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserFacade _userFacade;

  StreamSubscription? _userSubscription;

  ProfileBloc(
    this._userFacade,
  ) : super(
          ProfileState.initial(user: _userFacade.getUser()),
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
    return super.close();
  }
}
