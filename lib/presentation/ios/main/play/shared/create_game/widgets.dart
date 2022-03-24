// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// DOMAIN
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/game/type.dart';

class PlayerCard extends StatelessWidget {
  final Widget playerList;
  final VoidCallback addPlayerPressed;

  const PlayerCard({
    Key? key,
    required this.playerList,
    required this.addPlayerPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        context.l10n.player.toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        playerList,
        _AddPlayerButton(
          onPressed: addPlayerPressed,
        ),
      ],
    );
  }
}

// TODO share with training ??
class _AddPlayerButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _AddPlayerButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.small(
      onPressed: onPressed,
      text: context.l10n.addPlayer.toUpperCase(),
    );
  }
}

class GameSettingsCard extends StatelessWidget {
  final int startingPoints;
  final Function(int) onStartingPointsChanged;
  final Mode mode;
  final Function(Mode) onModeChanged;
  final Function(int) onSizeChanged;
  final Type type;
  final Function(Type) onTypeChanged;

  const GameSettingsCard({
    Key? key,
    required this.startingPoints,
    required this.onStartingPointsChanged,
    required this.mode,
    required this.onModeChanged,
    required this.onSizeChanged,
    required this.type,
    required this.onTypeChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        context.l10n.modus.toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        StartingPointsPicker(
          startingPoints: startingPoints,
          onChanged: onStartingPointsChanged,
        ),
        ModePicker(
          mode: mode,
          onChanged: onModeChanged,
        ),
        SizePicker(
          onChanged: onSizeChanged,
        ),
        TypePicker(
          type: type,
          onChanged: onTypeChanged,
        ),
      ],
    );
  }
}

class StartingPointsPicker extends StatelessWidget {
  final int startingPoints;
  final Function(int) onChanged;

  const StartingPointsPicker({
    Key? key,
    required this.startingPoints,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppActionButton.normal(
            color:
                startingPoints == 301 ? AppColors.orangeNew : AppColors.white,
            onPressed: () => onChanged(301),
            text: '301',
          ),
        ),
        Expanded(
          child: AppActionButton.normal(
            color:
                startingPoints == 501 ? AppColors.orangeNew : AppColors.white,
            onPressed: () => onChanged(501),
            text: '501',
          ),
        ),
        Expanded(
          child: AppActionButton.normal(
            color:
                startingPoints == 701 ? AppColors.orangeNew : AppColors.white,
            onPressed: () => onChanged(701),
            text: '701',
          ),
        ),
      ],
    );
  }
}

class ModePicker extends StatelessWidget {
  final Mode mode;
  final Function(Mode) onChanged;

  const ModePicker({
    Key? key,
    required this.mode,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppActionButton.normal(
            color: mode == Mode.firstTo ? AppColors.orangeNew : AppColors.white,
            onPressed: () => onChanged(Mode.firstTo),
            text: 'FIRST TO',
          ),
        ),
        Expanded(
          child: AppActionButton.normal(
            color: mode == Mode.bestOf ? AppColors.orangeNew : AppColors.white,
            onPressed: () => onChanged(Mode.bestOf),
            text: 'BEST OF',
          ),
        ),
      ],
    );
  }
}

class SizePicker extends StatelessWidget {
  final Function(int) onChanged;

  const SizePicker({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNumberPicker(
      onChanged: onChanged,
    );
  }
}

class TypePicker extends StatelessWidget {
  final Type type;
  final Function(Type) onChanged;

  const TypePicker({
    Key? key,
    required this.type,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppActionButton.normal(
            color: type == Type.legs ? AppColors.orangeNew : AppColors.white,
            onPressed: () => onChanged(Type.legs),
            text: 'LEGS',
          ),
        ),
        Expanded(
          child: AppActionButton.normal(
            color: type == Type.sets ? AppColors.orangeNew : AppColors.white,
            onPressed: () => onChanged(Type.sets),
            text: 'SETS',
          ),
        ),
      ],
    );
  }
}

// TODO share with training
class PlayButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PlayButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: onPressed,
      icon: Image.asset(AppImages.targetNew),
      text: context.l10n.play.toUpperCase(),
    );
  }
}
