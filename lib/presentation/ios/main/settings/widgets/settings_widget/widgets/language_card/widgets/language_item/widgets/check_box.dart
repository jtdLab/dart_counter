import 'package:dart_counter/application/settings/settings_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';

class CheckBox extends StatelessWidget {
  final Locale language;

  const CheckBox({
    Key? key,
    required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.locale == language) {
      return AppIconButton(
        icon: Image.asset(
          AppImages.checkMarkQuadNew,
        ),
      );
    } else {
      return AppIconButton(
        onPressed: () async {
          // TODO should work without call to settins bloc if easy localizations rebuilts correctly on locale change
          await context.setLocale(
            language,
          );
          context.read<SettingsBloc>().add(const SettingsEvent.localeChanged());
        },
        icon: Image.asset(
          AppImages.uncheckedNew,
        ),
      );
    }
  }
}
