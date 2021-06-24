import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';

class CheckBox extends StatelessWidget {
  final Locale language;

  const CheckBox({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.locale == language) {
      return AppIconButton(
        icon: Image.asset(
          AppImages.check_mark_quad_new,
        ),
      );
    } else {
      return AppIconButton(
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
