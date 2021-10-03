part of '../change_username_modal.dart';

// BODY
class _InitialWidget extends StatelessWidget {
  const _InitialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
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
          height: 3 * (size40(context) + size12(context)),
          child: Text(
            LocaleKeys.changeUsername.tr().toUpperCase(),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.newUsernane.tr().toUpperCase(),
          textInputAction: TextInputAction.done,
          onEditingComplete: () => node.unfocus(),
          onChanged: (newUsernameString) =>
              context.read<ChangeUsernameBloc>().add(
                    ChangeUsernameEvent.newUsernameChanged(
                      newUsernameString: newUsernameString,
                    ),
                  ),
        ),
        BlocBuilder<ChangeUsernameBloc, ChangeUsernameState>(
          builder: (context, state) {
            if (state.isSubmitting) {
              return SizedBox(
                width: double.infinity,
                height: size55(context),
                child: Container(
                  color: AppColors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Lottie.asset(
                      AppAnimations.loading_circle_white,
                      width: size12(context),
                      height: size12(context),
                    ),
                  ),
                ),
              );
            } else {
              return AppPrimaryButton(
                text: LocaleKeys.confirm.tr().toUpperCase(),
                onPressed: () => context
                    .read<ChangeUsernameBloc>()
                    .add(const ChangeUsernameEvent.confirmPressed()),
              );
            }
          },
        ),
        const Spacer(),
      ],
    );
  }
}
