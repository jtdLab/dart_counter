import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/auto_reset_lazy_singelton.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'detailed_key_board_event.dart';
part 'detailed_key_board_state.dart';
part 'detailed_key_board_bloc.freezed.dart';

@lazySingleton
class DetailedKeyBoardBloc extends Bloc<DetailedKeyBoardEvent, DetailedKeyBoardState> with AutoResetLazySingleton {
  DetailedKeyBoardBloc() : super(const DetailedKeyBoardState());

  @override
  Stream<DetailedKeyBoardState> mapEventToState(
    DetailedKeyBoardEvent event,
  ) async* {
    yield* event.map(
      dartPressed: (event) => _mapDartPressedToState(event),
      dartDetailPressed: (event) => _mapDartDetailPressedToState(event),
    );
  }

  Stream<DetailedKeyBoardState> _mapDartPressedToState(DartPressed event) async* {
    // TODO implement
    throw UnimplementedError();
  }

  Stream<DetailedKeyBoardState> _mapDartDetailPressedToState(DartDetailPressed event) async* {
    // TODO implement
    throw UnimplementedError();
  }
}
