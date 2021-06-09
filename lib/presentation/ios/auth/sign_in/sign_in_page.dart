import 'package:dart_counter/application/auth/sign_in/sign_in_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  final PageController pageController;

  const SignInPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SignInForm(
          pageController: pageController,
        ),
      ),
    );
  }
}
