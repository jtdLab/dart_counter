import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class AppCard extends StatelessWidget {
  final Widget leading;
  final Widget middle;
  final Widget trailing;
  final Widget? body;
  final BorderRadius borderRadius;
  final EdgeInsets paddingHeader;
  final EdgeInsets paddingBody;
  final int flexHeader;
  final int flexBody;

  const AppCard({
    this.leading = const Spacer(),
    this.middle = const Spacer(),
    this.trailing = const Spacer(),
    this.body,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(8),
    ),
    this.paddingHeader = const EdgeInsets.all(4),
    this.paddingBody = const EdgeInsets.all(6),
    this.flexHeader = 2,
    this.flexBody = 5,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Column(
        children: [
          Expanded(
            flex: flexHeader,
            child: Container(
              color: AppColors.black,
              padding: paddingHeader,
              child: Row(
                children: [
                  leading,
                  const Spacer(),
                  middle,
                  const Spacer(),
                  trailing,
                ],
              ),
            ),
          ),
          Expanded(
            flex: flexBody,
            child: Visibility(
              visible: body != null,
              child: Container(
                color: AppColors.gray,
                padding: paddingBody,
                child: Center(
                  child: body,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
