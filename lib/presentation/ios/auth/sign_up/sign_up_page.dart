import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/auth/sign_up/sign_up_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  final PageController pageController;

  const SignUpPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          state.authFailureOrSuccess?.fold(
            (failure) => failure.maybeWhen(
              serverError: () => showToast(LocaleKeys.errorServer.tr()),
              orElse: () {},
            ),
            (_) => context.router.replace(const HomePageRoute()),
          );
        },
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SignUpWidget(
            pageController: pageController,
          ),
        ),
      ),
    );
  }
}
