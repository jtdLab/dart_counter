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
import 'package:social_client/social_client.dart' as _i33;

import 'application/core/auth/auth_bloc.dart' as _i35;
import 'application/core/data_watcher/data_watcher_bloc.dart' as _i39;
import 'application/core/play/play_bloc.dart' as _i49;
import 'application/create_game/create_game_bloc.dart' as _i51;
import 'application/friends/friends_bloc.dart' as _i42;
import 'application/friends/more/more_bloc.dart' as _i27;
import 'application/friends/search_user/search_user_bloc.dart' as _i29;
import 'application/game_history/game_history_bloc.dart' as _i43;
import 'application/home/home_bloc.dart' as _i52;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i60;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i61;
import 'application/in_game/in_game_bloc.dart' as _i55;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i57;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i58;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i59;
import 'application/in_game/stats/stats_bloc.dart' as _i34;
import 'application/invitations/invitations_bloc.dart' as _i56;
import 'application/post_game/post_game_bloc.dart' as _i50;
import 'application/profile/profile_bloc.dart' as _i28;
import 'application/settings/change_email/change_email_bloc.dart' as _i36;
import 'application/settings/change_password/change_password_bloc.dart' as _i37;
import 'application/settings/change_username/change_username_bloc.dart' as _i38;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i40;
import 'application/settings/settings_bloc.dart' as _i30;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i41;
import 'application/sign_in/sign_in_bloc.dart' as _i31;
import 'application/sign_up/sign_up_bloc.dart' as _i32;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'domain/connectivity/i_connectivity_facade.dart' as _i13;
import 'domain/friend/i_friend_facade.dart' as _i16;
import 'domain/game_history/i_game_history_facade.dart' as _i18;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i21;
import 'domain/play/i_play_offline_facade.dart' as _i23;
import 'domain/play/i_play_online_facade.dart' as _i46;
import 'domain/user/i_user_facade.dart' as _i25;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i44;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i12;
import 'infrastructure/connectivity/connectivity_facade.dart' as _i15;
import 'infrastructure/connectivity/mocked_connectivity_facade.dart' as _i14;
import 'infrastructure/core/firebase_injectable_module.dart' as _i63;
import 'infrastructure/core/jtd_injectable_module.dart' as _i62;
import 'infrastructure/friend/friend_facade.dart' as _i53;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i17;
import 'infrastructure/game_history/game_history_facade.dart' as _i20;
import 'infrastructure/game_history/mocked_game_history_facade.dart' as _i19;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i45;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i22;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i47;
import 'infrastructure/play/play_offline_facade.dart' as _i24;
import 'infrastructure/play/play_online_facade.dart' as _i54;
import 'infrastructure/user/mocked_user_facade.dart' as _i26;
import 'infrastructure/user/user_facade.dart' as _i48;

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
  gh.factory<_i28.ProfileBloc>(() => _i28.ProfileBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i29.SearchUserBloc>(
      () => _i29.SearchUserBloc(get<_i16.IFriendFacade>()));
  gh.factory<_i30.SettingsBloc>(() =>
      _i30.SettingsBloc(get<_i11.IAuthFacade>(), get<_i25.IUserFacade>()));
  gh.lazySingleton<_i31.SignInBloc>(
      () => _i31.SignInBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i32.SignUpBloc>(
      () => _i32.SignUpBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i33.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i34.StatsBloc>(() => _i34.StatsBloc());
  gh.lazySingleton<_i35.AuthBloc>(() => _i35.AuthBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i36.ChangeEmailBloc>(
      () => _i36.ChangeEmailBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i37.ChangePasswordBloc>(
      () => _i37.ChangePasswordBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i38.ChangeUsernameBloc>(
      () => _i38.ChangeUsernameBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i39.DataWatcherBloc>(() => _i39.DataWatcherBloc(
      get<_i11.IAuthFacade>(),
      get<_i25.IUserFacade>(),
      get<_i21.IGameInvitationFacade>(),
      get<_i16.IFriendFacade>()));
  gh.lazySingleton<_i40.EditProfileImageBloc>(
      () => _i40.EditProfileImageBloc(get<_i25.IUserFacade>()));
  gh.lazySingleton<_i41.ForgotPasswordBloc>(
      () => _i41.ForgotPasswordBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i42.FriendsBloc>(
      () => _i42.FriendsBloc(get<_i16.IFriendFacade>()));
  gh.lazySingleton<_i43.GameHistoryBloc>(() => _i43.GameHistoryBloc(
      get<_i25.IUserFacade>(), get<_i18.IGameHistoryFacade>()));
  gh.lazySingleton<_i11.IAuthFacade>(
      () => _i44.FirebaseAuthFacade(
          get<_i6.FirebaseAuth>(),
          get<_i10.GoogleSignIn>(),
          get<_i5.FacebookAuth>(),
          get<_i33.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IGameInvitationFacade>(
      () => _i45.GameInvitationFacade(
          get<_i11.IAuthFacade>(),
          get<_i7.FirebaseFirestore>(),
          get<_i33.SocialClient>(),
          get<_i4.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i46.IPlayOnlineFacade>(
      () => _i47.MockedPlayOnlineFacade(get<_i25.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i25.IUserFacade>(
      () => _i48.UserFacade(
          get<_i7.FirebaseFirestore>(),
          get<_i9.FirebaseStorage>(),
          get<_i11.IAuthFacade>(),
          get<_i33.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i49.PlayBloc>(() => _i49.PlayBloc(
      get<_i23.IPlayOfflineFacade>(), get<_i46.IPlayOnlineFacade>()));
  gh.lazySingleton<_i50.PostGameBloc>(
      () => _i50.PostGameBloc(get<_i49.PlayBloc>()));
  gh.lazySingleton<_i51.CreateGameBloc>(() =>
      _i51.CreateGameBloc(get<_i49.PlayBloc>(), get<_i16.IFriendFacade>()));
  gh.lazySingleton<_i52.HomeBloc>(() => _i52.HomeBloc(
      get<_i25.IUserFacade>(),
      get<_i21.IGameInvitationFacade>(),
      get<_i16.IFriendFacade>(),
      get<_i49.PlayBloc>()));
  gh.lazySingleton<_i16.IFriendFacade>(
      () => _i53.FriendFacade(get<_i11.IAuthFacade>(), get<_i25.IUserFacade>(),
          get<_i7.FirebaseFirestore>(), get<_i33.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i46.IPlayOnlineFacade>(
      () =>
          _i54.PlayOnlineFacade(get<_i4.DartClient>(), get<_i25.IUserFacade>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i55.InGameBloc>(
      () => _i55.InGameBloc(get<_i49.PlayBloc>()));
  gh.factory<_i56.InvitationsBloc>(() => _i56.InvitationsBloc(
      get<_i21.IGameInvitationFacade>(), get<_i49.PlayBloc>()));
  gh.lazySingleton<_i57.OpticalInputAreaBloc>(
      () => _i57.OpticalInputAreaBloc(get<_i55.InGameBloc>()));
  gh.lazySingleton<_i58.SpeechInputAreaBloc>(
      () => _i58.SpeechInputAreaBloc(get<_i55.InGameBloc>()));
  gh.lazySingleton<_i59.StandardInputAreaBloc>(
      () => _i59.StandardInputAreaBloc(get<_i55.InGameBloc>()));
  gh.lazySingleton<_i60.CheckoutDetailsBloc>(
      () => _i60.CheckoutDetailsBloc(get<_i55.InGameBloc>()));
  gh.lazySingleton<_i61.DetailedInputAreaBloc>(
      () => _i61.DetailedInputAreaBloc(get<_i55.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i62.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i63.FireBaseInjectableModule {}
