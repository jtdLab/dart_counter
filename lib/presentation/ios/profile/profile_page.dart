import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(
          'Sebi Abi 69'.toUpperCase(),
        ),
        trailing: const GameHistoryButton(),
      ),
      child: const ProfileWidget(),
    );
  }
}
