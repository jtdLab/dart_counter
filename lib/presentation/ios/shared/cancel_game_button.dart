import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CancelGameButton extends StatelessWidget {
  const CancelGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () {
        // TODO show dialog before canceling
        context.read<PlayBloc>().add(const PlayEvent.gameCanceled());
      },
      child: Image.asset(
        AppImages.x_mark,
      ),
    );
  }
}