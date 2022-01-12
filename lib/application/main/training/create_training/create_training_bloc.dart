import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart'
    as bobs27;
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_training_bloc.freezed.dart';
part 'create_training_event.dart';

@injectable
class CreateTrainingBloc
    extends Bloc<CreateTrainingEvent, AbstractTrainingGameSnapshot> {
  // TODO remove
  /**
   * final ISingleTrainingService _singleTrainingService;
  final IDoubleTrainingService _doubleTrainingService;
  final IScoreTrainingService _scoreTrainingService;
  final IBobsTwentySevenService _bobsTwentySevenService;
   */
  AbstractITrainingService _trainingService;
  final IUserService _userService;

  late StreamSubscription _snapshotsSubscription;

  CreateTrainingBloc(
    // TODO remove
    /**
     * this._singleTrainingService,
    this._doubleTrainingService,
    this._scoreTrainingService,
    this._bobsTwentySevenService,
     */
    this._userService,
  )   : _trainingService = getIt<ISingleTrainingService>(),
        super(
          getIt<ISingleTrainingService>().createGame(
            owner: _userService.getUser().getOrElse(() => throw Error()),
          ),
          // set initial state
          /**
          *  SingleTrainingGameSnapshot.initial(
            username: _userService
                .getUser()
                .getOrElse(() => throw Error())
                .profile
                .name
                .getOrCrash(),
          ),
          */
        ) {
    // register event handlers
    on<_Created>((_, emit) async => _mapCreatedToState(emit));
    on<_PlayerAdded>((_, __) => _mapPlayerAddedToState());
    on<_PlayerRemoved>((event, _) => _mapPlayerRemovedToState(event));
    on<_PlayerReordered>(
      (event, _) => _mapPlayerReorderedToState(event),
    );
    on<_PlayerNameUpdated>(
      (event, _) => _mapPlayerNameUpdatedToState(event),
    );
    on<_TypeChanged>(
      (event, emit) async => _mapTypeChangedToState(event, emit),
    );
    on<_Started>((_, __) => _mapStartedToState());
    on<_Canceled>((_, __) => _mapCanceledToState());
    on<_SnapshotReceived>(
      (event, emit) => _mapSnapshotReceivedToState(event, emit),
    );
  }

  Future<void> _mapCreatedToState(
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) async {
    final user = _userService.getUser().fold(
          (failure) => null,
          (user) => user,
        );

    if (user != null) {
      _trainingService.createGame(owner: user);

      final gameSnapshots = _trainingService.watchGame();
      _snapshotsSubscription = gameSnapshots.listen((gameSnapshot) {
        add(
          CreateTrainingEvent.snapshotReceived(gameSnapshot: gameSnapshot),
        );
      });

      final gameSnapshot = await gameSnapshots.first;

      emit(gameSnapshot);
    }
  }

  void _mapPlayerAddedToState() {
    _trainingService.addPlayer();
  }

  void _mapPlayerRemovedToState(
    _PlayerRemoved event,
  ) {
    final index = event.index;

    _trainingService.removePlayer(index: index);
  }

  void _mapPlayerReorderedToState(
    _PlayerReordered event,
  ) {
    final oldIndex = event.oldIndex;
    final newIndex = event.newIndex;

    _trainingService.reorderPlayer(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  void _mapPlayerNameUpdatedToState(
    _PlayerNameUpdated event,
  ) {
    final index = event.index;
    final newName = event.newName;

    _trainingService.updateName(
      index: index,
      newName: newName,
    );
  }

  Future<void> _mapTypeChangedToState(
    _TypeChanged event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) async {
    final user = _userService.getUser().fold(
          (failure) => null,
          (user) => user,
        );

    if (user != null) {
      await _snapshotsSubscription.cancel();

      final newType = event.newType;

      _trainingService.cancel();

      final players = state.players
          .asList()
          .where((player) => player != state.owner)
          .map((player) => player.name)
          .toList();

      // TODO reset service singletons here or in service injection
      switch (newType) {
        case Type.single:
          if (_trainingService is! ISingleTrainingService) {
            _trainingService = getIt<ISingleTrainingService>();
          }
          break;
        case Type.double:
          if (_trainingService is! IDoubleTrainingService) {
            _trainingService = getIt<IDoubleTrainingService>();
          }
          break;
        case Type.score:
          if (_trainingService is! IScoreTrainingService) {
            _trainingService = getIt<IScoreTrainingService>();
          }
          break;
        case Type.bobs27:
          if (_trainingService is! IBobsTwentySevenService) {
            _trainingService = getIt<IBobsTwentySevenService>();
          }
          break;
      }

      _snapshotsSubscription =
          _trainingService.watchGame().listen((gameSnapshot) {
        add(
          CreateTrainingEvent.snapshotReceived(
            gameSnapshot: gameSnapshot,
          ),
        );
      });

      _trainingService.createGame(
        owner: user,
        players: players,
      );
    }
  }

  void _mapStartedToState() {
    _trainingService.start();
  }

  void _mapCanceledToState() {
    _trainingService.cancel();
  }

  void _mapSnapshotReceivedToState(
    _SnapshotReceived event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
    final snapshot = event.gameSnapshot;

    emit(event.gameSnapshot);
  }

  @override
  Future<void> close() {
    _snapshotsSubscription.cancel();

    return super.close();
  }
}
