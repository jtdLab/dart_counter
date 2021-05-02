import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_textfield.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/loading.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:dart_counter/presentation/ios/sign_in/widgets/social_media_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              invalidUsernameAndPasswordCombination: () => showToast(
                  LocaleKeys.errorInvalidUsernameAndPasswordCombination.tr()),
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
                                flex: 44,
                              ),
                              AppTextField(
                                placeholder: LocaleKeys.username.tr(),
                                textInputAction: TextInputAction.next,
                                onEditingComplete: () => node.nextFocus(),
                                onChanged: (usernameString) =>
                                    context.read<SignInFormBloc>().add(
                                          SignInFormEvent.usernameChanged(
                                              usernameString),
                                        ),
                              ),
                              SizedBox(
                                height: responsiveDouble(
                                    context: context, mobile: [12, 16, 20]),
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
                                    context: context, mobile: [16, 20, 24]),
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SocialMediaButton(
                                    type: Type.facebook,
                                    onPressed: () =>
                                        showCupertinoModalBottomSheet(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoPageScaffold(
                                        // TODO animation off background like native is missing
                                        child: Center(
                                          child: Text('test modal facebook'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SocialMediaButton(
                                    type: Type.google,
                                    onPressed: () =>
                                        context.read<SignInFormBloc>().add(
                                              const SignInFormEvent
                                                  .signInWithGooglePressed(),
                                            ),
                                  ),
                                  SocialMediaButton(
                                    type: Type.apple,
                                    onPressed: () =>
                                        showCupertinoModalBottomSheet(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoPageScaffold(
                                        // TODO animation off background like native is missing
                                        child: Center(
                                          child: Text('test modal apple'),
                                        ),
                                      ),
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
