import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO real data
class FriendsCard extends StatelessWidget {
  const FriendsCard({
    Key? key,
  }) : super(key: key);

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
      children: const [
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
