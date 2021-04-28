import 'package:dart_counter/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  final PageController pageController;

  const SignUpPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: SignUpForm(
          pageController: pageController,
        ),
      ),
    );
  }
}
