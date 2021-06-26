import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class DartBotItem extends StatelessWidget {
  const DartBotItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: const Key('DartBotItem'), // TODO
      direction: DismissDirection.endToStart,
      onDismissed: (_) =>
          context.read<PlayBloc>().add(const PlayEvent.dartBotRemoved()),
      background: Container(
        color: AppColors.red,
      ),
      child: AppCardItem.large(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AppRoundedImage.normal(
              imageName: AppImages.robot_new,
            ),
            Text(
              LocaleKeys.dartBot.tr().toUpperCase(),
            ),
            AppIconButton(
              onPressed: () {},
              icon: Image.asset(
                AppImages.settings_new,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
