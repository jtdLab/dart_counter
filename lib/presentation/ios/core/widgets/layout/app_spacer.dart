import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

enum Orientation { horizontal, vertical }

class AppSpacer extends StatelessWidget {
  final Orientation orientation;
  final ResponsiveDouble mobileSize;
  final ResponsiveDouble? tabletSize;

  const AppSpacer.small({
    Key? key,
    this.orientation = Orientation.vertical,
  })  : mobileSize = const ResponsiveDouble(
          small: 2,
          normal: 4,
          large: 6,
          extraLarge: 8,
        ),
        tabletSize = const ResponsiveDouble(
          small: 8,
          normal: 12,
          large: 16,
          extraLarge: 20,
        ),
        super(key: key);

  const AppSpacer.normal({
    Key? key,
    this.orientation = Orientation.vertical,
  })  : mobileSize = const ResponsiveDouble(
          small: 8,
          normal: 10,
          large: 14,
          extraLarge: 18,
        ),
        tabletSize = const ResponsiveDouble(
          small: 14,
          normal: 20,
          large: 26,
          extraLarge: 32,
        ),
        super(key: key);

  const AppSpacer.large({
    Key? key,
    this.orientation = Orientation.vertical,
  })  : mobileSize = const ResponsiveDouble(
          small: 14,
          normal: 20,
          large: 26,
          extraLarge: 32,
        ),
        tabletSize = const ResponsiveDouble(
          small: 20,
          normal: 28,
          large: 36,
          extraLarge: 44,
        ),
        super(key: key);

  const AppSpacer.custom({
    Key? key,
    this.orientation = Orientation.vertical,
    required this.mobileSize,
    this.tabletSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (orientation == Orientation.vertical) {
      return SizedBox(
        height: responsiveDouble(
          context: context,
          mobile: mobileSize,
          tablet: tabletSize,
        ),
      );
    } else {
      return SizedBox(
        width: responsiveDouble(
          context: context,
          mobile: mobileSize,
          tablet: tabletSize,
        ),
      );
    }
  }
}
