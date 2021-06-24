import 'package:dart_counter/presentation/ios/core/core.dart';

import 'app_rounded_image.dart';

class PlayerProfileImageAndNameDisplayer extends StatelessWidget {
  final Color color;

  const PlayerProfileImageAndNameDisplayer({
    Key? key,
    this.color = AppColors.orange_new,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  color: color,
                  border: Border.all(
                    width: border4(context),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sebi Abi 69',
                    style:
                        CupertinoTheme.of(context).textTheme.textStyle.copyWith(
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
              imageName: AppImages.photo_placeholder_new,
              border: Border.all(
                width: border4(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}
