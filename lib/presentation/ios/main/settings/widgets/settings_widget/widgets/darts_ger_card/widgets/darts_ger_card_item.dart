import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';

class DartsGerCardItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const DartsGerCardItem({
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(size6(context)),
              child: AutoSizeText(
                title.toUpperCase(),
                maxLines: 1,
                maxFontSize: 14,
                minFontSize: 8,
              ),
            ),
          ),
          AppIconButton(
            onPressed: onPressed,
            icon: Image.asset(AppImages.infoDarkNew),
          ),
        ],
      ),
    );
  }
}
