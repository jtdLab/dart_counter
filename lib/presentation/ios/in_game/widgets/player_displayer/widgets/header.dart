import 'dart:math';

import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerDisplayerBloc, PlayerDisplayerState>(
      builder: (context, state) => SizedBox(
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
                    color: AppColors.orange_new,
                    border: Border.all(
                      width: border4(context),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      state.player.name, 
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
              child: RoundedImage.large(
                imageName: AppImages.photo_placeholder_new,
                border: Border.all(
                  width: border4(context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
