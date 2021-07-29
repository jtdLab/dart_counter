// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:cloud_functions/cloud_functions.dart' as _i7;
import 'package:dart_client/dart_client.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i4;

import 'application/core/auth/auth_bloc.dart' as _i31;
import 'application/core/friends/friends_bloc.dart' as _i37;
import 'application/core/game/game_bloc.dart' as _i38;
import 'application/core/invitations/invitations_bloc.dart' as _i24;
import 'application/core/user/user_bloc.dart' as _i30;
import 'application/create_game/create_game_bloc.dart' as _i50;
import 'application/friends/search_user/search_user_bloc.dart' as _i26;
import 'application/game_history/game_history_bloc.dart' as _i39;
import 'application/home/home_bloc.dart' as _i40;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i49;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i51;
import 'application/in_game/in_game_bloc.dart' as _i42;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i43;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i47;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i48;
import 'application/in_game/stats/stats_bloc.dart' as _i29;
import 'application/invitations/invitations_bloc.dart' as _i25;
import 'application/post_game/post_game_bloc.dart' as _i44;
import 'application/profile/profile_bloc.dart' as _i45;
import 'application/settings/change_email/change_email_bloc.dart' as _i32;
import 'application/settings/change_password/change_password_bloc.dart' as _i33;
import 'application/settings/change_username/change_username_bloc.dart' as _i34;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i35;
import 'application/settings/settings_bloc.dart' as _i46;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i36;
import 'application/sign_in/sign_in_bloc.dart' as _i27;
import 'application/sign_up/sign_up_bloc.dart' as _i28;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/friend/i_friend_facade.dart' as _i13;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i16;
import 'domain/play/i_play_facade.dart' as _i19;
import 'domain/user/i_user_facade.dart' as _i21;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i53;
import 'infrastructure/core/jtd_injectable_module.dart' as _i52;
import 'infrastructure/friend/friend_facade.dart' as _i15;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i14;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i18;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i17;
import 'infrastructure/play/mocked_play_faced.dart' as _i41;
import 'infrastructure/play/play_facade.dart' as _i20;
import 'infrastructure/user/mocked_user_facade.dart' as _i23;
import 'infrastructure/user/user_facade.dart' as _i22;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final jtdInjectableModule = _$JtdInjectableModule();
  final fireBaseInjectableModule = _$FireBaseInjectableModule();
  gh.lazySingleton<_i3.AbstractDartClient>(
      () => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i4.AbstractSocialClient>(
      () => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i7.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i8.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i9.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i10.IAuthFacade>(
      () => _i11.FirebaseAuthFacade(get<_i5.FirebaseAuth>(),
          get<_i9.GoogleSignIn>(), get<_i6.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i10.IAuthFacade>(() => _i12.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IFriendFacade>(() => _i14.MockedFriendFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IFriendFacade>(
      () => _i15.FriendFacade(
          get<_i6.FirebaseFirestore>(), get<_i4.AbstractSocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i17.MockedGameInvitationFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i18.GameInvitationFacade(get<_i6.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i19.IPlayFacade>(
      () => _i20.PlayFacade(get<_i3.AbstractDartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IUserFacade>(
      () => _i22.UserFacade(
          get<_i6.FirebaseFirestore>(),
          get<_i8.FirebaseStorage>(),
          get<_i10.IAuthFacade>(),
          get<_i7.FirebaseFunctions>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IUserFacade>(() => _i23.MockedUserFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i24.InvitationsBloc>(
      () => _i24.InvitationsBloc(get<_i16.IGameInvitationFacade>()));
  gh.factory<_i25.InvitationsBloc>(() => _i25.InvitationsBloc(
      get<_i16.IGameInvitationFacade>(), get<_i24.InvitationsBloc>()));
  gh.lazySingleton<_i26.SearchUserBloc>(
      () => _i26.SearchUserBloc(get<_i13.IFriendFacade>()));
  gh.lazySingleton<_i27.SignInBloc>(
      () => _i27.SignInBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i28.SignUpBloc>(
      () => _i28.SignUpBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i29.StatsBloc>(
      () => _i29.StatsBloc(get<_i19.IPlayFacade>()));
  gh.lazySingleton<_i30.UserBloc>(() => _i30.UserBloc(get<_i21.IUserFacade>()));
  gh.lazySingleton<_i31.AuthBloc>(() => _i31.AuthBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i32.ChangeEmailBloc>(
      () => _i32.ChangeEmailBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i33.ChangePasswordBloc>(
      () => _i33.ChangePasswordBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i34.ChangeUsernameBloc>(
      () => _i34.ChangeUsernameBloc(get<_i21.IUserFacade>()));
  gh.lazySingleton<_i35.EditProfileImageBloc>(
      () => _i35.EditProfileImageBloc(get<_i21.IUserFacade>()));
  gh.lazySingleton<_i36.ForgotPasswordBloc>(
      () => _i36.ForgotPasswordBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i37.FriendsBloc>(
      () => _i37.FriendsBloc(get<_i13.IFriendFacade>()));
  gh.lazySingleton<_i38.GameBloc>(() => _i38.GameBloc(get<_i19.IPlayFacade>()));
  gh.lazySingleton<_i39.GameHistoryBloc>(
      () => _i39.GameHistoryBloc(get<_i30.UserBloc>()));
  gh.lazySingleton<_i40.HomeBloc>(() => _i40.HomeBloc(
      get<_i16.IGameInvitationFacade>(),
      get<_i13.IFriendFacade>(),
      get<_i19.IPlayFacade>(),
      get<_i30.UserBloc>(),
      get<_i38.GameBloc>(),
      get<_i24.InvitationsBloc>(),
      get<_i37.FriendsBloc>()));
  gh.lazySingleton<_i19.IPlayFacade>(
      () => _i41.MockedPlayFacade(get<_i21.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i42.InGameBloc>(
      () => _i42.InGameBloc(get<_i19.IPlayFacade>(), get<_i38.GameBloc>()));
  gh.lazySingleton<_i43.OpticalInputAreaBloc>(() => _i43.OpticalInputAreaBloc(
      get<_i19.IPlayFacade>(), get<_i42.InGameBloc>()));
  gh.lazySingleton<_i44.PostGameBloc>(
      () => _i44.PostGameBloc(get<_i38.GameBloc>()));
  gh.factory<_i45.ProfileBloc>(() => _i45.ProfileBloc(get<_i30.UserBloc>()));
  gh.factory<_i46.SettingsBloc>(
      () => _i46.SettingsBloc(get<_i10.IAuthFacade>(), get<_i30.UserBloc>()));
  gh.lazySingleton<_i47.SpeechInputAreaBloc>(() => _i47.SpeechInputAreaBloc(
      get<_i19.IPlayFacade>(), get<_i42.InGameBloc>()));
  gh.lazySingleton<_i48.StandardInputAreaBloc>(() => _i48.StandardInputAreaBloc(
      get<_i19.IPlayFacade>(), get<_i42.InGameBloc>()));
  gh.lazySingleton<_i49.CheckoutDetailsBloc>(() => _i49.CheckoutDetailsBloc(
      get<_i19.IPlayFacade>(), get<_i42.InGameBloc>()));
  gh.lazySingleton<_i50.CreateGameBloc>(
      () => _i50.CreateGameBloc(get<_i19.IPlayFacade>(), get<_i38.GameBloc>()));
  gh.lazySingleton<_i51.DetailedInputAreaBloc>(() => _i51.DetailedInputAreaBloc(
      get<_i19.IPlayFacade>(), get<_i42.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i52.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i53.FireBaseInjectableModule {}
