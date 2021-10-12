// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class ProfileImageDisplayer extends StatelessWidget {
  final String? photoUrl;

  const ProfileImageDisplayer({
    Key? key,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (photoUrl != null) {
      return AppRoundedImage.extraLarge(
        child: CachedNetworkImageProvider(
          photoUrl!,
        ),
      );
    } else {
      return const AppRoundedImage.extraLarge(
        imageName: AppImages.photoPlaceholderNew,
      );
    }
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingLeft: true,
      onPressed: () => context.router.pop(),
      child: Image.asset(
        AppImages.chevronBackNew,
      ),
    );
  }
}

/**
 * // CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// TODO is this rly a shared widget check closer scope
class PlayerProfileImageAndNameDisplayer extends StatelessWidget {
  final Color color;

  const PlayerProfileImageAndNameDisplayer({
    Key? key,
    this.color = AppColors.orangeNew,
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
              imageName: AppImages.photoPlaceholderNew,
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

 */

class CancelButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CancelButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingLeft: true,
      onPressed: onPressed,
      child: Image.asset(
        AppImages.xMarkBlackNew,
      ),
    );
  }
}
