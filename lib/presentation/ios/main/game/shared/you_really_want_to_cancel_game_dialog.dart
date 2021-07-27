import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

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
                    style:
                        CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                              color: AppColors.white,
                            ),
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
