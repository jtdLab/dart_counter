import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:flutter/cupertino.dart';

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
            padding: const EdgeInsets.all(5.0),
            child: Text(
              title.toUpperCase(),
            ),
          ),
          _icon(),
        ],
      ),
    );
  }

  Widget _icon() => Padding(
        padding: const EdgeInsets.all(5.0),
        child: CupertinoButton(
          minSize: 0,
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          child: Image.asset(AppImages.settings_new),
        ),
      );
}
