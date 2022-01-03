// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

class YouReallyWantToCancelGameDialog extends StatelessWidget {
  final VoidCallback onYesPressed;

  const YouReallyWantToCancelGameDialog({
    Key? key,
    required this.onYesPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      backgroundColor: Colors.white.withOpacity(
        0.85,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppColumn(
            spacing: size6(context),
            children: [
              Container(
                height: size55(context),
                color: AppColors.black,
                child: Center(
                  child: Text(
                    'Spiel Abbrechen?',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .textStyle
                        .copyWith(color: AppColors.white),
                  ),
                ),
              ),
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: AppActionButton.normal(
                      color: AppColors.green,
                      fontColor: AppColors.white,
                      onPressed: onYesPressed,
                      text: 'JA',
                    ),
                  ),
                  Expanded(
                    child: AppActionButton.normal(
                      color: AppColors.red,
                      fontColor: AppColors.white,
                      onPressed: () => context.router.pop(),
                      text: 'NEIN',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
                              color: AppColors.white
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

// INPUT ROW
// TODO location in file strucuture
class InputRow extends StatelessWidget {
  final VoidCallback onUndoPressed;
  final VoidCallback onPerformThrowPressed;
  final int points;

  const InputRow({
    Key? key,
    required this.onUndoPressed,
    required this.onPerformThrowPressed,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: UndoButton(
            onPressed: onUndoPressed,
          ),
        ),
        Expanded(
          child: InputPointsDisplayer(points: points),
        ),
        Expanded(
          child: DoButton(
            onPressed: onPerformThrowPressed,
          ),
        ),
      ],
    );
  }
}

class InputPointsDisplayer extends StatelessWidget {
  final int points;

  const InputPointsDisplayer({
    Key? key,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Center(
        child: Text(
          points.toString(),
          style: const TextStyle(fontSize: 28), // TODO
        ),
      ),
    );
  }
}

class UndoButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const UndoButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.red,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronRedBackNew),
        ),
      ),
    );
  }
}

class DoButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const DoButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.green,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronGreenForwardNew),
        ),
      ),
    );
  }
}
