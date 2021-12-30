import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/core/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/application/main/friends/friends_bloc.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_bloc.freezed.dart';
part 'more_event.dart';
part 'more_state.dart';

class MoreBloc extends Bloc<MoreEvent, MoreState> with AutoResetLazySingleton {
  final IFriendService _friendService;

  final FriendsBloc _friendsBloc;

  MoreBloc(
    this._friendService,
    this._friendsBloc,
  ) : super(const MoreState.initial()) {
    on<_RemovePressed>((_, __) async => _mapRemovePressedToState());
  }

  Future<void> _mapRemovePressedToState() async {
    final friendToRemove = _friendsBloc.state.selectedFriend;
    if (friendToRemove != null) {
      await _friendService.removeFriend(friend: friendToRemove);
    }
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
