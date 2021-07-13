import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: responsiveDouble(
            context: context,
            mobile: const ResponsiveDouble(
                small: 50, normal: 75, large: 125, extraLarge: 200),
          ),
        ),
        Image.asset(
          AppImages.logo,
          width: responsiveDouble(
            context: context,
            mobile: const ResponsiveDouble(
                small: 100, normal: 125, large: 175, extraLarge: 250),
          ),
          height: responsiveDouble(
            context: context,
            mobile: const ResponsiveDouble(
                small: 100, normal: 125, large: 175, extraLarge: 250),
          ),
        ),
        const Spacer(
          flex: 20,
        ),
        Text(
          LocaleKeys.email.tr().toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        const Spacer(
          flex: 40,
        ),
        AppPrimaryButton(
          text: LocaleKeys.signIn.tr(),
          onPressed: () {},
        ),
        const Spacer(
          flex: 50,
        ),
      ],
    );
  }
}
