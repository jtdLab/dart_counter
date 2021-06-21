import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_icon_button.dart';
import 'package:flutter/cupertino.dart' hide Orientation;

import 'app_card/widgets/app_card_item.dart';
import 'app_spacer.dart';

class AppNumberPicker extends StatefulWidget {
  final String? title;
  final Function(int)? onChanged;

  const AppNumberPicker({
    Key? key,
    this.title,
    this.onChanged,
  }) : super(key: key);

  @override
  _AppNumberPickerState createState() => _AppNumberPickerState();
}

class _AppNumberPickerState extends State<AppNumberPicker> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.delta.dy > 0) {
          setState(() {
            onIncrementPressed();
          });
        } else {
          setState(() {
            onDecrementPressed();
          });
        }
      },
      child: AppCardItem.normal(
        content: Row(
          mainAxisAlignment: widget.title != null
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            if (widget.title != null) ...[
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
              Text(widget.title!),
              const Spacer(),
            ],
            Text(number.toString()),
            const AppSpacer.large(
              orientation: Orientation.horizontal,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppIconButton(
                  padding: EdgeInsets.zero,
                  onPressed: onIncrementPressed,
                  icon: Image.asset(AppImages.chevron_up_small_new),
                ),
                const AppSpacer.small(),
                AppIconButton(
                  padding: EdgeInsets.zero,
                  onPressed: onDecrementPressed,
                  icon: Image.asset(AppImages.chevron_down_small_new),
                ),
              ],
            ),
            if (widget.title != null) ...[
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
            ],
          ],
        ),
      ),
    );
  }

  void onIncrementPressed() {
    setState(() {
      if (number < 100) {
        number++;
        widget.onChanged?.call(number);
      }
    });
  }

  void onDecrementPressed() {
    setState(() {
      if (number > 1) {
        number--;
        widget.onChanged?.call(number);
      }
    });
  }
}
