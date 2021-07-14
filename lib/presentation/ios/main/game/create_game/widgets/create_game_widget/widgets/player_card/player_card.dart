import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        LocaleKeys.player.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: const [
        PlayerList(),
        AddPlayerButton(),
      ],
    );
  }
}
