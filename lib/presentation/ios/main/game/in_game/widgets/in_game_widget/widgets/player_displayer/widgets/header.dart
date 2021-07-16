import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_rounded_image.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerDisplayerBloc, PlayerDisplayerState>(
      builder: (context, state) {
        final player = state.player;
        
        return SizedBox(
          height: size70(context),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size12(context), // TODO check 4 all device sizes
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
          ),
        );
      },
    );
  }
}
