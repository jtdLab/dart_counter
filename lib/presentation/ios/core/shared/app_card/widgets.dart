part of 'app_card.dart';

enum CardItemSize { custom, small, normal, large }

// super containers should have a basic padding
class AppCardItem extends StatelessWidget {
  final double? height;
  final CardItemSize size;
  final Color color;
  final Widget content;

  const AppCardItem.custom({
    Key? key,
    required this.height,
    this.color = AppColors.white,
    required this.content,
  })  : size = CardItemSize.custom,
        super(key: key);

  const AppCardItem.small({
    Key? key,
    this.color = AppColors.white,
    required this.content,
  })  : size = CardItemSize.small,
        height = null,
        super(key: key);

  const AppCardItem.normal({
    Key? key,
    this.color = AppColors.white,
    required this.content,
  })  : size = CardItemSize.normal,
        height = null,
        super(key: key);

  const AppCardItem.large({
    Key? key,
    this.color = AppColors.white,
    required this.content,
  })  : size = CardItemSize.large,
        height = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double height;
    switch (size) {
      case CardItemSize.small:
        height = size40(context);
        break;
      case CardItemSize.normal:
        height = size50(context);
        break;
      case CardItemSize.large:
        height = size70(context);
        break;
      default:
        height = this.height!;
        break;
    }
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: content,
    );
  }
}
