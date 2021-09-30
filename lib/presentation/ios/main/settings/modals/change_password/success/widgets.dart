part of '../change_password_modal.dart';

// BODY
class _SuccessWidget extends StatelessWidget {
  const _SuccessWidget({
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
            LocaleKeys.passwordChanged.tr().toUpperCase(),
          ),
        ),
        AppPrimaryButton(
          text: LocaleKeys.confirm.tr().toUpperCase(),
          onPressed: () => context.router.pop(),
        ),
        const Spacer(),
      ],
    );
  }
}
