import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class FriendsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppSearchField(
          placeholder: LocaleKeys.searchUser.tr().toUpperCase(),
          onChanged: (newSearchString) {},
        ),
        FriendsCard(),
      ],
    );
  }
}
