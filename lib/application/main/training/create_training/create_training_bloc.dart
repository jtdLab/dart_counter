import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
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
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_training_bloc.freezed.dart';
part 'create_training_event.dart';

@injectable
class CreateTrainingBloc
    extends Bloc<CreateTrainingEvent, AbstractTrainingGameSnapshot> {
  final ISingleTrainingService _singleTrainingService;
  final IDoubleTrainingService _doubleTrainingService;
  final IScoreTrainingService _scoreTrainingService;
  final IBobsTwentySevenService _bobsTwentySevenService;
  final UserCubit _userCubit;

  AbstractITrainingService _trainingService;
  late StreamSubscription _trainingSubscription;

  CreateTrainingBloc(
    this._singleTrainingService,
    this._doubleTrainingService,
    this._scoreTrainingService,
    this._bobsTwentySevenService,
    this._userCubit,
  )   : _trainingService = _singleTrainingService,
        super(
          // Set initial state
          _singleTrainingService.createGame(owner: _userCubit.state.user),
        ) {
    // Register event handlers
    on<_Started>(
      (_, emit) async => _handleStarted(emit),
      transformer: restartable(), // TODO test restartability
    );
    on<_PlayerAdded>((_, __) => _handlePlayerAdded());
    on<_PlayerRemoved>((event, _) => _handlePlayerRemoved(event));
    on<_PlayerReordered>(
      (event, _) => _handlePlayerReordered(event),
    );
    on<_PlayerNameUpdated>(
      (event, _) => _handlePlayerNameUpdated(event),
    );
    on<_TypeChanged>(
      (event, emit) async => _handleTypeChanged(event, emit),
      transformer: restartable(), // TODO test restartability
    );
    on<_TrainingStarted>((_, __) => _handleTrainingStarted());
    on<_TrainingCanceled>((_, __) => _handleTrainingCanceled());
    on<_SingleDoubleModeChanged>(
      (event, __) => _handleSingleDoubleModeChanged(event),
    );
    on<_NumberOfTakesChanged>(
      (event, __) => _handleNumberOfTakesChanged(event),
    );
    on<_BobsTwentySevenModeChanged>(
      (event, __) => _handleBobsTwentySevenModeChanged(event),
    );
    on<_SnapshotReceived>(
      (event, emit) => _handleSnapshotReceived(event, emit),
    );
  }

  /// Returns instance registered inside getIt.
  factory CreateTrainingBloc.getIt(
    UserCubit userCubit,
  ) =>
      getIt<CreateTrainingBloc>(param1: [userCubit]);

  /// Constructor only for injectable.
  ///
  /// [otherDependencies] must containg in following order:
  ///
  /// 1. Instance of [GameInvitationsCubit].
  @factoryMethod
  factory CreateTrainingBloc.injectable(
    ISingleTrainingService singleTrainingService,
    IDoubleTrainingService doubleTrainingService,
    IScoreTrainingService scoreTrainingService,
    IBobsTwentySevenService bobsTwentySevenService,
    @factoryParam List<Object>? otherDependencies,
  ) =>
      CreateTrainingBloc(
        singleTrainingService,
        doubleTrainingService,
        scoreTrainingService,
        bobsTwentySevenService,
        otherDependencies![0] as UserCubit,
      );

  /// Handle incoming [_Started] event.
  Future<void> _handleStarted(
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) async {
    _trainingSubscription = _trainingService.watchGame().listen((snapshot) {
      add(CreateTrainingEvent.snapshotReceived(snapshot: snapshot));
    });
  }

  /// Handle incoming [_PlayerAdded] event.
  void _handlePlayerAdded() {
    _trainingService.addPlayer();
  }

  /// Handle incoming [_PlayerRemoved] event.
  void _handlePlayerRemoved(
    _PlayerRemoved event,
  ) {
    final index = event.index;

    _trainingService.removePlayer(index: index);
  }

  /// Handle incoming [_PlayerReordered] event.
  void _handlePlayerReordered(
    _PlayerReordered event,
  ) {
    final oldIndex = event.oldIndex;
    final newIndex = event.newIndex;

    _trainingService.reorderPlayer(
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }

  /// Handle incoming [_PlayerNameUpdated] event.
  void _handlePlayerNameUpdated(
    _PlayerNameUpdated event,
  ) {
    final index = event.index;
    final newName = event.newName;

    _trainingService.updateName(
      index: index,
      newName: newName,
    );
  }

  /// Handle incoming [_TypeChanged] event.
  Future<void> _handleTypeChanged(
    _TypeChanged event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) async {
    final user = _userCubit.state.user;

    final newType = event.newType;

    _trainingSubscription.cancel();
    _trainingService.cancel();

    final players = state.players
        .asList()
        .where((player) => player != state.owner)
        .map((player) => player.name)
        .toList();

    switch (newType) {
      case Type.single:
        if (_trainingService is! ISingleTrainingService) {
          _trainingService = _singleTrainingService;
        }
        break;
      case Type.double:
        if (_trainingService is! IDoubleTrainingService) {
          _trainingService = _doubleTrainingService;
        }
        break;
      case Type.score:
        if (_trainingService is! IScoreTrainingService) {
          _trainingService = _scoreTrainingService;
        }
        break;
      case Type.bobs27:
        if (_trainingService is! IBobsTwentySevenService) {
          _trainingService = _bobsTwentySevenService;
        }
        break;
    }

    _trainingService.createGame(
      owner: user,
      players: players,
    );

    _trainingSubscription = _trainingService.watchGame().listen((snapshot) {
      add(CreateTrainingEvent.snapshotReceived(snapshot: snapshot));
    });
  }

  /// Handle incoming [_TrainingStarted] event.
  void _handleTrainingStarted() {
    _trainingService.start();
  }

  /// Handle incoming [_TrainingCanceled] event.
  void _handleTrainingCanceled() {
    _trainingService.cancel();
  }

  /// Handle incoming [_SingleDoubleModeChanged] event.
  void _handleSingleDoubleModeChanged(
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

  /// Handle incoming [_NumberOfTakesChanged] event.
  void _handleNumberOfTakesChanged(
    _NumberOfTakesChanged event,
  ) {
    if (_trainingService is IScoreTrainingService) {
      final newNumberOfTakes = event.newNumberOfTakes;

      (_trainingService as IScoreTrainingService)
          .updateNumberOfTakes(newNumberOfTakes: newNumberOfTakes);
    }
  }

  /// Handle incoming [_BobsTwentySevenModeChanged] event.
  void _handleBobsTwentySevenModeChanged(
    _BobsTwentySevenModeChanged event,
  ) {
    if (_trainingService is IBobsTwentySevenService) {
      final newMode = event.newMode;

      (_trainingService as IBobsTwentySevenService)
          .updateMode(newMode: newMode);
    }
  }

  /// Handle incoming [_SnapshotReceived] event.
  void _handleSnapshotReceived(
    _SnapshotReceived event,
    Emitter<AbstractTrainingGameSnapshot> emit,
  ) {
    // emit incoming snapshot
    emit(event.snapshot);
  }

  @override
  Future<void> close() {
    _trainingSubscription.cancel();
    return super.close();
  }
}
