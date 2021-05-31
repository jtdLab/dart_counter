import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

enum Type { facebook, google, apple }

class SocialMediaButton extends StatelessWidget {
  final Type type;
  final VoidCallback? onPressed;

  const SocialMediaButton({required this.type, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveDouble(
        context: context,
        mobile: ResponsiveDouble(
          small: 30,
          normal: 40,
          large: 50,
          extraLarge: 60,
        ),
      ), //
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            type == Type.facebook
                ? AppImages.facebook
                : type == Type.google
                    ? AppImages.google
                    : AppImages.instagram, // TODO load apple icon
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
