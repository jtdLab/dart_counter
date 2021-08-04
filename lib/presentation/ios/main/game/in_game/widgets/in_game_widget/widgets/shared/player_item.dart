import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'profile_image_position.dart';

class PlayerItem extends StatelessWidget {
  final ProfileImagePosition profileImagePosition;
  final AbstractPlayerSnapshot player;

  const PlayerItem({
    Key? key,
    this.profileImagePosition = ProfileImagePosition.left,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: border4(context),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: _Header(
                name: player.name,
              ),
            ),
            Expanded(
              flex: 6,
              child: _LegsSetsDisplayer(
                isCurrentTurn: player.isCurrentTurn,
                wonSets: player.wonSets,
                wonLegsCurrentSet: player.wonLegsCurrentSet,
              ),
            ),
            Expanded(
              flex: 30,
              child: _PointsLeftLastThrowDisplayer(
                pointsLeft: player.pointsLeft,
                lastPoints: player.lastPoints,
              ),
            ),
            Expanded(
              flex: 6,
              child: _FinishRecommendationDisplayer(
                finishRecommendation: player.finishRecommendation,
              ),
            ),
            Expanded(
              flex: 18,
              child: _StatsDisplayer(
                isCurrentTurn: player.isCurrentTurn,
                dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
                average: player.stats.average,
                checkoutPercentage: player.stats.checkoutPercentage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;

  const _Header({
    Key? key,
    this.color = AppColors.blueNew,
    this.photoUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            //const Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                color: color,
                child: Padding(
                  padding: EdgeInsets.all(size6(context) / 4),
                  child: Center(
                    child: AutoSizeText(
                      name,
                      maxLines: 1,
                      minFontSize: 4,
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
          ],
        ),
        /**
           * Align(
            alignment: Alignment.centerLeft,
            child: AppRoundedImage.small(
              imageName: AppImages.photoPlaceholderNew, // TODO real image
              border: Border.all(
                width: border4(context) / 2,
              ),
            ),
          ),
           */
      ],
    );
  }
}

class _LegsSetsDisplayer extends StatelessWidget {
  final bool isCurrentTurn;
  final int? wonSets;
  final int wonLegsCurrentSet;

  const _LegsSetsDisplayer({
    Key? key,
    required this.isCurrentTurn,
    this.wonSets,
    required this.wonLegsCurrentSet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentTurn ? AppColors.black : AppColors.white,
        border: Border(
          top: BorderSide(width: border4(context)),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (wonSets != null) ...[
              AutoSizeText(
                'S:$wonSets',
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      color: isCurrentTurn ? AppColors.white : AppColors.black,
                    ),
              ),
            ],
            AutoSizeText(
              'L:$wonLegsCurrentSet',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    color: isCurrentTurn ? AppColors.white : AppColors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PointsLeftLastThrowDisplayer extends StatelessWidget {
  final int pointsLeft;
  final int? lastPoints;

  const _PointsLeftLastThrowDisplayer({
    Key? key,
    required this.pointsLeft,
    this.lastPoints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: border4(context)),
          bottom: BorderSide(width: border4(context)),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 5,
            child: Center(
              child: AutoSizeText(
                pointsLeft.toString(),
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(fontSize: 40),
                maxLines: 1,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: AutoSizeText(
                lastPoints?.toString() ?? '--',
                maxLines: 1,
                maxFontSize: 13,
                minFontSize: 1,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _FinishRecommendationDisplayer extends StatelessWidget {
  final KtList<String>? finishRecommendation;

  const _FinishRecommendationDisplayer({
    Key? key,
    this.finishRecommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orangeNew,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (finishRecommendation != null) ...[
            for (int i = 0; i < finishRecommendation!.size; i++)
              AutoSizeText(
                finishRecommendation!.get(i),
                minFontSize: 1,
                maxLines: 1,
              ),
          ] else ...[
            const Text(''),
          ]
        ],
      ),
    );
  }
}

class _StatsDisplayer extends StatelessWidget {
  final bool isCurrentTurn;
  final int dartsThrownCurrentLeg;
  final double average;
  final double checkoutPercentage;

  const _StatsDisplayer({
    Key? key,
    required this.isCurrentTurn,
    required this.dartsThrownCurrentLeg,
    required this.average,
    required this.checkoutPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentTurn ? AppColors.black : AppColors.white,
        border: Border(
          top: BorderSide(width: border4(context)),
        ),
      ),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 5,
            child: _StatDisplayer(
              isCurrentTurn: isCurrentTurn,
              icon:
                  isCurrentTurn ? AppImages.flightWhite : AppImages.flightBlack,
              value: dartsThrownCurrentLeg.toString(),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 5,
            child: _StatDisplayer(
              isCurrentTurn: isCurrentTurn,
              icon: isCurrentTurn
                  ? AppImages.averageWhite
                  : AppImages.averageBlack,
              value: average.toStringAsFixed(2),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 5,
            child: _StatDisplayer(
              isCurrentTurn: isCurrentTurn,
              icon: isCurrentTurn
                  ? AppImages.checkoutPercentageWhite
                  : AppImages.checkoutPercentageBlack,
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
  final bool isCurrentTurn;
  final String icon;
  final String? value;

  const _StatDisplayer({
    Key? key,
    required this.isCurrentTurn,
    required this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    icon,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 3,
                child: AutoSizeText(
                  value ?? '-',
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(
                        color:
                            isCurrentTurn ? AppColors.white : AppColors.black,
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
    );
  }
}
