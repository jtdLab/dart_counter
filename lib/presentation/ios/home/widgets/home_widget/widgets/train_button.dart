import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:flutter/cupertino.dart';

class TrainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () {},
      color: AppColors.black,
      icon: Image.asset(AppImages.target_new),
      text: 'Practice room'.toUpperCase(),
    );
  }
}
