import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class CheckBox extends StatelessWidget {
  final Locale language;

  const CheckBox({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.locale == language) {
      return IconButton(
        icon: Image.asset(
          AppImages.check_mark_quad_new,
        ),
      );
    } else {
      return IconButton(
        onPressed: () async {
          await context.setLocale(language);
        },
        icon: Image.asset(
          AppImages.unchecked_new,
        ),
      );
    }
  }
}
