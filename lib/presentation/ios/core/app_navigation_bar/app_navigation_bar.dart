import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter/cupertino.dart';

// TODO all navbars renewed
class AppNavigationBar extends StatelessWidget {
  final Widget? leading;
  final Widget? middle;
  final Widget? trailing;

  const AppNavigationBar({Key? key, this.leading, this.middle, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading ?? _emptyBox(context),
        middle ?? const Spacer(),
        trailing ?? _emptyBox(context)
      ],
    );
  }

  SizedBox _emptyBox(BuildContext context) => SizedBox(
        width: responsiveDouble(
          context: context,
          mobile: ResponsiveDouble(
            small: 15,
            normal: 20,
            large: 25,
            extraLarge: 30,
          ),
        ),
        height: responsiveDouble(
          context: context,
          mobile: ResponsiveDouble(
            small: 15,
            normal: 20,
            large: 25,
            extraLarge: 30,
          ),
        ),
      );
}
