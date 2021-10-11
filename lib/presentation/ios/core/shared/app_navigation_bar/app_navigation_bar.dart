// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class AppNavigationBar extends StatelessWidget {
  final Widget? leading;
  final Widget? middle;
  final Widget? trailing;

  const AppNavigationBar({
    Key? key,
    this.leading,
    this.middle,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leading ?? const Spacer(),
                const Spacer(),
                trailing ?? const Spacer(),
              ],
            ),
            if (middle != null) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  middle!,
                ],
              )
            ]
          ],
        ),
      ],
    );
  }
}
