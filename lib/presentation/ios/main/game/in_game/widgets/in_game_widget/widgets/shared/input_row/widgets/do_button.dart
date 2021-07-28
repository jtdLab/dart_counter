import 'package:dart_counter/presentation/ios/core/core.dart';

class DoButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const DoButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.green,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronGreenForwardNew),
        ),
      ),
    );
  }
}
