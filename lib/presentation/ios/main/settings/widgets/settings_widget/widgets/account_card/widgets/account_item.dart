import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';

class AccountItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const AccountItem({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

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
          AppIconButton(
            onPressed: onPressed,
            icon: Image.asset(AppImages.settings_new),
          ),
        ],
      ),
    );
  }
}
