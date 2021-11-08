import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/sign_in/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  late MockAuthFacade mockAuthFacade;

  setUp(() {
    mockAuthFacade = MockAuthFacade();
  });

  group('EmailChanged', () {
    blocTest(
      'emits [XXX] when YYY',
      build: () => ForgotPasswordBloc(mockAuthFacade),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.emailChanged(emailString: 'abcd')),
      expect: () => [],
    );
  });

  group('ConfirmPressed', () {});
}
