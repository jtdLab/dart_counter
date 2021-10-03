// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:cloud_functions/cloud_functions.dart' as _i8;
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dart_client/dart_client.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i9;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i30;

import 'application/core/auth/auth_bloc.dart' as _i31;
import 'application/core/data_watcher/data_watcher_bloc.dart' as _i35;
import 'application/core/play/play_bloc.dart' as _i45;
import 'application/create_game/create_game_bloc.dart' as _i51;
import 'application/friends/friends_bloc.dart' as _i38;
import 'application/friends/more/more_bloc.dart' as _i27;
import 'application/friends/search_user/search_user_bloc.dart' as _i29;
import 'application/game_history/game_history_bloc.dart' as _i39;
import 'application/game_invitations/game_invitations_bloc.dart' as _i52;
import 'application/home/home_bloc.dart' as _i53;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i60;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i61;
import 'application/in_game/in_game_bloc.dart' as _i56;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i57;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i58;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i59;
import 'application/in_game/stats/stats_bloc.dart' as _i50;
import 'application/post_game/post_game_bloc.dart' as _i46;
import 'application/profile/profile_bloc.dart' as _i28;
import 'application/settings/change_email/change_email_bloc.dart' as _i32;
import 'application/settings/change_password/change_password_bloc.dart' as _i33;
import 'application/settings/change_username/change_username_bloc.dart' as _i34;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i36;
import 'application/settings/settings_bloc.dart' as _i47;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i37;
import 'application/sign_in/sign_in_bloc.dart' as _i48;
import 'application/sign_up/sign_up_bloc.dart' as _i49;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'domain/connectivity/i_connectivity_facade.dart' as _i13;
import 'domain/friend/i_friend_facade.dart' as _i16;
import 'domain/game_history/i_game_history_facade.dart' as _i18;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i21;
import 'domain/play/i_play_offline_facade.dart' as _i23;
import 'domain/play/i_play_online_facade.dart' as _i42;
import 'domain/user/i_user_facade.dart' as _i25;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i40;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i12;
import 'infrastructure/connectivity/connectivity_facade.dart' as _i15;
import 'infrastructure/connectivity/mocked_connectivity_facade.dart' as _i14;
import 'infrastructure/core/firebase_injectable_module.dart' as _i63;
import 'infrastructure/core/jtd_injectable_module.dart' as _i62;
import 'infrastructure/friend/friend_facade.dart' as _i54;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i17;
import 'infrastructure/game_history/game_history_facade.dart' as _i20;
import 'infrastructure/game_history/mocked_game_history_facade.dart' as _i19;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i41;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i22;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i43;
import 'infrastructure/play/play_offline_facade.dart' as _i24;
import 'infrastructure/play/play_online_facade.dart' as _i55;
import 'infrastructure/user/mocked_user_facade.dart' as _i26;
import 'infrastructure/user/user_facade.dart' as _i44;

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
  gh.lazySingleton<_i3.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i4.DartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i5.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i8.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i9.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i10.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IConnectivityFacade>(
      () => _i14.MockedConnectivityFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IConnectivityFacade>(
      () => _i15.ConnectivityFacade(get<_i3.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i16.IFriendFacade>(
      () => _i17.MockedFriendFacade(get<_i11.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i18.IGameHistoryFacade>(
      () => _i19.MockedGameHistoryFacade(get<_i11.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i18.IGameHistoryFacade>(
      () => _i20.GameHistoryFacade(get<_i7.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IGameInvitationFacade>(
      () => _i22.MockedGameInvitationFacade(get<_i11.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IPlayOfflineFacade>(() => _i24.PlayOfflineFacade(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i25.IUserFacade>(
      () => _i26.MockedUserFacade(get<_i11.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i27.MoreBloc>(
      () => _i27.MoreBloc(get<_i16.IFriendFacade>()));
  gh.lazySingleton<_i28.ProfileBloc>(
      () => _i28.ProfileBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i29.SearchUserBloc>(
      () => _i29.SearchUserBloc(get<_i16.IFriendFacade>()));
  gh.lazySingleton<_i30.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i31.AuthBloc>(() => _i31.AuthBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i32.ChangeEmailBloc>(
      () => _i32.ChangeEmailBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i33.ChangePasswordBloc>(
      () => _i33.ChangePasswordBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i34.ChangeUsernameBloc>(
      () => _i34.ChangeUsernameBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i35.DataWatcherBloc>(() => _i35.DataWatcherBloc(
      get<_i25.IUserFacade>(),
      get<_i21.IGameInvitationFacade>(),
      get<_i16.IFriendFacade>(),
      get<_i31.AuthBloc>()));
  gh.lazySingleton<_i36.EditProfileImageBloc>(
      () => _i36.EditProfileImageBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i37.ForgotPasswordBloc>(
      () => _i37.ForgotPasswordBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i38.FriendsBloc>(() =>
      _i38.FriendsBloc(get<_i16.IFriendFacade>(), get<_i35.DataWatcherBloc>()));
  gh.lazySingleton<_i39.GameHistoryBloc>(() => _i39.GameHistoryBloc(
      get<_i25.IUserFacade>(), get<_i18.IGameHistoryFacade>()));
  gh.lazySingleton<_i11.IAuthFacade>(
      () => _i40.FirebaseAuthFacade(
          get<_i6.FirebaseAuth>(),
          get<_i10.GoogleSignIn>(),
          get<_i5.FacebookAuth>(),
          get<_i30.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IGameInvitationFacade>(
      () => _i41.GameInvitationFacade(
          get<_i11.IAuthFacade>(),
          get<_i7.FirebaseFirestore>(),
          get<_i30.SocialClient>(),
          get<_i4.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i42.IPlayOnlineFacade>(
      () => _i43.MockedPlayOnlineFacade(get<_i25.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i25.IUserFacade>(
      () => _i44.UserFacade(
          get<_i7.FirebaseFirestore>(),
          get<_i9.FirebaseStorage>(),
          get<_i11.IAuthFacade>(),
          get<_i30.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i45.PlayBloc>(() => _i45.PlayBloc(
      get<_i23.IPlayOfflineFacade>(), get<_i42.IPlayOnlineFacade>()));
  gh.lazySingleton<_i46.PostGameBloc>(
      () => _i46.PostGameBloc(get<_i45.PlayBloc>()));
  gh.lazySingleton<_i47.SettingsBloc>(() =>
      _i47.SettingsBloc(get<_i11.IAuthFacade>(), get<_i35.DataWatcherBloc>()));
  gh.lazySingleton<_i48.SignInBloc>(() =>
      _i48.SignInBloc(get<_i11.IAuthFacade>(), get<_i35.DataWatcherBloc>()));
  gh.lazySingleton<_i49.SignUpBloc>(() =>
      _i49.SignUpBloc(get<_i11.IAuthFacade>(), get<_i35.DataWatcherBloc>()));
  gh.lazySingleton<_i50.StatsBloc>(() => _i50.StatsBloc(get<_i45.PlayBloc>()));
  gh.lazySingleton<_i51.CreateGameBloc>(() => _i51.CreateGameBloc(
      get<_i23.IPlayOfflineFacade>(),
      get<_i42.IPlayOnlineFacade>(),
      get<_i45.PlayBloc>()));
  gh.lazySingleton<_i52.GameInvitationsBloc>(() => _i52.GameInvitationsBloc(
      get<_i42.IPlayOnlineFacade>(),
      get<_i21.IGameInvitationFacade>(),
      get<_i35.DataWatcherBloc>(),
      get<_i45.PlayBloc>()));
  gh.lazySingleton<_i53.HomeBloc>(() => _i53.HomeBloc(
      get<_i23.IPlayOfflineFacade>(),
      get<_i42.IPlayOnlineFacade>(),
      get<_i35.DataWatcherBloc>(),
      get<_i45.PlayBloc>()));
  gh.lazySingleton<_i16.IFriendFacade>(
      () => _i54.FriendFacade(get<_i11.IAuthFacade>(), get<_i25.IUserFacade>(),
          get<_i7.FirebaseFirestore>(), get<_i30.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i42.IPlayOnlineFacade>(
      () =>
          _i55.PlayOnlineFacade(get<_i4.DartClient>(), get<_i25.IUserFacade>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i56.InGameBloc>(() => _i56.InGameBloc(
      get<_i23.IPlayOfflineFacade>(),
      get<_i42.IPlayOnlineFacade>(),
      get<_i45.PlayBloc>()));
  gh.lazySingleton<_i57.OpticalInputAreaBloc>(
      () => _i57.OpticalInputAreaBloc(get<_i56.InGameBloc>()));
  gh.lazySingleton<_i58.SpeechInputAreaBloc>(
      () => _i58.SpeechInputAreaBloc(get<_i56.InGameBloc>()));
  gh.lazySingleton<_i59.StandardInputAreaBloc>(
      () => _i59.StandardInputAreaBloc(get<_i56.InGameBloc>()));
  gh.lazySingleton<_i60.CheckoutDetailsBloc>(
      () => _i60.CheckoutDetailsBloc(get<_i56.InGameBloc>()));
  gh.lazySingleton<_i61.DetailedInputAreaBloc>(
      () => _i61.DetailedInputAreaBloc(get<_i56.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i62.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i63.FireBaseInjectableModule {}
