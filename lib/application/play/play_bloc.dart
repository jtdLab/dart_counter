import 'package:bloc/bloc.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'play_event.dart';
part 'play_state.dart';
part 'play_bloc.freezed.dart';

@injectable
class PlayBloc extends Bloc<PlayEvent, PlayState> {
  final GameSnapshot? url;

  PlayBloc(
    @factoryParam this.url,
  ) : super(const _Initial()) {
    on<PlayEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
