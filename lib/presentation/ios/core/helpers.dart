import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart' as native;

/// Will return one of the values passed in for the refined size
/// TODO Only work arround because the native method of responsive builder package doesnt take size small as a param

T getValueForRefinedSize<T>({
  required BuildContext context,
  required T small,
  required T normal,
  required T large,
  T? extraLarge,
}) {
  final refinedSize = native.getRefinedSize(MediaQuery.of(context).size);
  if (refinedSize == native.RefinedSize.small) {
    // If we have supplied the small large layout then display that
    return small;
  }
  return native.getValueForRefinedSize(
    context: context,
    normal: normal,
    large: large,
    extraLarge: extraLarge,
  );
}
