import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class ChangeEmailIdle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CupertinoPageScaffold(
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
                      mobile: ResponsiveDouble(
                          small: 16, normal: 24, large: 32, extraLarge: 64),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: responsiveDouble(
                            context: context,
                            mobile: ResponsiveDouble(
                                small: 50,
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
                          flex: 20,
                        ),
                        Text(
                          LocaleKeys.changeEmail.tr().toUpperCase(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(
                          flex: 40,
                        ),
                        AppTextField(
                          placeholder:
                              LocaleKeys.newEmailAddress.tr().toUpperCase(),
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.unfocus(),
                          onChanged: (emailString) {},
                        ),
                        SizedBox(
                          height: responsiveDouble(
                            context: context,
                            mobile: ResponsiveDouble(
                                small: 8,
                                normal: 12,
                                large: 16,
                                extraLarge: 20),
                          ),
                        ),
                        AppPrimaryButton(
                          text: LocaleKeys.confirm.tr(),
                          onPressed: () {},
                        ),
                        const Spacer(
                          flex: 50,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: responsiveDouble(
                      context: context,
                      mobile: ResponsiveDouble(
                          small: 16, normal: 24, large: 32, extraLarge: 64),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
