import 'package:dart_counter/presentation/ios/core/core.dart';

import 'app_card/widgets/app_card_item.dart';
import 'app_icon_button.dart';

// TODO animate prev and next + show them like cuprtino picker
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
            onDecrementPressed();
          });
        } else {
          setState(() {
            onIncrementPressed();
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
                  icon: Image.asset(AppImages.chevronUpSmallNew),
                ),
                const AppSpacer.small(),
                AppIconButton(
                  padding: EdgeInsets.zero,
                  onPressed: onDecrementPressed,
                  icon: Image.asset(AppImages.chevronDownSmallNew),
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
