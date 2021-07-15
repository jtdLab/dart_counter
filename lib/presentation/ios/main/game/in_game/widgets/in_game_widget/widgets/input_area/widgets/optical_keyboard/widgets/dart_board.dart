import 'dart:math' as math;
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter/material.dart' show Colors;

// TODO whole file clean and seperate componenets
class DartBoard extends StatefulWidget {
  const DartBoard({
    Key? key,
  }) : super(key: key);

  @override
  _DartBoardState createState() => _DartBoardState();
}

class _DartBoardState extends State<DartBoard> {
  double scale = 1;
  late Offset center;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final radius = (4 * widget.size55(context) + 3 * widget.size6(context)) / 2;
    center = Offset(radius, radius);
    print('intital $center');
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) => ClipRRect(
        borderRadius: BorderRadius.circular(
          boxConstraints.maxWidth,
        ),
        child: GestureDetector(
          onTapUp: (details) {
            final tapPosition = Offset(
              details.localPosition.dx,
              details.localPosition.dy,
            );

            // translate tap position to (0,0) as center

            // zoom or reset
            setState(() {
              if (scale == 1) {
                scale = 2.5;

                center = tapPosition;

                print('zoom $center');
              } else {
                scale = 1;
                final radius =
                    (4 * widget.size55(context) + 3 * widget.size6(context)) /
                        2;
                center = Offset(radius, radius);
                print('reset $center');
              }
            });
          },
          child: CustomPaint(
            painter: DartBoardPainter(scale: scale, center: center),
          ),
        ),
      ),
    );
  }
}

class DartBoardPainter extends CustomPainter {
  final double scale;
  final Offset center;

  DartBoardPainter({
    required this.scale,
    required this.center,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width < size.height ? size.width / 2 : size.height / 2;

    // scale
    canvas.scale(scale);

    final redFilled = Paint()
      ..color = AppColors.red
      ..style = PaintingStyle.fill;

    final blackFilled = Paint()
      ..color = AppColors.black
      ..style = PaintingStyle.fill;

    final orangeFilled = Paint()
      ..color = AppColors.orangeNew
      ..style = PaintingStyle.fill;

    final grayFilled = Paint()
      ..color = AppColors.gray
      ..style = PaintingStyle.fill;

    final whiteTransparent = Paint()
      ..color = Colors.white24
      ..style = PaintingStyle.fill;

    // double
    canvas.drawCircle(center, radius, redFilled);

    // single
    canvas.drawCircle(center, 0.9 * radius, blackFilled);

    // triple
    canvas.drawCircle(center, 0.7 * radius, orangeFilled);

    // single
    canvas.drawCircle(center, 0.6 * radius, blackFilled);

    // single bull
    canvas.drawCircle(center, 0.2 * radius, grayFilled);

    // bull
    canvas.drawCircle(center, 0.1 * radius, redFilled);

    for (int i = 0; i < 10; i++) {
      // overlay
      canvas.drawArc(
        Rect.fromCenter(
          center: center,
          height: 2 * radius,
          width: 2 * radius,
        ),
        -math.pi / 20 + 2 * i * math.pi / 10,
        math.pi / 10,
        true,
        whiteTransparent,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
