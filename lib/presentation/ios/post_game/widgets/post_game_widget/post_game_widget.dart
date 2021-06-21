import 'package:flutter/cupertino.dart';

import 'widgets/widgets.dart';

class PostGameWidget extends StatelessWidget {
  const PostGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        PlayerProfileImageAndNameDisplayer(),
        StatsDisplayer(),
        BackToHomeButton(),
      ],
    );
  }
}
