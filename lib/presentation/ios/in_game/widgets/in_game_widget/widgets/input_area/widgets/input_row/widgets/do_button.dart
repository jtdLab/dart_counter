import 'package:dart_counter/application/in_game/input_area/input_area_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoButton extends StatelessWidget {
  const DoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () => context
          .read<InputAreaBloc>()
          .add(const InputAreaEvent.performThrowPressed()),
      child: Container(
        height: size55(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.green,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevron_green_forward_new),
        ),
      ),
    );
  }
}
