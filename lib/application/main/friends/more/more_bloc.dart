import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/friends/friends_bloc.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'more_bloc.freezed.dart';
part 'more_event.dart';
part 'more_state.dart';

@injectable
class MoreBloc extends Bloc<MoreEvent, MoreState> {
  final IFriendService _friendService;

  final FriendsBloc _friendsBloc;

  MoreBloc(
    this._friendService,
    this._friendsBloc,
  ) : super(
          // Set inital state
          const MoreState.initial(),
        ) {
    // Register event handlers
    on<_RemovePressed>((_, __) async => _handleRemovePressed());
  }

  /// Handle incoming [_RemovePressed] event.
  Future<void> _handleRemovePressed() async {
    final friendToRemove = _friendsBloc.state.selectedFriend;
    if (friendToRemove != null) {
      await _friendService.removeFriend(friend: friendToRemove);
    }
  }

  /**
  *  @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<MoreBloc>()) {
      getIt.resetLazySingleton<MoreBloc>();
    }

    return super.close();
  }
  */
}
