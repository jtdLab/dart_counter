// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:cloud_functions/cloud_functions.dart' as _i6;
import 'package:dart_client/dart_client.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i26;

import 'application/core/auth/auth_bloc.dart' as _i29;
import 'application/core/friends/friends_bloc.dart' as _i35;
import 'application/core/invitations/invitations_bloc.dart' as _i22;
import 'application/core/play/play_bloc.dart' as _i44;
import 'application/core/user/user_bloc.dart' as _i28;
import 'application/create_game/create_game_bloc.dart' as _i48;
import 'application/friends/search_user/search_user_bloc.dart' as _i23;
import 'application/game_history/game_history_bloc.dart' as _i36;
import 'application/home/home_bloc.dart' as _i49;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i55;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i56;
import 'application/in_game/in_game_bloc.dart' as _i50;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i52;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i53;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i54;
import 'application/in_game/stats/stats_bloc.dart' as _i27;
import 'application/invitations/invitations_bloc.dart' as _i51;
import 'application/post_game/post_game_bloc.dart' as _i45;
import 'application/profile/profile_bloc.dart' as _i46;
import 'application/settings/change_email/change_email_bloc.dart' as _i30;
import 'application/settings/change_password/change_password_bloc.dart' as _i31;
import 'application/settings/change_username/change_username_bloc.dart' as _i32;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i33;
import 'application/settings/settings_bloc.dart' as _i47;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i34;
import 'application/sign_in/sign_in_bloc.dart' as _i24;
import 'application/sign_up/sign_up_bloc.dart' as _i25;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/friend/i_friend_facade.dart' as _i11;
import 'domain/game_history/i_game_history_facade.dart' as _i13;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i16;
import 'domain/play/i_play_offline_facade.dart' as _i18;
import 'domain/play/i_play_online_facade.dart' as _i40;
import 'domain/user/i_user_facade.dart' as _i20;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i37;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i58;
import 'infrastructure/core/jtd_injectable_module.dart' as _i57;
import 'infrastructure/friend/friend_facade.dart' as _i38;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i12;
import 'infrastructure/game_history/game_history_facade.dart' as _i15;
import 'infrastructure/game_history/mocked_game_history_facade.dart' as _i14;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i39;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i17;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i41;
import 'infrastructure/play/play_offline_facade.dart' as _i19;
import 'infrastructure/play/play_online_facade.dart' as _i42;
import 'infrastructure/user/mocked_user_facade.dart' as _i21;
import 'infrastructure/user/user_facade.dart' as _i43;

