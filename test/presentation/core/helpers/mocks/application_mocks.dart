import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}
