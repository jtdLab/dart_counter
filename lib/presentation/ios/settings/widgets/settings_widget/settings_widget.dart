import 'package:dart_counter/application/auth/auth_bloc.dart';
import 'package:dart_counter/application/settings/settings_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            const Spacer(),
            LanguageCard(),
            const Spacer(),
            AccountCard(),
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
