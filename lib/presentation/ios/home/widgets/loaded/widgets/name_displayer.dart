import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class NameDisplayer extends StatelessWidget {
  final String name;

  const NameDisplayer({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size40(context),
      decoration: BoxDecoration(
        color: AppColors.blue_new,
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Center(
        child: Text(
          name.toUpperCase(),
          style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                color: AppColors.white,
              ),
        ),
      ),
    );
  }
}
