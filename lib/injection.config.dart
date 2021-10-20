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
import 'package:social_client/social_client.dart' as _i39;

import 'application/core/auth/auth_bloc.dart' as _i40;
import 'application/core/data_watcher/data_watcher_bloc.dart' as _i44;
import 'application/core/play/play_bloc.dart' as _i54;
import 'application/create_game/add_player/add_player_bloc.dart' as _i3;
import 'application/create_game/create_game_bloc.dart' as _i60;
import 'application/friends/friends_bloc.dart' as _i47;
import 'application/friends/more/more_bloc.dart' as _i36;
import 'application/friends/search_user/search_user_bloc.dart' as _i38;
import 'application/game_history/game_history_bloc.dart' as _i48;
import 'application/game_invitations/game_invitations_bloc.dart' as _i61;
import 'application/home/home_bloc.dart' as _i62;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i69;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i70;
import 'application/in_game/in_game_bloc.dart' as _i65;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i66;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i67;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i68;
import 'application/in_game/stats/stats_bloc.dart' as _i59;
import 'application/post_game/post_game_bloc.dart' as _i55;
import 'application/profile/profile_bloc.dart' as _i37;
import 'application/settings/change_email/change_email_bloc.dart' as _i41;
import 'application/settings/change_password/change_password_bloc.dart' as _i42;
import 'application/settings/change_username/change_username_bloc.dart' as _i43;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i45;
import 'application/settings/settings_bloc.dart' as _i56;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i46;
import 'application/sign_in/sign_in_bloc.dart' as _i57;
import 'application/sign_up/sign_up_bloc.dart' as _i58;
import 'domain/auth/i_auth_facade.dart' as _i12;
import 'domain/connectivity/i_connectivity_facade.dart' as _i16;
import 'domain/friend/i_friend_facade.dart' as _i21;
import 'domain/game_history/i_game_history_facade.dart' as _i23;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i26;
import 'domain/play/i_play_offline_facade.dart' as _i28;
import 'domain/play/i_play_online_facade.dart' as _i51;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i14;
import 'domain/training/double/i_double_training_service.dart' as _i19;
import 'domain/training/score/i_score_training_service.dart' as _i30;
import 'domain/training/single/i_single_training_service.dart' as _i32;
import 'domain/user/i_user_facade.dart' as _i34;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i49;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i13;
import 'infrastructure/connectivity/connectivity_facade.dart' as _i18;
import 'infrastructure/connectivity/mocked_connectivity_facade.dart' as _i17;
import 'infrastructure/core/firebase_injectable_module.dart' as _i72;
import 'infrastructure/core/jtd_injectable_module.dart' as _i71;
import 'infrastructure/friend/friend_facade.dart' as _i63;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i22;
import 'infrastructure/game_history/game_history_facade.dart' as _i25;
import 'infrastructure/game_history/mocked_game_history_facade.dart' as _i24;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i50;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i27;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i52;
import 'infrastructure/play/play_offline_facade.dart' as _i29;
import 'infrastructure/play/play_online_facade.dart' as _i64;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i15;
import 'infrastructure/training/double/double_training_service.dart' as _i20;
import 'infrastructure/training/score/score_training_service.dart' as _i31;
import 'infrastructure/training/single/single_training_service.dart' as _i33;
import 'infrastructure/user/mocked_user_facade.dart' as _i35;
import 'infrastructure/user/user_facade.dart' as _i53;

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
  gh.lazySingleton<_i14.IBobsTwentySevenService>(
      () => _i15.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i16.IConnectivityFacade>(
      () => _i17.MockedConnectivityFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.IConnectivityFacade>(
      () => _i18.ConnectivityFacade(get<_i4.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i19.IDoubleTrainingService>(
      () => _i20.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i21.IFriendFacade>(
      () => _i22.MockedFriendFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IGameHistoryFacade>(
      () => _i24.MockedGameHistoryFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IGameHistoryFacade>(
      () => _i25.GameHistoryFacade(get<_i8.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i26.IGameInvitationFacade>(
      () => _i27.MockedGameInvitationFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i28.IPlayOfflineFacade>(() => _i29.PlayOfflineFacade(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i30.IScoreTrainingService>(
      () => _i31.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i32.ISingleTrainingService>(
      () => _i33.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i34.IUserFacade>(
      () => _i35.MockedUserFacade(get<_i12.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i36.MoreBloc>(
      () => _i36.MoreBloc(get<_i21.IFriendFacade>()));
  gh.lazySingleton<_i37.ProfileBloc>(
      () => _i37.ProfileBloc(get<_i34.IUserFacade>()));
  gh.lazySingleton<_i38.SearchUserBloc>(
      () => _i38.SearchUserBloc(get<_i21.IFriendFacade>()));
  gh.lazySingleton<_i39.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i40.AuthBloc>(() => _i40.AuthBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i41.ChangeEmailBloc>(
      () => _i41.ChangeEmailBloc(get<_i34.IUserFacade>()));
  gh.lazySingleton<_i42.ChangePasswordBloc>(
      () => _i42.ChangePasswordBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i43.ChangeUsernameBloc>(
      () => _i43.ChangeUsernameBloc(get<_i34.IUserFacade>()));
  gh.lazySingleton<_i44.DataWatcherBloc>(() => _i44.DataWatcherBloc(
      get<_i34.IUserFacade>(),
      get<_i26.IGameInvitationFacade>(),
      get<_i21.IFriendFacade>(),
      get<_i40.AuthBloc>()));
  gh.lazySingleton<_i45.EditProfileImageBloc>(
      () => _i45.EditProfileImageBloc(get<_i34.IUserFacade>()));
  gh.lazySingleton<_i46.ForgotPasswordBloc>(
      () => _i46.ForgotPasswordBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i47.FriendsBloc>(() =>
      _i47.FriendsBloc(get<_i21.IFriendFacade>(), get<_i44.DataWatcherBloc>()));
  gh.lazySingleton<_i48.GameHistoryBloc>(() => _i48.GameHistoryBloc(
      get<_i34.IUserFacade>(), get<_i23.IGameHistoryFacade>()));
  gh.lazySingleton<_i12.IAuthFacade>(
      () => _i49.FirebaseAuthFacade(
          get<_i7.FirebaseAuth>(),
          get<_i11.GoogleSignIn>(),
          get<_i6.FacebookAuth>(),
          get<_i39.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i26.IGameInvitationFacade>(
      () => _i50.GameInvitationFacade(
          get<_i12.IAuthFacade>(),
          get<_i8.FirebaseFirestore>(),
          get<_i39.SocialClient>(),
          get<_i5.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i51.IPlayOnlineFacade>(
      () => _i52.MockedPlayOnlineFacade(get<_i34.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i34.IUserFacade>(
      () => _i53.UserFacade(
          get<_i8.FirebaseFirestore>(),
          get<_i10.FirebaseStorage>(),
          get<_i12.IAuthFacade>(),
          get<_i39.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i54.PlayBloc>(() => _i54.PlayBloc(
      get<_i28.IPlayOfflineFacade>(), get<_i51.IPlayOnlineFacade>()));
  gh.lazySingleton<_i55.PostGameBloc>(
      () => _i55.PostGameBloc(get<_i54.PlayBloc>()));
  gh.lazySingleton<_i56.SettingsBloc>(() =>
      _i56.SettingsBloc(get<_i12.IAuthFacade>(), get<_i44.DataWatcherBloc>()));
  gh.lazySingleton<_i57.SignInBloc>(() =>
      _i57.SignInBloc(get<_i12.IAuthFacade>(), get<_i44.DataWatcherBloc>()));
  gh.lazySingleton<_i58.SignUpBloc>(() =>
      _i58.SignUpBloc(get<_i12.IAuthFacade>(), get<_i44.DataWatcherBloc>()));
  gh.lazySingleton<_i59.StatsBloc>(() => _i59.StatsBloc(get<_i54.PlayBloc>()));
  gh.lazySingleton<_i60.CreateGameBloc>(() => _i60.CreateGameBloc(
      get<_i28.IPlayOfflineFacade>(),
      get<_i51.IPlayOnlineFacade>(),
      get<_i54.PlayBloc>()));
  gh.lazySingleton<_i61.GameInvitationsBloc>(() => _i61.GameInvitationsBloc(
      get<_i51.IPlayOnlineFacade>(),
      get<_i26.IGameInvitationFacade>(),
      get<_i44.DataWatcherBloc>(),
      get<_i54.PlayBloc>()));
  gh.lazySingleton<_i62.HomeBloc>(() => _i62.HomeBloc(
      get<_i28.IPlayOfflineFacade>(),
      get<_i51.IPlayOnlineFacade>(),
      get<_i44.DataWatcherBloc>(),
      get<_i54.PlayBloc>()));
  gh.lazySingleton<_i21.IFriendFacade>(
      () => _i63.FriendFacade(get<_i12.IAuthFacade>(), get<_i34.IUserFacade>(),
          get<_i8.FirebaseFirestore>(), get<_i39.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i51.IPlayOnlineFacade>(
      () =>
          _i64.PlayOnlineFacade(get<_i5.DartClient>(), get<_i34.IUserFacade>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i65.InGameBloc>(() => _i65.InGameBloc(
      get<_i28.IPlayOfflineFacade>(),
      get<_i51.IPlayOnlineFacade>(),
      get<_i54.PlayBloc>()));
  gh.lazySingleton<_i66.OpticalInputAreaBloc>(
      () => _i66.OpticalInputAreaBloc(get<_i65.InGameBloc>()));
  gh.lazySingleton<_i67.SpeechInputAreaBloc>(
      () => _i67.SpeechInputAreaBloc(get<_i65.InGameBloc>()));
  gh.lazySingleton<_i68.StandardInputAreaBloc>(
      () => _i68.StandardInputAreaBloc(get<_i65.InGameBloc>()));
  gh.lazySingleton<_i69.CheckoutDetailsBloc>(
      () => _i69.CheckoutDetailsBloc(get<_i65.InGameBloc>()));
  gh.lazySingleton<_i70.DetailedInputAreaBloc>(
      () => _i70.DetailedInputAreaBloc(get<_i65.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i71.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i72.FireBaseInjectableModule {}
