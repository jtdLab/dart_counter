import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class AddPlayerButton extends StatelessWidget {
  const AddPlayerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.small(
      onPressed: () =>
          context.read<PlayBloc>().add(const PlayEvent.playerAdded()),
      text: LocaleKeys.addPlayer.tr().toUpperCase(),
    );
  }
}
