import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class UndoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size55(context),
      color: AppColors.red,
      child: Center(
        child: Text(
          toString(),
        ),
      ),
    );
  }
}
