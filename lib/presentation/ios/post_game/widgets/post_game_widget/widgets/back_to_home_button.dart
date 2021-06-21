import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPrimaryButton(
      onPressed: () => context.router.replace(
        const HomePageRoute(),
      ),
      color: AppColors.red,
      text: 'Main Menu'.toUpperCase(),
    );
  }
}
