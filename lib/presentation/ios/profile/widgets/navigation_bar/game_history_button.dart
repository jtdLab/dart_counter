import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class GameHistoryButton extends StatelessWidget {
  const GameHistoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () => context.router.push(const GameHistoryPageRoute()),
      child: Image.asset(
        AppImages.clock_new,
      ),
    );
  }
}
