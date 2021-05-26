import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class AccountItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AccountItem({Key? key, required this.title, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        child: Row(
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: AppColors.black,
              ),
            ),
            const Spacer(),
            CupertinoButton(
              onPressed: onPressed,
              padding: EdgeInsets.zero,
              child: Image.asset(AppImages.settings_new),
            ),
          ],
        ),
      ),
    );
  }
}
