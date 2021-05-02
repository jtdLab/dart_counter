import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_textfield.dart';
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
                            mobile: [24, 32, 64],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: responsiveDouble(
                                  context: context,
                                  mobile: [75, 125, 200],
                                ),
                              ),
                              Image.asset(
                                AppImages.logo,
                                width: responsiveDouble(
                                  context: context,
                                  mobile: [100, 175, 250],
                                ),
                                height: responsiveDouble(
                                  context: context,
                                  mobile: [100, 175, 250],
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
                                      context: context, mobile: [12, 16, 20]),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                      context: context, mobile: [12, 16, 20]),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorInvalidEmailAddress
                                            .tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFonts.mini,
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
                                      context: context, mobile: [12, 16, 20]),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                      context: context, mobile: [12, 16, 20]),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorInvalidUsername.tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFonts.mini,
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
                                      context: context, mobile: [12, 16, 20]),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                      context: context, mobile: [12, 16, 20]),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorInvalidPassword.tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFonts.mini,
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
                                        state.password == state.password),
                              ),
                              if (!state.showErrorMessages ||
                                  (state.showErrorMessages &&
                                      state.password.isValid() &&
                                      state.password == state.password)) ...[
                                SizedBox(
                                  height: responsiveDouble(
                                      context: context, mobile: [12, 16, 20]),
                                ),
                              ] else ...[
                                SizedBox(
                                  height: responsiveDouble(
                                      context: context, mobile: [12, 16, 20]),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: AutoSizeText(
                                        LocaleKeys.errorPasswordsDontMatch.tr(),
                                        maxLines: 1,
                                        maxFontSize: AppFonts.mini,
                                        minFontSize: 1,
                                        style: const TextStyle(
                                            color: AppColors.red),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              PrimaryButton(
                                text: LocaleKeys.signUp.tr(),
                                onPressed: () => context
                                    .read<SignUpFormBloc>()
                                    .add(const SignUpFormEvent.signUpPressed()),
                              ),
                              SizedBox(
                                height: responsiveDouble(
                                    context: context, mobile: [16, 20, 24]),
                              ),
                              LinkButton(
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
                            mobile: [24, 32, 64],
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
