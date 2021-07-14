import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_number_picker.dart';

class SizePicker extends StatelessWidget {
  const SizePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNumberPicker(
      onChanged: (value) => context
          .read<CreateGameBloc>()
          .add(CreateGameEvent.sizeUpdated(newSize: value)),
    );
  }
}
