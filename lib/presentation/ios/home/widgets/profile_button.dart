import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      onPressed: () => context.router.push(const ProfilePageRoute()),
      builder: (context, boxConstraints) {
        return Row(
          children: [
            const Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Column(
                children: [
                  const Expanded(
                    child: Placeholder(),
                  ),
                  const Expanded(
                    child: Placeholder(),
                  ),
                  const Expanded(
                    child: Placeholder(),
                  ),
                  const Expanded(
                    child: Placeholder(),
                  ),
                  const Expanded(
                    child: Placeholder(),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
