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
        color: AppColors.green,
        child: Center(
          child: Text(
            toString(),
          ),
        ),
      ),
    );
  }
}
