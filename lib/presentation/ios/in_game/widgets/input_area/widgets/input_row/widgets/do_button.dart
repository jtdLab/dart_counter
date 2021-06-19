import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class DoButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DoButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
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
