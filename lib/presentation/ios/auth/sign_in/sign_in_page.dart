import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/auth/sign_in/sign_in_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  final PageController pageController;

  const SignInPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          state.authFailureOrSuccess?.fold(
            (failure) => failure.maybeWhen(
              serverError: () => showToast(LocaleKeys.errorServer.tr()),
              invalidEmailAndPasswordCombination: () => showToast(
                  LocaleKeys.errorInvalidEmailAndPasswordCombination.tr()),
              orElse: () {},
            ),
            (_) {
              final dataLoaded = state.userReceived &&
                  state.friendRequestsReceived &&
                  state.invitationsReceived;
              print(dataLoaded);

              if (dataLoaded) {
                context.router.replace(const HomePageRoute());
              }
            },
          );
        },
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SignInWidget(
            pageController: pageController,
          ),
        ),
      ),
    );
  }
}
