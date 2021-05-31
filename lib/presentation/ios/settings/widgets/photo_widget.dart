import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class PhotoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.photo_placeholder_new,
        width: responsiveDouble(
          context: context,
          mobile: ResponsiveDouble(
            small: 100,
            normal: 120,
            large: 140,
            extraLarge: 160,
          ),
        ),
       height: responsiveDouble(
          context: context,
          mobile: ResponsiveDouble(
            small: 100,
            normal: 120,
            large: 140,
            extraLarge: 160,
          ),
        ),
      ),
    );
  }
}
