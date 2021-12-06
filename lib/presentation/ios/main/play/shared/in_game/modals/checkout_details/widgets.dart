part of 'checkout_details_modal.dart';

// BODY
class _CheckoutDetailsWidget extends StatelessWidget {
  const _CheckoutDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckoutDetailsBloc, CheckoutDetailsState>(
      builder: (context, state) {
        final minDartsThrown = state.minDartsThrown;
        final maxDartsThrown = state.maxDartsThrown;
        final minDartsOnDouble = state.minDartsOnDouble;
        final maxDartsOnDouble = state.maxDartsOnDouble;
        final selectedDartsThrown = state.selectedDartsThrown;
        final selectedDartsOnDouble = state.selectedDartsOnDouble;

        return Column(
          children: [
            const Spacer(),
            if (minDartsThrown < maxDartsThrown) ...[
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
                          child: _CheckoutDetailsButton(
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
            ],
            SizedBox(
              height: spacerLarge(context),
            ),
            if (minDartsOnDouble < maxDartsOnDouble) ...[
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
                          child: _CheckoutDetailsButton(
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
            ],
            SizedBox(
              height: spacerLarge(context),
            ),
            AppPrimaryButton(
              color: AppColors.orangeNew,
              onPressed: () {
                context
                    .read<CheckoutDetailsBloc>()
                    .add(const CheckoutDetailsEvent.confirmPressed());
                context.router.pop();
              },
              text: LocaleKeys.confirm.tr().toUpperCase(),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        );
      },
    );
  }
}

// TODO keyboardbutton instead of this button
class _CheckoutDetailsButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final String? text;
  final Widget? child;
  final bool selected;

  const _CheckoutDetailsButton({
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
        color: selected ? AppColors.orangeNew : AppColors.white,
        onPressed: onPressed,
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.normal(
        color: selected ? AppColors.orangeNew : AppColors.white,
        onPressed: onPressed,
        icon: child,
      );
    }
    return Container();
  }
}
