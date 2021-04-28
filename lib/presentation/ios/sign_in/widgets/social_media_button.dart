import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

enum Type { facebook, google, instagram }

class SocialMediaButton extends StatelessWidget {
  final Type type;
  final VoidCallback? onPressed;

  SocialMediaButton({required this.type, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveDouble(
        context: context,
        mobile: [40, 50, 60],
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
                    : AppImages.instagram,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
