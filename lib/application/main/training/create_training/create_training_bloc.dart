import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
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
    on<_Started>(
      (_, emit) async => _mapStartedToState(emit),
      transformer: restartable(),
    );
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
      transformer: restartable(),
    );
    on<_TrainingStarted>((_, __) => _mapTrainingStartedToState());
    on<_TrainingCanceled>((_, __) => _mapTrainingCanceledToState());
    on<_SingleDoubleModeChanged>(
      (event, __) => _mapSingleDoubleModeChangedToState(event),
    );
    on<_NumberOfTakesChanged>(
      (event, __) => _mapNumberOfTakesChangedToState(event),
    );
    on<_BobsTwentySevenModeChanged>(
      (event, __) => _mapBobsTwentySevenModeChangedToState(event),
    );
  }

  Future<void> _mapStartedToState(
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) async {
    await emit.forEach<AbstractTrainingGameSnapshot>(
      _trainingService.watchGame(),
      onData: (gameSnapshot) => gameSnapshot,
    );
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

      _trainingService.createGame(
        owner: user,
        players: players,
      );

      await emit.forEach<AbstractTrainingGameSnapshot>(
        _trainingService.watchGame(),
        onData: (gameSnapshot) => gameSnapshot,
      );
    }
  }

  void _mapTrainingStartedToState() {
    _trainingService.start();
  }

  void _mapTrainingCanceledToState() {
    _trainingService.cancel();
  }

  void _mapSingleDoubleModeChangedToState(
    _SingleDoubleModeChanged event,
  ) {
    if (_trainingService is ISingleTrainingService) {
      final newMode = event.newMode;

      (_trainingService as ISingleTrainingService).updateMode(newMode: newMode);
    }
    if (_trainingService is IDoubleTrainingService) {
      final newMode = event.newMode;

      (_trainingService as IDoubleTrainingService).updateMode(newMode: newMode);
    }
  }

  void _mapNumberOfTakesChangedToState(
    _NumberOfTakesChanged event,
  ) {
    if (_trainingService is IScoreTrainingService) {
      final newNumberOfTakes = event.newNumberOfTakes;

      (_trainingService as IScoreTrainingService)
          .updateNumberOfTakes(newNumberOfTakes: newNumberOfTakes);
    }
  }

  void _mapBobsTwentySevenModeChangedToState(
    _BobsTwentySevenModeChanged event,
  ) {
    if (_trainingService is IBobsTwentySevenService) {
      final newMode = event.newMode;

      (_trainingService as IBobsTwentySevenService)
          .updateMode(newMode: newMode);
    }
  }

  // TODO on type change there is a cancled snapshot received dont emit it else the ui will go to home on type change
  @override
  void onChange(Change<AbstractTrainingGameSnapshot> change) {
    print(
        'current ${change.currentState.runtimeType} ${change.currentState.status} ${change.currentState.hashCode}');
    print(
        'next ${change.nextState.runtimeType} ${change.nextState.status} ${change.currentState.hashCode}');
    super.onChange(change);
  }
}
