import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/cancel_button.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/create_game_widget/create_game_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return AppPage(
          maxHeight: 806, // TODO
          navigationBar: AppNavigationBar(
            leading: const CancelButton(),
            middle: Text(
              LocaleKeys.createGame.tr().toUpperCase(),
            ),
          ),
          child: const CreateGameWidget(),
        );
      },
    );
  }
}
