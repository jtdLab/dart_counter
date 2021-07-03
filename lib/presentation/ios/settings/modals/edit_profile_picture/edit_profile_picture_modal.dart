import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/settings/edit_profile/edit_profile_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:flutter/material.dart' show Colors;

// TODO refactor
class EditProfilePictureModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<EditProfileBloc>(),
        ),
      ],
      child: Builder(
        builder: (context) => SafeArea(
          top: false,
          bottom: false,
          child: CupertinoPageScaffold(
            backgroundColor: Colors.white70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 30,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  
                  AppPrimaryButton(
                    text: LocaleKeys.deletePhoto.tr().toUpperCase(),
                    color: AppColors.red,
                    onPressed: () {
                      context
                          .read<EditProfileBloc>()
                          .add(const EditProfileEvent.deletePressed());
                      context.router.pop();
                    },
                  ),
                  const AppSpacer.normal(),
                  AppPrimaryButton(
                    text: LocaleKeys.takePhoto.tr().toUpperCase(),
                    onPressed: () {
                      context
                          .read<EditProfileBloc>()
                          .add(const EditProfileEvent.takePressed());
                      context.router.pop();
                    },
                  ),
                  const AppSpacer.normal(),
                  AppPrimaryButton(
                    text: LocaleKeys.choosePhoto.tr().toUpperCase(),
                    onPressed: () {
                      context
                          .read<EditProfileBloc>()
                          .add(const EditProfileEvent.choosePressed());
                      context.router.pop();
                    },
                  ),
                  const AppSpacer.normal(),
                  AppPrimaryButton(
                    text: LocaleKeys.done.tr().toUpperCase(),
                    onPressed: () => context.router.pop(),
                  ),
                  SizedBox(
                    height: 50,
                    child: Container(
                      color: Colors.transparent,
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
