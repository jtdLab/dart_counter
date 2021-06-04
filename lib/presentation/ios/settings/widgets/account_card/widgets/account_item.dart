import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class AccountItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AccountItem({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.small(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(size6(context)),
            child: Text(
              title.toUpperCase(),
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Image.asset(AppImages.settings_new),
          ),
        ],
      ),
    );
  }
}
