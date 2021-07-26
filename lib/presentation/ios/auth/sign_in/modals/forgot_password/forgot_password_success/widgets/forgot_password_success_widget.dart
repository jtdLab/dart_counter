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
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 50,
            normal: 60,
            large: 69,
            extraLarge: 78,
          ),
        ),
        const LogoDisplayer(),
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 96,
            normal: 110,
            large: 123,
            extraLarge: 140,
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
