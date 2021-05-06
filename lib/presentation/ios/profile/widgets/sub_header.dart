import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';

class SubHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      child: Container(
        color: AppColors.black,
        child: Row(
          children: [
            Spacer(),
            Center(
              child: AutoSizeText(
                'TODO carrer Stats',
                maxLines: 1,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
