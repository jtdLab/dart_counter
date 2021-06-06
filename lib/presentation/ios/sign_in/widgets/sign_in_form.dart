import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_spacer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';
import 'package:dart_counter/presentation/ios/core/widgets/logo_displayer.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:dart_counter/presentation/ios/sign_in/modals/forgot_password/forgot_password_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SignInForm extends StatelessWidget {
  final PageController pageController;

  const SignInForm({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess?.fold(
          (failure) {
            failure.maybeWhen(
              serverError: () => showToast(LocaleKeys.errorServer.tr()),
              invalidEmailAndPasswordCombination: () => showToast(
                  LocaleKeys.errorInvalidEmailAndPasswordCombination.tr()),
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
            : Column(
                children: [
                  SizedBox(
                    height: size70(context),
                  ),
                  LogoDisplayer(),
                  const Spacer(
                    flex: 84,
                  ),
                  AppTextField(
                    placeholder: LocaleKeys.email.tr(),
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => node.nextFocus(),
                    onChanged: (emailString) =>
                        context.read<SignInFormBloc>().add(
                              SignInFormEvent.emailChanged(emailString),
                            ),
                  ),
                  AppTextField(
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () => node.unfocus(),
                    obscureText: true,
                    placeholder: LocaleKeys.password.tr(),
                    onChanged: (passwordString) =>
                        context.read<SignInFormBloc>().add(
                              SignInFormEvent.passwordChanged(passwordString),
                            ),
                  ),
                  AppPrimaryButton(
                    text: LocaleKeys.signIn.tr(),
                    onPressed: () => context.read<SignInFormBloc>().add(
                          const SignInFormEvent.signInPressed(),
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLinkButton(
                        text: LocaleKeys.forgotPassword.tr(),
                        onPressed: () {
                          showCupertinoModalBottomSheet(
                            context: context,
                            builder: (context) => ForgotPasswordModal(),
                          );
                        },
                      ),
                      AppLinkButton(
                        text: LocaleKeys.signUpNow.tr(),
                        onPressed: () {
                          pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CupertinoButton(
                        onPressed: () => context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithFacebookPressed(),
                            ),
                        child: Image.asset(AppImages.fb_new),
                      ),
                      CupertinoButton(
                        onPressed: () => context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithApplePressed(),
                            ),
                        child: Image.asset(AppImages.ig_new),
                      ),
                      CupertinoButton(
                        onPressed: () => context.read<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithGooglePressed(),
                            ),
                        child: Image.asset(AppImages.google_new),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 30,
                  ),
                ],
              );
      },
    );
  }
}
