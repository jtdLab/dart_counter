// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ForgotPasswordInitialPage extends StatelessWidget {
  const ForgotPasswordInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO move bloc listener into the view + test
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (previous, current) =>
          current is ForgotPasswordSubmitSuccess ||
          current is ForgotPasswordSubmitFailure,
      listener: (context, state) => state.mapOrNull(
        submitSuccess: (_) => _onSubmitSuccess(context),
        submitFailure: (failure) => _onSubmitFailure(context, failure),
      ),
      child: const ForgotPasswordInitialView(),
    );
  }

  void _onSubmitSuccess(BuildContext context) {
    context.router.replace(const ForgotPasswordSuccessPageRoute());
  }

  void _onSubmitFailure(
    BuildContext context,
    ForgotPasswordSubmitFailure failure,
  ) {
    failure.authFailure.maybeWhen(
      invalidEmail: () => context.showToast(
        context.l10n.errorInvalidEmailAddress.toUpperCase(),
      ),
      // TODO display other errors better
      orElse: () => context.showToast(
        context.l10n.errorUnexpected.toUpperCase(),
      ),
    );
  }
}
