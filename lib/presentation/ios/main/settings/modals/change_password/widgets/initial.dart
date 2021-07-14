import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

// TODO refactor
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
          LocaleKeys.changePassword.tr().toUpperCase(),
        ),
        // TODO
        const Spacer(),
        AppTextField(
          placeholder: LocaleKeys.oldPassword.tr().toUpperCase(),
          textInputAction: TextInputAction.next,
          onEditingComplete: () => node.nextFocus(),
          obscureText: true,
          onChanged: (oldPasswordString) {},
        ),

        AppTextField(
          placeholder: LocaleKeys.newPassword.tr(),
          textInputAction: TextInputAction.next,
          onEditingComplete: () => node.nextFocus(),
          obscureText: true,
          onChanged: (newPasswordString) {},
        ),

        AppTextField(
          placeholder: LocaleKeys.newPasswordAgain.tr(),
          textInputAction: TextInputAction.done,
          onEditingComplete: () => node.unfocus(),
          obscureText: true,
          onChanged: (newPasswordAgainString) {},
        ),
        AppPrimaryButton(
          text: LocaleKeys.confirm.tr(),
          onPressed: () {},
        ),
        // TODO
        const Spacer(
          flex: 8,
        ),
      ],
    );
  }
}
