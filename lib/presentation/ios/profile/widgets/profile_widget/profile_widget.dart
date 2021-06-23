import 'package:flutter/cupertino.dart';

import 'widgets/widgets.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        ImageDisplayer(),
        Spacer(),
        CareerStatsDisplayer(),
        Spacer(),
      ],
    );
  }
}
