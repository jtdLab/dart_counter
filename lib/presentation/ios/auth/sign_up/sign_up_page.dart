
import 'package:dart_counter/application/auth/sign_up/sign_up_bloc.dart';
import 'package:dart_counter/injection.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  final PageController pageController;

  const SignUpPage({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SignUpForm(
          pageController: pageController,
        ),
      ),
    );
  }
}
