import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class OnlineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () {},
      builder: (context, boxConstraints) {
        return Row(
          children: [
            Image.asset(AppImages.target),
            AutoSizeText('Play online todo'),
          ],
        );
      },
    );
  }
}
