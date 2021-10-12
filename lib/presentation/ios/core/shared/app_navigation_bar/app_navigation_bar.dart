// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO
double _buttonPadding(BuildContext context) => responsiveValue(
      context,
      defaultValue: 16,
      mobileSmall: 10,
      mobileNormal: 12,
      mobileLarge: 14,
      mobileExtraLarge: 16,
      tabletSmall: 16,
      tabletNormal: 18,
      tabletLarge: 18,
      tabletExtraLarge: 20,
    );

// TODO
double _buttonIconSize(BuildContext context) => responsiveValue(
      context,
      defaultValue: 30,
      mobileSmall: 20,
      mobileNormal: 20,
      mobileLarge: 25,
      mobileExtraLarge: 30,
      tabletSmall: 30,
      tabletNormal: 35,
      tabletLarge: 45,
      tabletExtraLarge: 40,
    );

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
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 2 * _buttonPadding(context) + _buttonIconSize(context),
      ),
      child: Stack(
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
    );
  }
}
