import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

enum CardSize { custom, small, normal, large }

class AppCardItem extends StatelessWidget {
  final ResponsiveDouble? heightMobile;
  final ResponsiveDouble? heightTablet;
  final CardSize size;
  final Widget content;

  const AppCardItem.custom({
    Key? key,
    required this.heightMobile,
    this.heightTablet,
    required this.content,
  })   : size = CardSize.custom,
        super(key: key);

  const AppCardItem.small({Key? key, required this.content})
      : size = CardSize.small,
        heightMobile = null,
        heightTablet = null,
        super(key: key);

  const AppCardItem.normal({Key? key, required this.content})
      : size = CardSize.normal,
        heightMobile = null,
        heightTablet = null,
        super(key: key);

  const AppCardItem.large({Key? key, required this.content})
      : size = CardSize.large,
        heightMobile = null,
        heightTablet = null,
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
        height = responsiveDouble(
          context: context,
          mobile: heightMobile!,
          tablet: heightTablet,
        );
        break;
    }
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: content,
    );
  }
}
