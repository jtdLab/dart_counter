import 'package:dart_counter/application/in_game/input_area/input_row/input_row_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class UndoButton extends StatelessWidget {
  const UndoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () => context
          .read<InputRowBloc>()
          .add(const InputRowEvent.undoThrowPressed()),
      child: Container(
        height: size55(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.red,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronRedBackNew),
        ),
      ),
    );
  }
}