const String _dev = 'dev';
const String _test = 'test';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final jtdInjectableModule = _$JtdInjectableModule();
  final fireBaseInjectableModule = _$FireBaseInjectableModule();
  gh.lazySingleton<_i3.DartClient>(() => jtdInjectableModule.dartClient);
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
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i11.IFriendFacade>(
      () => _i12.MockedFriendFacade(get<_i9.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IGameHistoryFacade>(
      () => _i14.MockedGameHistoryFacade(get<_i9.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IGameHistoryFacade>(
      () => _i15.GameHistoryFacade(get<_i5.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i17.MockedGameInvitationFacade(get<_i9.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i18.IPlayOfflineFacade>(() => _i19.PlayOfflineFacade(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i20.IUserFacade>(
      () => _i21.MockedUserFacade(get<_i9.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i22.InvitationsBloc>(
      () => _i22.InvitationsBloc(get<_i16.IGameInvitationFacade>()));
  gh.lazySingleton<_i23.SearchUserBloc>(
      () => _i23.SearchUserBloc(get<_i11.IFriendFacade>()));
  gh.lazySingleton<_i24.SignInBloc>(
      () => _i24.SignInBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i25.SignUpBloc>(
      () => _i25.SignUpBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i26.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i27.StatsBloc>(() => _i27.StatsBloc());
  gh.lazySingleton<_i28.UserBloc>(() => _i28.UserBloc(get<_i20.IUserFacade>()));
  gh.lazySingleton<_i29.AuthBloc>(() => _i29.AuthBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i30.ChangeEmailBloc>(
      () => _i30.ChangeEmailBloc(get<_i20.IUserFacade>()));
  gh.lazySingleton<_i31.ChangePasswordBloc>(
      () => _i31.ChangePasswordBloc(get<_i20.IUserFacade>()));
  gh.lazySingleton<_i32.ChangeUsernameBloc>(
      () => _i32.ChangeUsernameBloc(get<_i20.IUserFacade>()));
  gh.lazySingleton<_i33.EditProfileImageBloc>(
      () => _i33.EditProfileImageBloc(get<_i20.IUserFacade>()));
  gh.lazySingleton<_i34.ForgotPasswordBloc>(
      () => _i34.ForgotPasswordBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i35.FriendsBloc>(
      () => _i35.FriendsBloc(get<_i11.IFriendFacade>()));
  gh.lazySingleton<_i36.GameHistoryBloc>(() => _i36.GameHistoryBloc(
      get<_i28.UserBloc>(), get<_i13.IGameHistoryFacade>()));
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i37.FirebaseAuthFacade(get<_i4.FirebaseAuth>(),
          get<_i8.GoogleSignIn>(), get<_i26.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i11.IFriendFacade>(
      () => _i38.FriendFacade(get<_i20.IUserFacade>(),
          get<_i5.FirebaseFirestore>(), get<_i26.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i39.GameInvitationFacade(get<_i5.FirebaseFirestore>(),
          get<_i26.SocialClient>(), get<_i3.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i40.IPlayOnlineFacade>(
      () => _i41.MockedPlayOnlineFacade(get<_i20.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i40.IPlayOnlineFacade>(
      () =>
          _i42.PlayOnlineFacade(get<_i3.DartClient>(), get<_i20.IUserFacade>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i20.IUserFacade>(
      () => _i43.UserFacade(
          get<_i5.FirebaseFirestore>(),
          get<_i7.FirebaseStorage>(),
          get<_i4.FirebaseAuth>(),
          get<_i26.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i44.PlayBloc>(() => _i44.PlayBloc(
      get<_i18.IPlayOfflineFacade>(), get<_i40.IPlayOnlineFacade>()));
  gh.lazySingleton<_i45.PostGameBloc>(
      () => _i45.PostGameBloc(get<_i44.PlayBloc>()));
  gh.factory<_i46.ProfileBloc>(() => _i46.ProfileBloc(get<_i28.UserBloc>()));
  gh.factory<_i47.SettingsBloc>(
      () => _i47.SettingsBloc(get<_i9.IAuthFacade>(), get<_i28.UserBloc>()));
  gh.lazySingleton<_i48.CreateGameBloc>(
      () => _i48.CreateGameBloc(get<_i44.PlayBloc>(), get<_i35.FriendsBloc>()));
  gh.lazySingleton<_i49.HomeBloc>(() => _i49.HomeBloc(
      get<_i28.UserBloc>(),
      get<_i22.InvitationsBloc>(),
      get<_i35.FriendsBloc>(),
      get<_i44.PlayBloc>()));
  gh.lazySingleton<_i50.InGameBloc>(
      () => _i50.InGameBloc(get<_i44.PlayBloc>()));
  gh.factory<_i51.InvitationsBloc>(() => _i51.InvitationsBloc(
      get<_i16.IGameInvitationFacade>(),
      get<_i40.IPlayOnlineFacade>(),
      get<_i44.PlayBloc>(),
      get<_i22.InvitationsBloc>()));
  gh.lazySingleton<_i52.OpticalInputAreaBloc>(
      () => _i52.OpticalInputAreaBloc(get<_i50.InGameBloc>()));
  gh.lazySingleton<_i53.SpeechInputAreaBloc>(
      () => _i53.SpeechInputAreaBloc(get<_i50.InGameBloc>()));
  gh.lazySingleton<_i54.StandardInputAreaBloc>(
      () => _i54.StandardInputAreaBloc(get<_i50.InGameBloc>()));
  gh.lazySingleton<_i55.CheckoutDetailsBloc>(
      () => _i55.CheckoutDetailsBloc(get<_i50.InGameBloc>()));
  gh.lazySingleton<_i56.DetailedInputAreaBloc>(
      () => _i56.DetailedInputAreaBloc(get<_i50.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i57.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i58.FireBaseInjectableModule {}
