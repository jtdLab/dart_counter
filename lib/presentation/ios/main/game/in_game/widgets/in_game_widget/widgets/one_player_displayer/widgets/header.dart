import 'package:dart_counter/application/in_game/in_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InGameBloc, InGameState>(
      builder: (context, state) {
        final player = state.game.players[0];

        return Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: size12(context) + size6(context),
                ),
                child: Container(
                  height: size40(context),
                  decoration: BoxDecoration(
                    color: AppColors.orangeNew,
                    border: Border.all(
                      width: border4(context),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      player.name,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: AppRoundedImage.large(
                imageName: AppImages.photoPlaceholderNew,
                border: Border.all(
                  width: border4(context),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
