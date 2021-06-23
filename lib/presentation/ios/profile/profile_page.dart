import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const AppPage(
      navigationBar: AppNavigationBar(
        leading: BackButton(),
        middle: NameDisplayer(),
        trailing: GameHistoryButton(),
      ),
      child: ProfileWidget(),
    );
  }
}
