import 'package:dart_counter/application/in_game/checkout_details/checkout_details_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class CheckoutDetailsWidget extends StatelessWidget {
  const CheckoutDetailsWidget({
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

        return AppPage(
          child: Column(
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
                            child: CheckoutDetailsButton(
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
              const AppSpacer.large(),
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
                        for (int i = minDartsOnDouble;
                            i <= maxDartsOnDouble;
                            i++)
                          Expanded(
                            child: CheckoutDetailsButton(
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
              const AppSpacer.large(),
              AppPrimaryButton(
                color: AppColors.orangeNew,
                onPressed: () => context
                    .read<CheckoutDetailsBloc>()
                    .add(const CheckoutDetailsEvent.confirmPressed()),
                text: LocaleKeys.confirm.tr().toUpperCase(),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
