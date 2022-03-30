import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class MockForgotPasswordBloc
    extends MockBloc<ForgotPasswordEvent, ForgotPasswordState>
    implements ForgotPasswordBloc {}
