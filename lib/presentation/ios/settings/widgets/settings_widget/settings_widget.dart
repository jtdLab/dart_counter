import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/settings/settings_bloc.dart';

import 'package:dart_counter/presentation/ios/settings/modals/modals.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter/material.dart' show Colors;
import 'widgets/widgets.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            CupertinoButton(
              onPressed: () {
                showCupertinoModalBottomSheet(
                  backgroundColor: Colors.white70,
                  context: context,
                  builder: (context) => EditProfilePictureModal(),
                );
              },
              child: ProfileImageDisplayer(
                photoUrl: photoUrl,
              ),
            ),
            const Spacer(),
            LanguageCard(),
            const Spacer(),
            AccountCard(),
            const Spacer(),
            DartsGerCard(),
            const Spacer(),
            AppPrimaryButton(
              text: LocaleKeys.signOut.tr(),
              color: AppColors.red,
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
          ],
        );
      },
    );
  }
}
