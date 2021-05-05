import 'package:dart_counter/presentation/ios/home/widgets/home_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
        onPressed: () => context.router.push(const SettingsPageRoute()),
        builder: (context, boxConstraints) => const Placeholder());
  }
}
