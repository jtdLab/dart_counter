import 'dart:math' as math;
import 'dart:ui';
import 'package:dart_counter/presentation/ios/core/core.dart';

// TODO refactor
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
            final Offset tapPosition = Offset(
              details.localPosition.dx,
              details.localPosition.dy,
            );

            // zoom or reset
            setState(() {
              if (scale == 1) {
                scale = 3;
                center = tapPosition;
              } else {
                scale = 1;
                final radius =
                    (4 * widget.size55(context) + 3 * widget.size6(context)) /
                        2;
                center = Offset(radius, radius);
              }
            });
          },
          child: CustomPaint(
            painter: _DartBoardPainter(scale: scale, center: center),
          ),
        ),
      ),
    );
  }
}

// TODO maybe use this more dart like approach with _ in other widget depending subwidgets
class _DartBoardPainter extends CustomPainter {
  final double scale;
  final Offset center;

  _DartBoardPainter({
    required this.scale,
    required this.center,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width < size.height ? size.width / 2 : size.height / 2;

    // translate so the (0,0) of the coordinate system is in the middle
    final Offset translatedCenter = Offset(
      -center.dx + radius,
      -center.dy + radius,
    );
    canvas.translate(radius, radius);

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
    canvas.drawCircle(translatedCenter, radius, redFilled);

    // single
    canvas.drawCircle(translatedCenter, 0.9 * radius, blackFilled);

    // triple
    canvas.drawCircle(translatedCenter, 0.7 * radius, orangeFilled);

    // single
    canvas.drawCircle(translatedCenter, 0.6 * radius, blackFilled);

    for (int i = 0; i < 10; i++) {
      // overlay
      canvas.drawArc(
        Rect.fromCenter(
          center: translatedCenter,
          height: 2 * radius,
          width: 2 * radius,
        ),
        -math.pi / 20 + 2 * i * math.pi / 10,
        math.pi / 10,
        true,
        whiteTransparent,
      );
    }

    // single bull
    canvas.drawCircle(translatedCenter, 0.2 * radius, grayFilled);

    // bull
    canvas.drawCircle(translatedCenter, 0.1 * radius, redFilled);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
