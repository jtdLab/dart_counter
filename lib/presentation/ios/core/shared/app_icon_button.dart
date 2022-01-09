// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class AppIconButton extends StatelessWidget {
  final EdgeInsets? padding;
  final VoidCallback? onPressed;
  final Widget icon;

  const AppIconButton({
    Key? key,
    this.padding,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: padding ?? EdgeInsets.all(size12(context)),
      onPressed: onPressed,
      child: icon, // TODO wrap with sized box to and give good size
    );
  }
}
