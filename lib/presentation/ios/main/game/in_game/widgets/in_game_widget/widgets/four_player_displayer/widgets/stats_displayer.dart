import 'package:dart_counter/presentation/ios/core/core.dart';

class StatsDisplayer extends StatelessWidget {
  final int dartsThrownCurrentLeg;
  final double average;
  final double checkoutPercentage;

  const StatsDisplayer({
    Key? key,
    required this.dartsThrownCurrentLeg,
    required this.average,
    required this.checkoutPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Row(
        children: [
          const Spacer(),
          Flexible(
            flex: 5,
            child: _StatDisplayer(
              icon: AppImages.flightWhite,
              value: dartsThrownCurrentLeg.toString(),
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 5,
            child: _StatDisplayer(
              icon: AppImages.averageWhite,
              value: average.toStringAsFixed(2),
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 5,
            child: _StatDisplayer(
              icon: AppImages.checkoutPercentageWhite,
              value: checkoutPercentage.toStringAsFixed(2),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _StatDisplayer extends StatelessWidget {
  final String icon;
  final String? value;

  const _StatDisplayer({
    Key? key,
    required this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context) / 2,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              size6(context) / 1,
              size6(context) / 1,
              size6(context) / 1,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                icon,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        value ?? '-',
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .textStyle
                            .copyWith(
                              color: AppColors.white,
                            ),
                        maxLines: 1,
                        minFontSize: 4,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
