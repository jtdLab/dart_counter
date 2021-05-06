import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  final ImageProvider image;

  const CircleImage(this.image);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: image, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
