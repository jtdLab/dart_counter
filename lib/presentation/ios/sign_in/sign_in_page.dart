import 'package:dart_counter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:dart_counter/injection.dart';

import 'package:dart_counter/presentation/ios/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  final PageController pageController;

  const SignInPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: CupertinoPageScaffold(
          child: SafeArea(
            child: SignInForm(
              pageController: pageController,
            ),
          ),
        ),
      ),
    );
  }
}
