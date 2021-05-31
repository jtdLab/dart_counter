import 'package:flutter/cupertino.dart';

class RoundedImage extends StatelessWidget {
  final Widget child;

  const RoundedImage.small({required this.child});
  const RoundedImage.normal({required this.child});
  const RoundedImage.large({required this.child});
  const RoundedImage.extraLarge({required this.child});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
