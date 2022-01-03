import 'package:bloc/bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:dart_counter/domain/game/dart.dart';
import 'package:kt_dart/kt.dart';

class DartsCubit extends Cubit<KtList<Dart>> {
  final PointsCubit _pointsCubit;

  DartsCubit(
    this._pointsCubit,
  ) : super(const KtList.empty());

  void update(KtList<Dart> newDarts) {
    _pointsCubit.update(newDarts.fold(0, (acc, dart) => acc + dart.points()));
    emit(newDarts);
  }
}
