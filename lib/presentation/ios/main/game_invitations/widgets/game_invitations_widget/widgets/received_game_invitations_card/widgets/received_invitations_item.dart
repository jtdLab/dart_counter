import 'package:dart_counter/domain/game_invitation/game_invitation.dart';

import 'package:dart_counter/application/invitations/invitations_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class ReceivedGameInvitationsItem extends StatelessWidget {
  final GameInvitation gameInvitation;

  const ReceivedGameInvitationsItem({
    Key? key,
    required this.gameInvitation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.large(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const AppRoundedImage.normal(
            imageName: AppImages.photoPlaceholderNew,
          ),
          Text(
            gameInvitation.fromName.getOrCrash().toUpperCase(),
          ),
          Row(
            children: [
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.checkMarkDarkNew),
                onPressed: () => context.read<InvitationsBloc>().add(
                      InvitationsEvent.accepted(gameInvitation: gameInvitation),
                    ),
              ),
              const AppSpacer.normal(
                orientation: Orientation.horizontal,
              ),
              AppIconButton(
                padding: EdgeInsets.zero,
                icon: Image.asset(AppImages.xMarkFilledNew),
                onPressed: () => context.read<InvitationsBloc>().add(
                      InvitationsEvent.declined(gameInvitation: gameInvitation),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
