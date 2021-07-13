import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      children: [
        // TODO
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 70,
            normal: 70,
            large: 70,
            extraLarge: 70,
          ),
        ),
        const LogoDisplayer(),
        // TODO
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 120,
            normal: 120,
            large: 120,
            extraLarge: 120,
          ),
        ),
        Text(
          LocaleKeys.changeEmail.tr().toUpperCase(),
        ),
        const Spacer(
          flex: 8,
        ),
        AppTextField(
          placeholder: LocaleKeys.newEmailAddress.tr().toUpperCase(),
          textInputAction: TextInputAction.next,
          onEditingComplete: () => node.unfocus(),
          onChanged: (emailString) {},
        ),
        AppPrimaryButton(
          text: LocaleKeys.confirm.tr(),
          onPressed: () {},
        ),
        const Spacer(
          flex: 7,
        ),
      ],
    );
  }
}
