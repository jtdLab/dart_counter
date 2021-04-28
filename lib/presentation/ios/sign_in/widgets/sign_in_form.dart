import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_textfield.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:dart_counter/presentation/ios/sign_in/widgets/social_media_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

class SignInForm extends StatelessWidget {
  final PageController pageController;

  const SignInForm({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess?.fold(
          (failure) {
            showToast(
              failure.map(
                  cancelledByUser: (_) => LocaleKeys.errorCancelledByUser.tr(),
                  serverError: (_) => LocaleKeys.errorServer.tr(),
                  emailAlreadyInUse: (_) =>
                      LocaleKeys.errorEmailAlreadyInUse.tr(),
                  invalidEmailAndPasswordCombination: (_) =>
                      LocaleKeys.errorInvalidEmailAndPasswordCombination.tr()),
            );
          },
          (_) {
            context.router.replace(const HomePageRoute());
            context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: LayoutBuilder(
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
                            onChanged: (usernameString) =>
                                context.read<SignInFormBloc>().add(
                                      SignInFormEvent.usernameChanged(
                                          usernameString),
                                    ),
                          ),
                          const Spacer(
                            flex: 6,
                          ),
                          AppTextField(
                            placeholder: LocaleKeys.password.tr(),
                            onChanged: (passwordString) =>
                                context.read<SignInFormBloc>().add(
                                      SignInFormEvent.passwordChanged(
                                          passwordString),
                                    ),
                          ),
                          const Spacer(
                            flex: 10,
                          ),
                          PrimaryButton(
                            text: LocaleKeys.signIn.tr(),
                            onPressed: () => context.read<SignInFormBloc>().add(
                                  const SignInFormEvent.signInPressed(),
                                ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(6.0, 0, 0, 0),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Builder(
                                builder: (context) => SocialMediaButton(
                                  type: Type.facebook,
                                  onPressed: () =>
                                      context.read<SignInFormBloc>().add(
                                            const SignInFormEvent
                                                .signInWithFacebookPressed(),
                                          ),
                                ),
                              ),
                              Builder(
                                builder: (context) => SocialMediaButton(
                                  type: Type.google,
                                  onPressed: () =>
                                      context.read<SignInFormBloc>().add(
                                            const SignInFormEvent
                                                .signInWithGooglePressed(),
                                          ),
                                ),
                              ),
                              Builder(
                                builder: (context) => SocialMediaButton(
                                  type: Type.instagram,
                                  onPressed: () =>
                                      context.read<SignInFormBloc>().add(
                                            const SignInFormEvent
                                                .signInWithInstagramPressed(),
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
                                  duration: const Duration(milliseconds: 500),
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
          ),
        );
      },
    );
  }

  void _showFullScreenModalBottomSheet(BuildContext context, Widget body) {
    /**
     * CupertinoScaffold.showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      backgroundColor: AppColors.transparent,
      builder: (context) => body,
    );
     */
  }
}
