import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () => context.router.pop(),
      child: Image.asset(
        AppImages.chevron_back_new,
      ),
    );
  }
}
