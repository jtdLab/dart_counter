import 'package:dart_counter/presentation/core/errors.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
// TODO: deprecated
class PageWidget extends StatelessWidget {
  final Widget Function(BuildContext)? portraitExtraLarge;
  final Widget Function(BuildContext)? portraitLarge;
  final Widget Function(BuildContext) portraitNormal;
  final Widget Function(BuildContext)? portraitSmall;
  final Widget Function(BuildContext)? landscapeExtraLarge;
  final Widget Function(BuildContext)? landscapeLarge;
  final Widget Function(BuildContext)? landscapeNormal;
  final Widget Function(BuildContext)? landscapeSmall;

  const PageWidget(
      {Key? key,
      this.portraitExtraLarge,
      this.portraitLarge,
      required this.portraitNormal,
      this.portraitSmall,
      this.landscapeExtraLarge,
      this.landscapeLarge,
      this.landscapeNormal,
      this.landscapeSmall})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: OrientationLayoutBuilder(
        portrait: (context) => RefinedLayoutBuilder(
          extraLarge: portraitExtraLarge,
          large: portraitLarge,
          normal: portraitNormal,
          small: portraitSmall,
        ),
        landscape: (context) => RefinedLayoutBuilder(
          extraLarge: landscapeExtraLarge,
          large: landscapeLarge,
          normal: landscapeNormal ??
              (context) =>
                  throw NoWidgetProvidedError('Missing widget landscapeNormal'),
          small: landscapeSmall,
        ),
      ),
    );
  }
}
