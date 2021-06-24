import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

import 'app_navigation_bar/widgets/app_navigation_bar_button.dart';

class CancelGameButton extends StatelessWidget {
  const CancelGameButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () =>
          context.read<PlayBloc>().add(const PlayEvent.gameCanceled()),
      child: Image.asset(
        AppImages.x_mark,
      ),
    );
  }
}
