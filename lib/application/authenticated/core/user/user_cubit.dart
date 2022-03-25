import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

// TODO rename watcher
@injectable
class UserCubit extends Cubit<UserState> {
  final IUserService _userService;

  late StreamSubscription _subscription;

  UserCubit(this._userService)
      : super(
          // Set initial state
          const UserState.loadInProgress(),
        ) {
    _subscription = _userService.watchUser().listen((failureOrUser) {
      failureOrUser.fold(
        (failure) => emit(UserState.loadFailure(failure: failure)),
        (user) => emit(UserState.loadSuccess(user: user)),
      );
    });
  }

  /// Returns instance registered inside getIt.
  factory UserCubit.getIt() => getIt<UserCubit>();

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
