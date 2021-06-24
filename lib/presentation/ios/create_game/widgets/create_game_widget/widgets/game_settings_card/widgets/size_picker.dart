import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_number_picker.dart';

class SizePicker extends StatelessWidget {
  const SizePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNumberPicker(
      onChanged: (value) {
        context.read<PlayBloc>().add(PlayEvent.sizeSet(newSize: value));
      },
    );
  }
}
