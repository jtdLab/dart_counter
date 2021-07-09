import 'package:dart_counter/application/in_game/checkout_details/checkout_details_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/settings_widget/widgets/account_card/widgets/widgets.dart';
import 'package:dart_counter/presentation/ios/settings/widgets/settings_widget/widgets/widgets.dart';

class CheckoutDetailsModal extends StatelessWidget {
  const CheckoutDetailsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckoutDetailsBloc, CheckoutDetailsState>(
      listenWhen: (oldState, newState) =>
          oldState.confirmed != newState.confirmed,
      listener: (context, state) {
        if (state.confirmed) {
          context.router.pop();
        }
      },
      builder: (context, state) {
        final minDartsThrown = state.minDartsThrown;
        final maxDartsThrown = state.maxDartsThrown;
        final minDartsOnDouble = state.minDartsOnDouble;
        final maxDartsOnDouble = state.maxDartsOnDouble;
        final selectedDartsThrown = state.selectedDartsThrown;
        final selectedDartsOnDouble = state.selectedDartsOnDouble;

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
                      for (int i = minDartsThrown; i <= maxDartsThrown; i++)
                        Expanded(
                          child: CkdButton(
                            selected: i == selectedDartsThrown,
                            onPressed: () =>
                                context.read<CheckoutDetailsBloc>().add(
                                      CheckoutDetailsEvent
                                          .selectedDartsThrownUpdated(
                                        newSelectedDartsThrown: i,
                                      ),
                                    ),
                            text: i.toString(),
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
                      for (int i = minDartsOnDouble; i <= maxDartsOnDouble; i++)
                        Expanded(
                          child: CkdButton(
                            selected: i == selectedDartsOnDouble,
                            onPressed: () =>
                                context.read<CheckoutDetailsBloc>().add(
                                      CheckoutDetailsEvent
                                          .selectedDartsOnDoubleUpdated(
                                        newSelectedDartsOnDouble: i,
                                      ),
                                    ),
                            text: i.toString(),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              AppSpacer.large(),
              AppPrimaryButton(
                color: AppColors.orange_new,
                onPressed: () => context
                    .read<CheckoutDetailsBloc>()
                    .add(const CheckoutDetailsEvent.confirmPressed()),
                text: LocaleKeys.confirm.tr().toUpperCase(),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        );
      },
    );
  }
}

class CkdButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final String? text;
  final Widget? child;
  final bool selected;

// TODO assert text or child supplied
  const CkdButton({
    this.onPressed,
    Key? key,
    this.fontSize = 28,
    this.text,
    required this.selected,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return AppActionButton.normal(
        fontSize: fontSize,
        color: selected ? AppColors.orange_new : AppColors.white,
        onPressed: onPressed,
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.normal(
        color: selected ? AppColors.orange_new : AppColors.white,
        onPressed: onPressed,
        icon: child,
      );
    }
    return Container(); // TODO remove after assert
  }
}
