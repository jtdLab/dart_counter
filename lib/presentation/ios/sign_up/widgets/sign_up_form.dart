import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

class SignUpForm extends StatelessWidget {
  final PageController pageController;

  const SignUpForm({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess?.fold(
          (failure) {
            failure.maybeWhen(
              serverError: () => showToast(LocaleKeys.errorServer.tr()),
              emailAlreadyInUse: () =>
                  showToast(LocaleKeys.errorEmailAlreadyInUse.tr()),
              orElse: () {},
            );
          },
          (_) {
            context.router.replace(const HomePageRoute());
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
          },
        );
      },
      builder: (context, state) {
        final node = FocusScope.of(context);
        return state.isSubmitting
            ? Loading()
            : LayoutBuilder(
                builder: (context, boxConstraints) => SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: boxConstraints.copyWith(
                        maxHeight: boxConstraints.maxHeight +
                            MediaQuery.of(context).viewInsets.bottom -
                            MediaQuery.of(context).viewPadding.bottom),
                    child: Row(
                      children: [
                        SizedBox(
                          width: responsiveDouble(
                            context: context,
                            mobile: ResponsiveDouble(
                                small: 16,
                                normal: 24,
                                large: 32,
                                extraLarge: 64),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      small: 60,
                                      normal: 75,
                                      large: 125,
                                      extraLarge: 200),
                                ),
                              ),
                              Image.asset(
                                AppImages.logo,
                                width: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      small: 100,
                                      normal: 125,
                                      large: 175,
                                      extraLarge: 250),
                                ),
                                height: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      small: 100,
                                      normal: 125,
                                      large: 175,
                                      extraLarge: 250),
                                ),
                              ),
                              const Spacer(
                                flex: 24,
                              ),
                              AppTextField(
                                placeholder: LocaleKeys.email.tr(),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => node.nextFocus(),
                                onChanged: (emailStr) {
                                  context.read<SignUpFormBloc>().add(
                                        SignUpFormEvent.emailChanged(emailStr),
                                      );
                                },
                                valid: !state.showErrorMessages ||
                                    (state.showErrorMessages &&
                                        state.email.isValid()),
                              ),
                              if (!state.showErrorMessages ||
                                  (state.showErrorMessages &&
                                      state.email.isValid())) ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorInvalidEmailAddress
                                            .tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFontSizes.mini,
                                        minFontSize: 1,
                                        style: const TextStyle(
                                            color: AppColors.red),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              AppTextField(
                                placeholder: LocaleKeys.username.tr(),
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => node.nextFocus(),
                                onChanged: (usernameString) =>
                                    context.read<SignUpFormBloc>().add(
                                          SignUpFormEvent.usernameChanged(
                                              usernameString),
                                        ),
                                valid: !state.showErrorMessages ||
                                    (state.showErrorMessages &&
                                        state.username.isValid()),
                              ),
                              if (!state.showErrorMessages ||
                                  (state.showErrorMessages &&
                                      state.username.isValid())) ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorInvalidUsername.tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFontSizes.mini,
                                        minFontSize: 1,
                                        style: const TextStyle(
                                            color: AppColors.red),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              AppTextField(
                                obscureText: true,
                                placeholder: LocaleKeys.password.tr(),
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => node.nextFocus(),
                                onChanged: (passwordString) =>
                                    context.read<SignUpFormBloc>().add(
                                          SignUpFormEvent.passwordChanged(
                                              passwordString),
                                        ),
                                valid: !state.showErrorMessages ||
                                    (state.showErrorMessages &&
                                        state.password.isValid()),
                              ),
                              if (!state.showErrorMessages ||
                                  (state.showErrorMessages &&
                                      state.password.isValid())) ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorInvalidPassword.tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFontSizes.mini,
                                        minFontSize: 1,
                                        style: const TextStyle(
                                            color: AppColors.red),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              AppTextField(
                                obscureText: true,
                                placeholder: LocaleKeys.passwordAgain.tr(),
                                textInputAction: TextInputAction.done,
                                onEditingComplete: () => node.unfocus(),
                                onChanged: (passwordAgainString) =>
                                    context.read<SignUpFormBloc>().add(
                                          SignUpFormEvent.passwordAgainChanged(
                                              passwordAgainString),
                                        ),
                                valid: !state.showErrorMessages ||
                                    (state.showErrorMessages &&
                                        state.password.isValid() &&
                                        state.password == state.passwordAgain),
                              ),
                              if (!state.showErrorMessages ||
                                  (state.showErrorMessages &&
                                      state.password.isValid() &&
                                      state.password ==
                                          state.passwordAgain)) ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                    context: context,
                                    mobile: ResponsiveDouble(
                                        small: 10,
                                        normal: 12,
                                        large: 16,
                                        extraLarge: 20),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorPasswordsDontMatch.tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFontSizes.mini,
                                        minFontSize: 1,
                                        style: const TextStyle(
                                            color: AppColors.red),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              AppPrimaryButton(
                                text: LocaleKeys.signUp.tr(),
                                onPressed: () => context
                                    .read<SignUpFormBloc>()
                                    .add(const SignUpFormEvent.signUpPressed()),
                              ),
                              SizedBox(
                                height: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      small: 10,
                                      normal: 16,
                                      large: 20,
                                      extraLarge: 24),
                                ),
                              ),
                              AppLinkButton(
                                text: LocaleKeys.signIn.tr(),
                                onPressed: () {
                                  pageController.animateToPage(0,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                              ),
                              const Spacer(
                                flex: 44,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: responsiveDouble(
                            context: context,
                            mobile: ResponsiveDouble(
                                small: 16,
                                normal: 24,
                                large: 32,
                                extraLarge: 64),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
