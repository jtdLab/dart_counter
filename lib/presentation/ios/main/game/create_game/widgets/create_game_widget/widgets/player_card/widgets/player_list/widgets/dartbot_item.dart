import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/main/game/create_game/modals/modals.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class DartBotItem extends StatelessWidget {
  const DartBotItem({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: key!,
          direction: DismissDirection.endToStart,
          onDismissed: (_) => context
              .read<CreateGameBloc>()
              .add(const CreateGameEvent.dartBotRemoved()),
          background: Container(
            color: AppColors.red,
          ),
          child: AppCardItem.large(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const AppRoundedImage.normal(
                  imageName: AppImages.robotNew,
                ),
                Text(
                  LocaleKeys.dartBot.tr().toUpperCase(),
                ),
                AppIconButton(
                  onPressed: () {
                    showCupertinoModalBottomSheet(
                      backgroundColor: Colors.white70,
                      context: context,
                      builder: (context) => AdvancedSettingsModal(),
                    );
                  },
                  icon: Image.asset(
                    AppImages.settingsNew,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size6(context)),
      ],
    );
  }
}
