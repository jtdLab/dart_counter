import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/settings_widget/widgets/account_card/widgets/widgets.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/settings_widget/widgets/widgets.dart';

class CheckoutDetailsModal extends StatelessWidget {
  const CheckoutDetailsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      child: Column(
        children: [
          Spacer(),
          AppCard(
            middle: Text(
              LocaleKeys.dartsThrown.tr().toUpperCase(),
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
            children: [
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: CkdButton(
                      onPressed: () {},
                      text: '1',
                    ),
                  ),
                  Expanded(
                    child: CkdButton(
                       onPressed: () {},
                      text: '2',
                    ),
                  ),
                  Expanded(
                    child: CkdButton(
                       onPressed: () {},
                      text: '3',
                    ),
                  ),
                ],
              ),
            ],
          ),
          AppSpacer.large(),
          AppCard(
            middle: Text(
              LocaleKeys.dartsOnDouble.tr().toUpperCase(),
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
            children: [
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: CkdButton(
                       onPressed: () {},
                      text: '0',
                    ),
                  ),
                  Expanded(
                    child: CkdButton(
                       onPressed: () {},
                      text: '1',
                    ),
                  ),
                  Expanded(
                    child: CkdButton(
                       onPressed: () {},
                      text: '2',
                    ),
                  ),
                ],
              ),
            ],
          ),
          AppSpacer.large(),
          AppPrimaryButton(
            color: AppColors.orange_new,
            onPressed: () => context.router.pop(),
            text: LocaleKeys.confirm.tr().toUpperCase(),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}

class CkdButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final String? text;
  final Widget? child;

// TODO assert text or child supplied
  const CkdButton({
    this.onPressed,
    Key? key,
    this.fontSize = 28,
    this.text,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return AppActionButton.normal(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.normal(
        color: AppColors.white,
        onPressed: onPressed,
        icon: child,
      );
    }
    return Container(); // TODO remove after assert
  }
}
