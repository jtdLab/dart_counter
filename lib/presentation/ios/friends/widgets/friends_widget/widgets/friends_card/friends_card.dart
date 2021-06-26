import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class FriendsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: Text(
        LocaleKeys.friends.tr().toUpperCase(),
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        FriendsCardItem(),
        FriendsCardItem(),
        FriendsCardItem(),
        FriendsCardItem(),
        FriendsCardItem(),
        FriendsCardItem(),
      ],
    );
  }
}
