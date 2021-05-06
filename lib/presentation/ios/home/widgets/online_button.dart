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
            Spacer(
              flex: 25,
            ),
            Flexible(
              child: Column(
                children: [
                  const Spacer(),
                  Expanded(
                    child: const AutoSizeText(
                      'OFFLINE',
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white),
                    ),
                  ),
                  Expanded(
                    child: const AutoSizeText(
                      'PLAY',
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              flex: 190,
            ),
            Spacer(
              flex: 15,
            ),
          ],
        );
      },
    );
  }
}
