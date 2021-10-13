import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns a value of type [T] depending on device screen size.
T responsiveValue<T>(
  BuildContext context, {
  required T defaultValue,
  T? mobileSmall,
  T? mobileNormal,
  T? mobileLarge,
  T? mobileExtraLarge,
  T? tabletSmall,
  T? tabletNormal,
  T? tabletLarge,
  T? tabletExtraLarge,
}) {
  return getValueForScreenType(
    context: context,
    mobile: _responsiveValue(
      context,
      defaultValue: defaultValue,
      small: mobileSmall,
      normal: mobileNormal,
      large: mobileLarge,
      extraLarge: mobileExtraLarge,
    ),
    tablet: _responsiveValue(
      context,
      defaultValue: defaultValue,
      small: tabletSmall,
      normal: tabletNormal,
      large: tabletLarge,
      extraLarge: tabletExtraLarge,
    ),
  );
}
//
// Global shared values used in the ios app.
//

double maxFontSizeSmall(BuildContext context) => responsiveValue(
      context,
      defaultValue: 10,
      mobileSmall: 9,
    );

double maxFontSizeNormal(BuildContext context) => responsiveValue(
      context,
      defaultValue: 14,
      mobileSmall: 11,
    );

double spacerSmall(BuildContext context) => responsiveValue(
      context,
      defaultValue: 8,
      mobileSmall: 2,
      mobileNormal: 4,
      mobileLarge: 6,
      mobileExtraLarge: 8,
      tabletSmall: 8,
      tabletNormal: 12,
      tabletLarge: 16,
      tabletExtraLarge: 20,
    );

double spacerNormal(BuildContext context) => responsiveValue(
      context,
      defaultValue: 14,
      mobileSmall: 8,
      mobileNormal: 10,
      mobileLarge: 14,
      mobileExtraLarge: 18,
      tabletSmall: 14,
      tabletNormal: 20,
      tabletLarge: 26,
      tabletExtraLarge: 32,
    );

double spacerLarge(BuildContext context) => responsiveValue(
      context,
      defaultValue: 20,
      mobileSmall: 14,
      mobileNormal: 20,
      mobileLarge: 26,
      mobileExtraLarge: 32,
      tabletSmall: 20,
      tabletNormal: 28,
      tabletLarge: 36,
      tabletExtraLarge: 44,
    );

double modalLogoMarginTop(BuildContext context) => responsiveValue(
      context,
      defaultValue: 69,
      mobileSmall: 65,
      mobileNormal: 65,
      mobileLarge: 84,
      mobileExtraLarge: 93,
      tabletSmall: 97,
      tabletNormal: 103,
      tabletLarge: 110,
      tabletExtraLarge: 120,
    );

double modalLogoMarginBottom(BuildContext context) => responsiveValue(
      context,
      defaultValue: 123,
      mobileSmall: 76,
      mobileNormal: 85,
      mobileLarge: 130,
      mobileExtraLarge: 145,
      tabletSmall: 165,
      tabletNormal: 175,
      tabletLarge: 185,
      tabletExtraLarge: 200,
    );

double detailedModalMarginBottom(BuildContext context) => responsiveValue(
      context,
      defaultValue: 10,
      mobileSmall: 5,
      mobileNormal: 10,
      mobileLarge: 12,
      mobileExtraLarge: 15,
      tabletSmall: 15,
      tabletNormal: 20,
      tabletLarge: 23,
      tabletExtraLarge: 26,
    );

EdgeInsets modalPagePadding(BuildContext context) => responsiveValue(
      context,
      defaultValue: const EdgeInsets.fromLTRB(40, 20, 40, 5),
      mobileSmall: const EdgeInsets.fromLTRB(30, 20, 30, 5),
    );

double border4(BuildContext context) => responsiveValue(
      context,
      defaultValue: 4,
      mobileSmall: 3.5,
      mobileNormal: 4,
      mobileLarge: 4.5,
      mobileExtraLarge: 5,
    );

double size6(BuildContext context) => responsiveValue(
      context,
      defaultValue: 6,
      mobileSmall: 4,
      mobileNormal: 6,
      mobileLarge: 7,
      mobileExtraLarge: 8,
    );

double size12(BuildContext context) => responsiveValue(
      context,
      defaultValue: 12,
      mobileSmall: 8,
      mobileNormal: 10,
      mobileLarge: 12,
      mobileExtraLarge: 14,
    );

double size30(BuildContext context) => responsiveValue(
      context,
      defaultValue: 30,
      mobileSmall: 25,
      mobileNormal: 30,
      mobileLarge: 35,
      mobileExtraLarge: 40,
    );

double size40(BuildContext context) => responsiveValue(
      context,
      defaultValue: 40,
      mobileSmall: 34,
      mobileNormal: 40,
      mobileLarge: 45,
      mobileExtraLarge: 55,
    );

double size45(BuildContext context) => responsiveValue(
      context,
      defaultValue: 45,
      mobileSmall: 38,
      mobileNormal: 45,
      mobileLarge: 50,
      mobileExtraLarge: 60,
    );

double size50(BuildContext context) => responsiveValue(
      context,
      defaultValue: 50,
      mobileSmall: 43,
      mobileNormal: 50,
      mobileLarge: 55,
      mobileExtraLarge: 63,
    );

double size55(BuildContext context) => responsiveValue(
      context,
      defaultValue: 55,
      mobileSmall: 47,
      mobileNormal: 55,
      mobileLarge: 61,
      mobileExtraLarge: 70,
    );

double size70(BuildContext context) => responsiveValue(
      context,
      defaultValue: 70,
      mobileSmall: 62,
      mobileNormal: 70,
      mobileLarge: 79,
      mobileExtraLarge: 88,
    );

double size150(BuildContext context) => responsiveValue(
      context,
      defaultValue: 150,
      mobileSmall: 100,
      mobileNormal: 150,
      mobileLarge: 175,
      mobileExtraLarge: 190,
    );

/// Returns a value of type [T] depending on refined size of the device screen to allow more granular controll.
/// Refined size splits each of the classes mobile, tablet and desktop into more granular subclasses
/// named small, normal, large and extraLarge.
T _responsiveValue<T>(
  BuildContext context, {
  required T defaultValue,
  T? small,
  T? normal,
  T? large,
  T? extraLarge,
}) {
  final refinedSize = getRefinedSize(MediaQuery.of(context).size);
  if (refinedSize == RefinedSize.small) {
    return small ?? defaultValue;
  }
  return getValueForRefinedSize(
    context: context,
    normal: normal ?? defaultValue,
    large: large,
    extraLarge: extraLarge,
  );
}
