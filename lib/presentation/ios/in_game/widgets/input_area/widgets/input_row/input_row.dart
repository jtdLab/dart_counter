import 'package:dart_counter/presentation/ios/core/widgets/layout/app_row.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/input_row/widgets/do_button.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/input_row/widgets/input_points_displayer.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/widgets/input_row/widgets/undo_buttond.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class InputRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: UndoButton(),
        ),
        Expanded(
          child: InputPointsDisplayer(),
        ),
        Expanded(
          child: DoButton(),
        ),
      ],
    );
  }
}
