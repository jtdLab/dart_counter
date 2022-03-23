import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_settings_event.dart';
part 'advanced_settings_state.dart';
part 'advanced_settings_bloc.freezed.dart';

class AdvancedSettingsBloc extends Bloc<AdvancedSettingsEvent, AdvancedSettingsState> {
  AdvancedSettingsBloc() : super(_Initial()) {
    on<AdvancedSettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
