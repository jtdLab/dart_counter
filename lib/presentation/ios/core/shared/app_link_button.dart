// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class AppLinkButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const AppLinkButton({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Text(
        text.toUpperCase(),
        maxLines: 1,
        style: TextStyle(
          color: AppColors.red,
          fontSize: maxFontSizeSmall(context),
        ),
      ),
    );
  }
}
