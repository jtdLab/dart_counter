// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:cloud_functions/cloud_functions.dart' as _i9;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dart_client/dart_client.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i31;

import 'application/core/auth/auth_bloc.dart' as _i32;
import 'application/core/data_watcher/data_watcher_bloc.dart' as _i36;
import 'application/core/play/play_bloc.dart' as _i46;
import 'application/create_game/add_player/add_player_bloc.dart' as _i3;
import 'application/create_game/create_game_bloc.dart' as _i52;
import 'application/friends/friends_bloc.dart' as _i39;
import 'application/friends/more/more_bloc.dart' as _i28;
import 'application/friends/search_user/search_user_bloc.dart' as _i30;
import 'application/game_history/game_history_bloc.dart' as _i40;
import 'application/game_invitations/game_invitations_bloc.dart' as _i53;
import 'application/home/home_bloc.dart' as _i54;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i61;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i62;
import 'application/in_game/in_game_bloc.dart' as _i57;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i58;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i59;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i60;
import 'application/in_game/stats/stats_bloc.dart' as _i51;
import 'application/post_game/post_game_bloc.dart' as _i47;
import 'application/profile/profile_bloc.dart' as _i29;
import 'application/settings/change_email/change_email_bloc.dart' as _i33;
import 'application/settings/change_password/change_password_bloc.dart' as _i34;
import 'application/settings/change_username/change_username_bloc.dart' as _i35;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i37;
import 'application/settings/settings_bloc.dart' as _i48;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i38;
import 'application/sign_in/sign_in_bloc.dart' as _i49;
import 'application/sign_up/sign_up_bloc.dart' as _i50;
import 'domain/auth/i_auth_facade.dart' as _i12;
import 'domain/connectivity/i_connectivity_facade.dart' as _i14;
import 'domain/friend/i_friend_facade.dart' as _i17;
import 'domain/game_history/i_game_history_facade.dart' as _i19;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i22;
import 'domain/play/i_play_offline_facade.dart' as _i24;
import 'domain/play/i_play_online_facade.dart' as _i43;
import 'domain/user/i_user_facade.dart' as _i26;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i41;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i13;
import 'infrastructure/connectivity/connectivity_facade.dart' as _i16;
import 'infrastructure/connectivity/mocked_connectivity_facade.dart' as _i15;
import 'infrastructure/core/firebase_injectable_module.dart' as _i64;
import 'infrastructure/core/jtd_injectable_module.dart' as _i63;
import 'infrastructure/friend/friend_facade.dart' as _i55;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i18;
import 'infrastructure/game_history/game_history_facade.dart' as _i20;
import 'infrastructure/game_history/mocked_game_history_facade.dart' as _i21;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i42;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i23;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i44;
import 'infrastructure/play/play_offline_facade.dart' as _i25;
import 'infrastructure/play/play_online_facade.dart' as _i56;
import 'infrastructure/user/mocked_user_facade.dart' as _i27;
import 'infrastructure/user/user_facade.dart' as _i45;

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
  gh.lazySingleton<_i3.AddPlayerBloc>(() => _i3.AddPlayerBloc());
  gh.lazySingleton<_i4.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i5.DartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i6.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i7.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i8.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i9.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i10.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i11.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.lazySingleton<_i12.IAuthFacade>(() => _i13.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i14.IConnectivityFacade>(
      () => _i15.MockedConnectivityFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i14.IConnectivityFacade>(
      () => _i16.ConnectivityFacade(get<_i4.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i17.IFriendFacade>(
      () => _i18.MockedFriendFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i19.IGameHistoryFacade>(
      () => _i20.GameHistoryFacade(get<_i8.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i19.IGameHistoryFacade>(
      () => _i21.MockedGameHistoryFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i22.IGameInvitationFacade>(
      () => _i23.MockedGameInvitationFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i24.IPlayOfflineFacade>(() => _i25.PlayOfflineFacade(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i26.IUserFacade>(
      () => _i27.MockedUserFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i28.MoreBloc>(
      () => _i28.MoreBloc(get<_i17.IFriendFacade>()));
  gh.lazySingleton<_i29.ProfileBloc>(
      () => _i29.ProfileBloc(get<_i26.IUserFacade>()));
  gh.lazySingleton<_i30.SearchUserBloc>(
      () => _i30.SearchUserBloc(get<_i17.IFriendFacade>()));
  gh.lazySingleton<_i31.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i32.AuthBloc>(() => _i32.AuthBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i33.ChangeEmailBloc>(
      () => _i33.ChangeEmailBloc(get<_i26.IUserFacade>()));
  gh.lazySingleton<_i34.ChangePasswordBloc>(
      () => _i34.ChangePasswordBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i35.ChangeUsernameBloc>(
      () => _i35.ChangeUsernameBloc(get<_i26.IUserFacade>()));
  gh.lazySingleton<_i36.DataWatcherBloc>(() => _i36.DataWatcherBloc(
      get<_i26.IUserFacade>(),
      get<_i22.IGameInvitationFacade>(),
      get<_i17.IFriendFacade>(),
      get<_i32.AuthBloc>()));
  gh.lazySingleton<_i37.EditProfileImageBloc>(
      () => _i37.EditProfileImageBloc(get<_i26.IUserFacade>()));
  gh.lazySingleton<_i38.ForgotPasswordBloc>(
      () => _i38.ForgotPasswordBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i39.FriendsBloc>(() =>
      _i39.FriendsBloc(get<_i17.IFriendFacade>(), get<_i36.DataWatcherBloc>()));
  gh.lazySingleton<_i40.GameHistoryBloc>(() => _i40.GameHistoryBloc(
      get<_i26.IUserFacade>(), get<_i19.IGameHistoryFacade>()));
  gh.lazySingleton<_i12.IAuthFacade>(
      () => _i41.FirebaseAuthFacade(
          get<_i7.FirebaseAuth>(),
          get<_i11.GoogleSignIn>(),
          get<_i6.FacebookAuth>(),
          get<_i31.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i22.IGameInvitationFacade>(
      () => _i42.GameInvitationFacade(
          get<_i12.IAuthFacade>(),
          get<_i8.FirebaseFirestore>(),
          get<_i31.SocialClient>(),
          get<_i5.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i43.IPlayOnlineFacade>(
      () => _i44.MockedPlayOnlineFacade(get<_i26.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i26.IUserFacade>(
      () => _i45.UserFacade(
          get<_i8.FirebaseFirestore>(),
          get<_i10.FirebaseStorage>(),
          get<_i12.IAuthFacade>(),
          get<_i31.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i46.PlayBloc>(() => _i46.PlayBloc(
      get<_i24.IPlayOfflineFacade>(), get<_i43.IPlayOnlineFacade>()));
  gh.lazySingleton<_i47.PostGameBloc>(
      () => _i47.PostGameBloc(get<_i46.PlayBloc>()));
  gh.lazySingleton<_i48.SettingsBloc>(() =>
      _i48.SettingsBloc(get<_i12.IAuthFacade>(), get<_i36.DataWatcherBloc>()));
  gh.lazySingleton<_i49.SignInBloc>(() =>
      _i49.SignInBloc(get<_i12.IAuthFacade>(), get<_i36.DataWatcherBloc>()));
  gh.lazySingleton<_i50.SignUpBloc>(() =>
      _i50.SignUpBloc(get<_i12.IAuthFacade>(), get<_i36.DataWatcherBloc>()));
  gh.lazySingleton<_i51.StatsBloc>(() => _i51.StatsBloc(get<_i46.PlayBloc>()));
  gh.lazySingleton<_i52.CreateGameBloc>(() => _i52.CreateGameBloc(
      get<_i24.IPlayOfflineFacade>(),
      get<_i43.IPlayOnlineFacade>(),
      get<_i46.PlayBloc>()));
  gh.lazySingleton<_i53.GameInvitationsBloc>(() => _i53.GameInvitationsBloc(
      get<_i43.IPlayOnlineFacade>(),
      get<_i22.IGameInvitationFacade>(),
      get<_i36.DataWatcherBloc>(),
      get<_i46.PlayBloc>()));
  gh.lazySingleton<_i54.HomeBloc>(() => _i54.HomeBloc(
      get<_i24.IPlayOfflineFacade>(),
      get<_i43.IPlayOnlineFacade>(),
      get<_i36.DataWatcherBloc>(),
      get<_i46.PlayBloc>()));
  gh.lazySingleton<_i17.IFriendFacade>(
      () => _i55.FriendFacade(get<_i12.IAuthFacade>(), get<_i26.IUserFacade>(),
          get<_i8.FirebaseFirestore>(), get<_i31.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i43.IPlayOnlineFacade>(
      () =>
          _i56.PlayOnlineFacade(get<_i5.DartClient>(), get<_i26.IUserFacade>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i57.InGameBloc>(() => _i57.InGameBloc(
      get<_i24.IPlayOfflineFacade>(),
      get<_i43.IPlayOnlineFacade>(),
      get<_i46.PlayBloc>()));
  gh.lazySingleton<_i58.OpticalInputAreaBloc>(
      () => _i58.OpticalInputAreaBloc(get<_i57.InGameBloc>()));
  gh.lazySingleton<_i59.SpeechInputAreaBloc>(
      () => _i59.SpeechInputAreaBloc(get<_i57.InGameBloc>()));
  gh.lazySingleton<_i60.StandardInputAreaBloc>(
      () => _i60.StandardInputAreaBloc(get<_i57.InGameBloc>()));
  gh.lazySingleton<_i61.CheckoutDetailsBloc>(
      () => _i61.CheckoutDetailsBloc(get<_i57.InGameBloc>()));
  gh.lazySingleton<_i62.DetailedInputAreaBloc>(
      () => _i62.DetailedInputAreaBloc(get<_i57.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i63.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i64.FireBaseInjectableModule {}
