import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class DoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      child: Container(
        height: size55(context),
        color: AppColors.green,
        child: Center(
          child: Text(
            toString(),
          ),
        ),
      ),
      onPressed: () => context.router.push(
        const PostGamePageRoute(),
      ),
    );
  }
}
