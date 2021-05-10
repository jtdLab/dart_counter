import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/friends/widgets/add_friends_card.dart';
import 'package:dart_counter/presentation/ios/friends/widgets/your_friends_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            LocaleKeys.friends.tr(),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                AddFriendsCard(),
                const SizedBox(
                  height: 4,
                ),
                YourFriendsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
