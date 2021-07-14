import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

// TODO refactor
class Success extends StatelessWidget {
  const Success({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          LocaleKeys.emailSent.tr().toUpperCase(),
        ),
        const Spacer(
          flex: 8,
        ),
        // TODO
        SizedBox(
          height: size40(context) + size12(context),
        ),
        AppPrimaryButton(
          text: LocaleKeys.signIn.tr(),
          onPressed: () => context.router.pop(),
        ),
        const Spacer(
          flex: 7,
        ),
      ],
    );
  }
}
