import 'package:dart_counter/application/auth/auth_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileImageDisplayer(),
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
  }
}
