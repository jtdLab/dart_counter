import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_textfield.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

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
                                normal: 24, large: 32, extraLarge: 64),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      normal: 75, large: 125, extraLarge: 200),
                                ),
                              ),
                              Image.asset(
                                AppImages.logo,
                                width: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      normal: 100, large: 175, extraLarge: 250),
                                ),
                                height: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      normal: 100, large: 175, extraLarge: 250),
                                ),
                              ),
                              const Spacer(
                                flex: 44,
                              ),
                              AppTextField(
                                placeholder: LocaleKeys.email.tr(),
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => node.nextFocus(),
                                onChanged: (emailString) => context
                                    .read<SignInFormBloc>()
                                    .add(
                                      SignInFormEvent.emailChanged(emailString),
                                    ),
                              ),
                              SizedBox(
                                height: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      normal: 12, large: 16, extraLarge: 20),
                                ),
                              ),
                              AppTextField(
                                textInputAction: TextInputAction.done,
                                onEditingComplete: () => node.unfocus(),
                                obscureText: true,
                                placeholder: LocaleKeys.password.tr(),
                                onChanged: (passwordString) =>
                                    context.read<SignInFormBloc>().add(
                                          SignInFormEvent.passwordChanged(
                                              passwordString),
                                        ),
                              ),
                              SizedBox(
                                height: responsiveDouble(
                                  context: context,
                                  mobile: ResponsiveDouble(
                                      normal: 16, large: 20, extraLarge: 24),
                                ),
                              ),
                              PrimaryButton(
                                text: LocaleKeys.signIn.tr(),
                                onPressed: () =>
                                    context.read<SignInFormBloc>().add(
                                          const SignInFormEvent.signInPressed(),
                                        ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6.0, 0, 0, 0),
                                  child: Builder(
                                    builder: (context) => LinkButton(
                                        text: LocaleKeys.forgotPassword.tr()),
                                  ),
                                ),
                              ),
                              const Spacer(
                                flex: 20,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SignInButton(
                                        Buttons.Google,
                                        onPressed: () =>
                                            context.read<SignInFormBloc>().add(
                                                  const SignInFormEvent
                                                      .signInWithGooglePressed(),
                                                ),
                                      ),
                                      SignInButton(
                                        Buttons.Apple,
                                        mini: true,
                                        onPressed: () =>
                                            context.read<SignInFormBloc>().add(
                                                  const SignInFormEvent
                                                      .signInWithApplePressed(),
                                                ),
                                      ),
                                    ],
                                  ),
                                  SignInButton(
                                    Buttons.FacebookNew,
                                    onPressed: () =>
                                        context.read<SignInFormBloc>().add(
                                              const SignInFormEvent
                                                  .signInWithFacebookPressed(),
                                            ),
                                  ),
                                ],
                              ),
                              const Spacer(
                                flex: 10,
                              ),
                              LinkButton(
                                text: LocaleKeys.signUpNow.tr(),
                                onPressed: () {
                                  pageController.animateToPage(1,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn);
                                },
                              ),
                              const Spacer(
                                flex: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: responsiveDouble(
                            context: context,
                            mobile: ResponsiveDouble(
                                normal: 24, large: 32, extraLarge: 64),
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
