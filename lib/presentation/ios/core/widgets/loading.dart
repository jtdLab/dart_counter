import 'package:dart_counter/presentation/core/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Lottie.asset(Animations.loading),
      ),
    );
  }
}
