import 'package:dart_counter/application/in_game/input_area/input_area_bloc.dart';
import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UndoButton extends StatelessWidget {
  const UndoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () => context.read<InputAreaBloc>().add(const InputAreaEvent.undoThrowPressed()),
      child: Container(
        height: size55(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.red,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevron_red_back_new),
        ),
      ),
    );
  }
}
