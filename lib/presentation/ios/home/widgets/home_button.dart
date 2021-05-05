import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class HomeButton extends StatelessWidget {
  final Widget Function(BuildContext, BoxConstraints) builder;
  final VoidCallback? onPressed;

  const HomeButton({Key? key, required this.builder, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        padding: const EdgeInsets.all(16.0),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: AppColors.black,
        onPressed: onPressed,
        child: LayoutBuilder(
            builder: (context, boxConstraints) =>
                builder(context, boxConstraints),
          ),
      ),
    );
  }
}
