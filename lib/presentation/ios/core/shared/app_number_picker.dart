// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

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
              SizedBox(
                width: spacerNormal(context),
              ),
              Text(widget.title!),
              const Spacer(),
            ],
            Text(number.toString()),
            SizedBox(
              width: spacerLarge(context),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  onPressed: onIncrementPressed,
                  child: Image.asset(AppImages.chevronUpSmallNew),
                ),
                SizedBox(
                  height: spacerSmall(context),
                ),
                CupertinoButton(
                  minSize: 0,
                  padding: EdgeInsets.zero,
                  onPressed: onDecrementPressed,
                  child: Image.asset(AppImages.chevronDownSmallNew),
                ),
              ],
            ),
            if (widget.title != null) ...[
              SizedBox(
                width: spacerNormal(context),
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
