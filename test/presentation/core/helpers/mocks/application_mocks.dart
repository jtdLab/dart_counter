import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/authenticated/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/application/unauthenticated/sign_in/sign_in_bloc.dart';
import 'package:dart_counter/application/unauthenticated/sign_up/sign_up_bloc.dart';

class MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {}

class MockForgotPasswordBloc
    extends MockBloc<ForgotPasswordEvent, ForgotPasswordState>
    implements ForgotPasswordBloc {}

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

class MockFriendsCubit extends MockCubit<FriendsState> implements FriendsCubit {
}

class MockGameInvitationsCubit extends MockCubit<GameInvitationsState>
    implements GameInvitationsCubit {}

class MockSignInBloc extends MockBloc<SignInEvent, SignInState>
    implements SignInBloc {}

class MockSignUpBloc extends MockBloc<SignUpEvent, SignUpState>
    implements SignUpBloc {}
