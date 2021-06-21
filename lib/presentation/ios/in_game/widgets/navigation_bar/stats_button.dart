import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

class StatsButton extends StatelessWidget {
  const StatsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () {},
      child: Image.asset(
        AppImages.stats_new,
      ),
    );
  }
}
