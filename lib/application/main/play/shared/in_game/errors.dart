import 'package:dart_counter/application/application_error.dart';

// Errors in shard in game atm but // TODO place this file in correct location in filesystem application/main/play

// USE factories for more info look ApplicationError.dart

final advancedSettingsInGameExpectedError = ApplicationError(
  'AdvancedSettingsBloc holds AdvancedSettingsCreateGame but AdvancedSettingsInGame expected',
);

final pointsExpectedError = ApplicationError(
  'InputCubit holds darts but points expected',
);

final dartsExpectedError = ApplicationError(
  'InputCubit holds points but darts expected',
);

final pressedWhileDisabledError = ApplicationError(
  'Received Pressed while beeing disabled',
);

final detailedInputAreaInitialExpectedError = ApplicationError(
  'DetailedInputAreaBloc holds DetailedInputAreaFocused but DetailedInputAreaInitial expected',
);
