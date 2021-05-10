import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitations_watcher_event.dart';
part 'invitations_watcher_state.dart';
part 'invitations_watcher_bloc.freezed.dart';

class InvitationsWatcherBloc extends Bloc<InvitationsWatcherEvent, InvitationsWatcherState> {
  InvitationsWatcherBloc() : super(_Initial());

  @override
  Stream<InvitationsWatcherState> mapEventToState(
    InvitationsWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
