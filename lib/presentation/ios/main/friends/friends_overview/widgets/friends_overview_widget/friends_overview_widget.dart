import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class FriendsOverviewWidget extends StatelessWidget {
  const FriendsOverviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        AppSpacer.small(),
        FriendRequestCard(),
        AppSpacer.small(),
        FriendsCard(),
      ],
    );
  }
}
