import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

class ForgotPasswordSuccessWidget extends StatelessWidget {
  const ForgotPasswordSuccessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 70,
            normal: 70,
            large: 70,
            extraLarge: 70,
          ),
        ),
        const LogoDisplayer(),
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 120,
            normal: 120,
            large: 120,
            extraLarge: 120,
          ),
        ),
        SizedBox(
          height: 4 * (size40(context) + size12(context)),
          child: Text(
            LocaleKeys.emailSent.tr().toUpperCase(),
          ),
        ),
        AppPrimaryButton(
          text: LocaleKeys.signIn.tr(),
          onPressed: () => context.router.pop(),
        ),
        const Spacer(),
      ],
    );
  }
}
