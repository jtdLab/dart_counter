import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class InputPointsDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size55(context),
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: const Center(
        child: Text(
          '0',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
