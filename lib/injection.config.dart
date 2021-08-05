// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:cloud_functions/cloud_functions.dart' as _i6;
import 'package:dart_client/dart_client.dart' as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i3;

import 'application/core/auth/auth_bloc.dart' as _i35;
import 'application/core/friends/friends_bloc.dart' as _i42;
import 'application/core/invitations/invitations_bloc.dart' as _i26;
import 'application/core/play/play_bloc.dart' as _i28;
import 'application/core/user/user_bloc.dart' as _i34;
import 'application/create_game/create_game_bloc.dart' as _i39;
import 'application/friends/search_user/search_user_bloc.dart' as _i30;
import 'application/game_history/game_history_bloc.dart' as _i43;
import 'application/home/home_bloc.dart' as _i44;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i53;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i54;
import 'application/in_game/in_game_bloc.dart' as _i47;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i48;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i51;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i52;
import 'application/in_game/stats/stats_bloc.dart' as _i33;
import 'application/invitations/invitations_bloc.dart' as _i27;
import 'application/post_game/post_game_bloc.dart' as _i29;
import 'application/profile/profile_bloc.dart' as _i49;
import 'application/settings/change_email/change_email_bloc.dart' as _i36;
import 'application/settings/change_password/change_password_bloc.dart' as _i37;
import 'application/settings/change_username/change_username_bloc.dart' as _i38;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i40;
import 'application/settings/settings_bloc.dart' as _i50;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i41;
import 'application/sign_in/sign_in_bloc.dart' as _i31;
import 'application/sign_up/sign_up_bloc.dart' as _i32;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/friend/i_friend_facade.dart' as _i13;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i16;
import 'domain/play/i_play_offline_facade.dart' as _i19;
import 'domain/play/i_play_online_facade.dart' as _i21;
import 'domain/user/i_user_facade.dart' as _i23;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i56;
import 'infrastructure/core/jtd_injectable_module.dart' as _i55;
import 'infrastructure/friend/friend_facade.dart' as _i15;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i14;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i18;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i17;
import 'infrastructure/play/mocked_play_offline_facade.dart' as _i45;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i46;
import 'infrastructure/play/play_offline_facade.dart' as _i20;
import 'infrastructure/play/play_online_facade.dart' as _i22;
import 'infrastructure/user/mocked_user_facade.dart' as _i24;
import 'infrastructure/user/user_facade.dart' as _i25;

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
  gh.lazySingleton<_i3.AbstractSocialClient>(
      () => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i6.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i7.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.FirebaseAuthFacade(get<_i4.FirebaseAuth>(),
          get<_i8.GoogleSignIn>(), get<_i5.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i9.IAuthFacade>(() => _i11.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i12.IDartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i13.IFriendFacade>(() => _i14.MockedFriendFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IFriendFacade>(
      () => _i15.FriendFacade(
          get<_i5.FirebaseFirestore>(), get<_i3.AbstractSocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i17.MockedGameInvitationFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i18.GameInvitationFacade(get<_i5.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i19.IPlayOfflineFacade>(() => _i20.PlayOfflineFacade(),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IPlayOnlineFacade>(
      () => _i22.PlayOnlineFacade(get<_i12.IDartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i23.IUserFacade>(() => _i24.MockedUserFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IUserFacade>(
      () => _i25.UserFacade(
          get<_i5.FirebaseFirestore>(),
          get<_i7.FirebaseStorage>(),
          get<_i9.IAuthFacade>(),
          get<_i6.FirebaseFunctions>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i26.InvitationsBloc>(
      () => _i26.InvitationsBloc(get<_i16.IGameInvitationFacade>()));
  gh.factory<_i27.InvitationsBloc>(() => _i27.InvitationsBloc(
      get<_i16.IGameInvitationFacade>(), get<_i26.InvitationsBloc>()));
  gh.lazySingleton<_i28.PlayBloc>(() => _i28.PlayBloc(
      get<_i19.IPlayOfflineFacade>(), get<_i21.IPlayOnlineFacade>()));
  gh.lazySingleton<_i29.PostGameBloc>(
      () => _i29.PostGameBloc(get<_i28.PlayBloc>()));
  gh.lazySingleton<_i30.SearchUserBloc>(
      () => _i30.SearchUserBloc(get<_i13.IFriendFacade>()));
  gh.lazySingleton<_i31.SignInBloc>(
      () => _i31.SignInBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i32.SignUpBloc>(
      () => _i32.SignUpBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i33.StatsBloc>(() => _i33.StatsBloc());
  gh.lazySingleton<_i34.UserBloc>(() => _i34.UserBloc(get<_i23.IUserFacade>()));
  gh.lazySingleton<_i35.AuthBloc>(() => _i35.AuthBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i36.ChangeEmailBloc>(
      () => _i36.ChangeEmailBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i37.ChangePasswordBloc>(
      () => _i37.ChangePasswordBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i38.ChangeUsernameBloc>(
      () => _i38.ChangeUsernameBloc(get<_i23.IUserFacade>()));
  gh.lazySingleton<_i39.CreateGameBloc>(
      () => _i39.CreateGameBloc(get<_i28.PlayBloc>()));
  gh.lazySingleton<_i40.EditProfileImageBloc>(
      () => _i40.EditProfileImageBloc(get<_i23.IUserFacade>()));
  gh.lazySingleton<_i41.ForgotPasswordBloc>(
      () => _i41.ForgotPasswordBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i42.FriendsBloc>(
      () => _i42.FriendsBloc(get<_i13.IFriendFacade>()));
  gh.lazySingleton<_i43.GameHistoryBloc>(
      () => _i43.GameHistoryBloc(get<_i34.UserBloc>()));
  gh.lazySingleton<_i44.HomeBloc>(() => _i44.HomeBloc(
      get<_i16.IGameInvitationFacade>(),
      get<_i13.IFriendFacade>(),
      get<_i34.UserBloc>(),
      get<_i28.PlayBloc>(),
      get<_i26.InvitationsBloc>(),
      get<_i42.FriendsBloc>()));
  gh.lazySingleton<_i19.IPlayOfflineFacade>(
      () => _i45.MockedPlayOfflineFacade(get<_i23.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i21.IPlayOnlineFacade>(
      () => _i46.MockedPlayOnlineFacade(get<_i23.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i47.InGameBloc>(
      () => _i47.InGameBloc(get<_i28.PlayBloc>()));
  gh.lazySingleton<_i48.OpticalInputAreaBloc>(
      () => _i48.OpticalInputAreaBloc(get<_i47.InGameBloc>()));
  gh.factory<_i49.ProfileBloc>(() => _i49.ProfileBloc(get<_i34.UserBloc>()));
  gh.factory<_i50.SettingsBloc>(
      () => _i50.SettingsBloc(get<_i9.IAuthFacade>(), get<_i34.UserBloc>()));
  gh.lazySingleton<_i51.SpeechInputAreaBloc>(
      () => _i51.SpeechInputAreaBloc(get<_i47.InGameBloc>()));
  gh.lazySingleton<_i52.StandardInputAreaBloc>(
      () => _i52.StandardInputAreaBloc(get<_i47.InGameBloc>()));
  gh.lazySingleton<_i53.CheckoutDetailsBloc>(
      () => _i53.CheckoutDetailsBloc(get<_i47.InGameBloc>()));
  gh.lazySingleton<_i54.DetailedInputAreaBloc>(
      () => _i54.DetailedInputAreaBloc(get<_i47.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i55.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i56.FireBaseInjectableModule {}
