import 'package:dart_counter/presentation/ios/core/core.dart';

enum CardSize { custom, small, normal, large }

class AppCardItem extends StatelessWidget {
  final double? height;
  final CardSize size;
  final Color color;
  final Widget content;

  const AppCardItem.custom({
    Key? key,
    required this.height,
    this.color = AppColors.white,
    required this.content,
  })   : size = CardSize.custom,
        super(key: key);

  const AppCardItem.small({
    Key? key,
    this.color = AppColors.white,
    required this.content,
  })   : size = CardSize.small,
        height = null,
        super(key: key);

  const AppCardItem.normal({
    Key? key,
    this.color = AppColors.white,
    required this.content,
  })   : size = CardSize.normal,
        height = null,
        super(key: key);

  const AppCardItem.large({
    Key? key,
    this.color = AppColors.white,
    required this.content,
  })   : size = CardSize.large,
        height = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double height;
    switch (size) {
      case CardSize.small:
        height = size40(context);
        break;
      case CardSize.normal:
        height = size50(context);
        break;
      case CardSize.large:
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
