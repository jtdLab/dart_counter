import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class IconButton extends StatelessWidget {

  final EdgeInsets? padding;
  final VoidCallback? onPressed;
  final Widget icon;

  const IconButton({
    Key? key,
    this.padding,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(size6(context)),
      child: CupertinoButton(
        minSize: 0,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: icon,
      ),
    );
  }
}
