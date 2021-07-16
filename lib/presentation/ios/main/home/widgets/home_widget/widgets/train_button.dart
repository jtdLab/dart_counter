import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class TrainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () {}, // TODO go to practice overview
      color: AppColors.black,
      icon: Image.asset(AppImages.targetNew),
      text: LocaleKeys.practice.tr().toUpperCase(),
    );
  }
}
