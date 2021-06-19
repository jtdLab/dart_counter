import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_number_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
