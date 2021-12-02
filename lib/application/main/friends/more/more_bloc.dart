import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'more_event.dart';
part 'more_state.dart';
part 'more_bloc.freezed.dart';

@lazySingleton
class MoreBloc extends Bloc<MoreEvent, MoreState> with AutoResetLazySingleton {
  IFriendService _friendService;

  MoreBloc(
    this._friendService,
  ) : super(const MoreState.initial()) {
    on<RemovePressed>((event, emit) async {
      await _friendService.removeFriend(friend: event.friend);
    });
  }

  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<MoreBloc>()) {
      getIt.resetLazySingleton<MoreBloc>();
    }

    return super.close();
  }
}
