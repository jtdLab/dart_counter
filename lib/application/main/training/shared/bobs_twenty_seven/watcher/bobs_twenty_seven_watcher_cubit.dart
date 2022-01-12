import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class BobsTwentySevenWatcherCubit extends Cubit<BobsTwentySevenGameSnapshot> {
  final IBobsTwentySevenService _trainingService;

  late final StreamSubscription _snapshotStreamSubscription;

  BobsTwentySevenWatcherCubit(
    this._trainingService,
  ) : super(_trainingService.getGame()) {
    _snapshotStreamSubscription =
        _trainingService.watchGame().listen((snapshot) => emit(snapshot));
  }

  @override
  Future<void> close() {
    _snapshotStreamSubscription.cancel();

    return super.close();
  }
}
