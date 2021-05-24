import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  final Widget child;

  const CircleImage({required this.child});

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
