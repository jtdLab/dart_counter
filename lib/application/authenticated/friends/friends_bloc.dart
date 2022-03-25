import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'friends_bloc.freezed.dart';
part 'friends_event.dart';
part 'friends_state.dart';

@injectable
class FriendsBloc extends Bloc<FriendsEvent, FriendsState> {
  final IFriendService _friendService;

  FriendsBloc(
    this._friendService,
  ) : super(
          // Set inital state
          const FriendsState.initial(),
        ) {
    // Register event handlers
    on<_Started>((_, emit) => _handleStarted(emit));
    on<_FriendSelected>((event, emit) => _handleFriendSelected(event, emit));
    on<_FriendRequestAccepted>(
      (event, emit) => _handleFriendRequestAccepted(event),
    );
    on<_FriendRequestDeclined>(
      (event, emit) => _handleFriendRequestDeclined(event),
    );
  }

  /// Returns instance registered inside getIt.
  factory FriendsBloc.getIt() => getIt<FriendsBloc>();

  /// Handle incoming [_Started] event.
  void _handleStarted(
    Emitter<FriendsState> emit,
  ) {
    // TODO is this the correct location ?
    // TODO does this belong to application or infra atm its infra
    _friendService.markReceivedFriendRequestsAsRead();
  }

  /// Handle incoming [_FriendSelected] event.
  // TODO maybe check if event.friend is element of friends or just use index instead of selectedFriend ??
  void _handleFriendSelected(
    _FriendSelected event,
    Emitter<FriendsState> emit,
  ) =>
      emit(state.copyWith(selectedFriend: event.friend));

  /// Handle incoming [_FriendRequestAccepted] event.
  void _handleFriendRequestAccepted(
    _FriendRequestAccepted event,
  ) {
    // TODO await result ??
    _friendService.acceptFriendRequest(friendRequest: event.friendRequest);
  }

  /// Handle incoming [_FriendRequestDeclined] event.
  void _handleFriendRequestDeclined(
    _FriendRequestDeclined event,
  ) {
    // TODO await result ??
    _friendService.declineFriendRequest(friendRequest: event.friendRequest);
  }

  /**
   * @override
  Future<void> close() {
    // TODO should be done in AutoResetLazySingleton
    if (getIt.isRegistered<FriendsBloc>()) {
      getIt.resetLazySingleton<FriendsBloc>();
    }

    return super.close();
  }
   */
}
