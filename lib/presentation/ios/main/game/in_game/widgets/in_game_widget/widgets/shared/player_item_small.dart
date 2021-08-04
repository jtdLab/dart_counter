import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'profile_image_position.dart'; // TODO maybe with part statement player items files extend

class PlayerItemSmall extends StatelessWidget {
  final ProfileImagePosition profileImagePosition;
  final AbstractPlayerSnapshot player;

  const PlayerItemSmall({
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
              flex: 5,
              child: _Header(
                // TODO photorul
                name: player.name,
              ),
            ),
            Expanded(
              flex: 6,
              child: _LegsSetsDisplayer(
                wonSets: player.wonSets,
                wonLegsCurrentSet: player.wonLegsCurrentSet,
              ),
            ),
            Expanded(
              flex: 17,
              child: _PointsLeftLastThrowDisplayer(
                isCurrentTurn: player.isCurrentTurn,
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
  final int? wonSets;
  final int wonLegsCurrentSet;

  const _LegsSetsDisplayer({
    Key? key,
    this.wonSets,
    required this.wonLegsCurrentSet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (wonSets != null) ...[
              AutoSizeText(
                'S:$wonSets',
                maxLines: 1,
                minFontSize: 1,
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
            ],
            AutoSizeText(
              'L:$wonLegsCurrentSet',
              maxLines: 1,
              minFontSize: 1,
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _PointsLeftLastThrowDisplayer extends StatelessWidget {
  final bool isCurrentTurn;
  final int pointsLeft;
  final int? lastPoints;

  const _PointsLeftLastThrowDisplayer({
    Key? key,
    required this.isCurrentTurn,
    required this.pointsLeft,
    this.lastPoints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentTurn ? AppColors.black : AppColors.white,
        border: Border(
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
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      fontSize: 40,
                      color: isCurrentTurn ? AppColors.white : AppColors.black,
                    ),
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
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      fontSize: 13,
                      color: isCurrentTurn ? AppColors.white : AppColors.black,
                    ),
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
