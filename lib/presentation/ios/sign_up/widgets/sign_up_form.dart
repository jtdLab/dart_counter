import 'package:dart_counter/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_textfield.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

class SignUpForm extends StatelessWidget {
  final PageController pageController;

  const SignUpForm({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {},
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
                            flex: 24,
                          ),
                          AppTextField(placeholder: LocaleKeys.email.tr()),
                          const Spacer(
                            flex: 6,
                          ),
                          AppTextField(
                            placeholder: LocaleKeys.username.tr(),
                          ),
                          const Spacer(flex: 6),
                          AppTextField(
                            placeholder: LocaleKeys.password.tr(),
                          ),
                          const Spacer(
                            flex: 6,
                          ),
                          AppTextField(
                            placeholder: LocaleKeys.passwordAgain.tr(),
                          ),
                          Spacer(
                            flex: 10,
                          ),
                          PrimaryButton(
                            text: LocaleKeys.signUp.tr(),
                            onPressed: () {},
                          ),
                          const Spacer(
                            flex: 8,
                          ),
                          LinkButton(
                            text: LocaleKeys.signIn.tr(),
                            onPressed: () {
                              pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                          ),
                          const Spacer(
                            flex: 40,
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
}
