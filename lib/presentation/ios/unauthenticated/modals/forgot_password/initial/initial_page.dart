// CORE
import 'package:dart_counter/presentation/core/app_toast.dart';
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
    final appToast = AppToast.getIt();

    failure.authFailure.maybeWhen(
      invalidEmail: () => appToast.show(
        context.l10n.errorInvalidEmailAddress.toUpperCase(),
      ),
      // TODO display other errors better
      orElse: () => appToast.show(
        context.l10n.errorUnexpected.toUpperCase(),
      ),
    );
  }
}
