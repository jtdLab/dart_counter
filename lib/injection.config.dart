// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:cloud_functions/cloud_functions.dart' as _i10;
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dart_client/dart_client.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i11;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i38;

import 'application/core/auth/auth_bloc.dart' as _i39;
import 'application/core/data_watcher/data_watcher_bloc.dart' as _i43;
import 'application/core/play/play_bloc.dart' as _i53;
import 'application/create_game/add_player/add_player_bloc.dart' as _i3;
import 'application/create_game/create_game_bloc.dart' as _i59;
import 'application/friends/friends_bloc.dart' as _i46;
import 'application/friends/more/more_bloc.dart' as _i35;
import 'application/friends/search_user/search_user_bloc.dart' as _i37;
import 'application/game_history/game_history_bloc.dart' as _i47;
import 'application/game_invitations/game_invitations_bloc.dart' as _i60;
import 'application/home/home_bloc.dart' as _i61;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i68;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i69;
import 'application/in_game/in_game_bloc.dart' as _i64;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i65;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i66;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i67;
import 'application/in_game/stats/stats_bloc.dart' as _i58;
import 'application/post_game/post_game_bloc.dart' as _i54;
import 'application/profile/profile_bloc.dart' as _i36;
import 'application/settings/change_email/change_email_bloc.dart' as _i40;
import 'application/settings/change_password/change_password_bloc.dart' as _i41;
import 'application/settings/change_username/change_username_bloc.dart' as _i42;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i44;
import 'application/settings/settings_bloc.dart' as _i55;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i45;
import 'application/sign_in/sign_in_bloc.dart' as _i56;
import 'application/sign_up/sign_up_bloc.dart' as _i57;
import 'domain/auth/i_auth_facade.dart' as _i13;
import 'domain/connectivity/i_connectivity_facade.dart' as _i15;
import 'domain/friend/i_friend_facade.dart' as _i20;
import 'domain/game_history/i_game_history_facade.dart' as _i22;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i25;
import 'domain/play/i_play_offline_facade.dart' as _i27;
import 'domain/play/i_play_online_facade.dart' as _i50;
import 'domain/training/double/i_double_training_service.dart' as _i18;
import 'domain/training/score/i_score_training_service.dart' as _i29;
import 'domain/training/single/i_single_training_service.dart' as _i31;
import 'domain/user/i_user_facade.dart' as _i33;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i48;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i14;
import 'infrastructure/connectivity/connectivity_facade.dart' as _i17;
import 'infrastructure/connectivity/mocked_connectivity_facade.dart' as _i16;
import 'infrastructure/core/firebase_injectable_module.dart' as _i71;
import 'infrastructure/core/jtd_injectable_module.dart' as _i70;
import 'infrastructure/friend/friend_facade.dart' as _i62;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i21;
import 'infrastructure/game_history/game_history_facade.dart' as _i24;
import 'infrastructure/game_history/mocked_game_history_facade.dart' as _i23;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i49;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i26;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i51;
import 'infrastructure/play/play_offline_facade.dart' as _i28;
import 'infrastructure/play/play_online_facade.dart' as _i63;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i4;
import 'infrastructure/training/double/double_training_service.dart' as _i19;
import 'infrastructure/training/score/score_training_service.dart' as _i30;
import 'infrastructure/training/single/single_training_service.dart' as _i32;
import 'infrastructure/user/mocked_user_facade.dart' as _i34;
import 'infrastructure/user/user_facade.dart' as _i52;

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
  gh.lazySingleton<_i4.BobsTwentySevenService>(
      () => _i4.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i5.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i6.DartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i7.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i8.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i9.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i10.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i11.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i12.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.lazySingleton<_i13.IAuthFacade>(() => _i14.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i15.IConnectivityFacade>(
      () => _i16.MockedConnectivityFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i15.IConnectivityFacade>(
      () => _i17.ConnectivityFacade(get<_i5.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i18.IDoubleTrainingService>(
      () => _i19.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i20.IFriendFacade>(
      () => _i21.MockedFriendFacade(get<_i13.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i22.IGameHistoryFacade>(
      () => _i23.MockedGameHistoryFacade(get<_i13.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i22.IGameHistoryFacade>(
      () => _i24.GameHistoryFacade(get<_i9.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i25.IGameInvitationFacade>(
      () => _i26.MockedGameInvitationFacade(get<_i13.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i27.IPlayOfflineFacade>(() => _i28.PlayOfflineFacade(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i29.IScoreTrainingService>(
      () => _i30.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i31.ISingleTrainingService>(
      () => _i32.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i33.IUserFacade>(
      () => _i34.MockedUserFacade(get<_i13.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i35.MoreBloc>(
      () => _i35.MoreBloc(get<_i20.IFriendFacade>()));
  gh.lazySingleton<_i36.ProfileBloc>(
      () => _i36.ProfileBloc(get<_i33.IUserFacade>()));
  gh.lazySingleton<_i37.SearchUserBloc>(
      () => _i37.SearchUserBloc(get<_i20.IFriendFacade>()));
  gh.lazySingleton<_i38.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i39.AuthBloc>(() => _i39.AuthBloc(get<_i13.IAuthFacade>()));
  gh.lazySingleton<_i40.ChangeEmailBloc>(
      () => _i40.ChangeEmailBloc(get<_i33.IUserFacade>()));
  gh.lazySingleton<_i41.ChangePasswordBloc>(
      () => _i41.ChangePasswordBloc(get<_i13.IAuthFacade>()));
  gh.lazySingleton<_i42.ChangeUsernameBloc>(
      () => _i42.ChangeUsernameBloc(get<_i33.IUserFacade>()));
  gh.lazySingleton<_i43.DataWatcherBloc>(() => _i43.DataWatcherBloc(
      get<_i33.IUserFacade>(),
      get<_i25.IGameInvitationFacade>(),
      get<_i20.IFriendFacade>(),
      get<_i39.AuthBloc>()));
  gh.lazySingleton<_i44.EditProfileImageBloc>(
      () => _i44.EditProfileImageBloc(get<_i33.IUserFacade>()));
  gh.lazySingleton<_i45.ForgotPasswordBloc>(
      () => _i45.ForgotPasswordBloc(get<_i13.IAuthFacade>()));
  gh.lazySingleton<_i46.FriendsBloc>(() =>
      _i46.FriendsBloc(get<_i20.IFriendFacade>(), get<_i43.DataWatcherBloc>()));
  gh.lazySingleton<_i47.GameHistoryBloc>(() => _i47.GameHistoryBloc(
      get<_i33.IUserFacade>(), get<_i22.IGameHistoryFacade>()));
  gh.lazySingleton<_i13.IAuthFacade>(
      () => _i48.FirebaseAuthFacade(
          get<_i8.FirebaseAuth>(),
          get<_i12.GoogleSignIn>(),
          get<_i7.FacebookAuth>(),
          get<_i38.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i25.IGameInvitationFacade>(
      () => _i49.GameInvitationFacade(
          get<_i13.IAuthFacade>(),
          get<_i9.FirebaseFirestore>(),
          get<_i38.SocialClient>(),
          get<_i6.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i50.IPlayOnlineFacade>(
      () => _i51.MockedPlayOnlineFacade(get<_i33.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i33.IUserFacade>(
      () => _i52.UserFacade(
          get<_i9.FirebaseFirestore>(),
          get<_i11.FirebaseStorage>(),
          get<_i13.IAuthFacade>(),
          get<_i38.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i53.PlayBloc>(() => _i53.PlayBloc(
      get<_i27.IPlayOfflineFacade>(), get<_i50.IPlayOnlineFacade>()));
  gh.lazySingleton<_i54.PostGameBloc>(
      () => _i54.PostGameBloc(get<_i53.PlayBloc>()));
  gh.lazySingleton<_i55.SettingsBloc>(() =>
      _i55.SettingsBloc(get<_i13.IAuthFacade>(), get<_i43.DataWatcherBloc>()));
  gh.lazySingleton<_i56.SignInBloc>(() =>
      _i56.SignInBloc(get<_i13.IAuthFacade>(), get<_i43.DataWatcherBloc>()));
  gh.lazySingleton<_i57.SignUpBloc>(() =>
      _i57.SignUpBloc(get<_i13.IAuthFacade>(), get<_i43.DataWatcherBloc>()));
  gh.lazySingleton<_i58.StatsBloc>(() => _i58.StatsBloc(get<_i53.PlayBloc>()));
  gh.lazySingleton<_i59.CreateGameBloc>(() => _i59.CreateGameBloc(
      get<_i27.IPlayOfflineFacade>(),
      get<_i50.IPlayOnlineFacade>(),
      get<_i53.PlayBloc>()));
  gh.lazySingleton<_i60.GameInvitationsBloc>(() => _i60.GameInvitationsBloc(
      get<_i50.IPlayOnlineFacade>(),
      get<_i25.IGameInvitationFacade>(),
      get<_i43.DataWatcherBloc>(),
      get<_i53.PlayBloc>()));
  gh.lazySingleton<_i61.HomeBloc>(() => _i61.HomeBloc(
      get<_i27.IPlayOfflineFacade>(),
      get<_i50.IPlayOnlineFacade>(),
      get<_i43.DataWatcherBloc>(),
      get<_i53.PlayBloc>()));
  gh.lazySingleton<_i20.IFriendFacade>(
      () => _i62.FriendFacade(get<_i13.IAuthFacade>(), get<_i33.IUserFacade>(),
          get<_i9.FirebaseFirestore>(), get<_i38.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i50.IPlayOnlineFacade>(
      () =>
          _i63.PlayOnlineFacade(get<_i6.DartClient>(), get<_i33.IUserFacade>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i64.InGameBloc>(() => _i64.InGameBloc(
      get<_i27.IPlayOfflineFacade>(),
      get<_i50.IPlayOnlineFacade>(),
      get<_i53.PlayBloc>()));
  gh.lazySingleton<_i65.OpticalInputAreaBloc>(
      () => _i65.OpticalInputAreaBloc(get<_i64.InGameBloc>()));
  gh.lazySingleton<_i66.SpeechInputAreaBloc>(
      () => _i66.SpeechInputAreaBloc(get<_i64.InGameBloc>()));
  gh.lazySingleton<_i67.StandardInputAreaBloc>(
      () => _i67.StandardInputAreaBloc(get<_i64.InGameBloc>()));
  gh.lazySingleton<_i68.CheckoutDetailsBloc>(
      () => _i68.CheckoutDetailsBloc(get<_i64.InGameBloc>()));
  gh.lazySingleton<_i69.DetailedInputAreaBloc>(
      () => _i69.DetailedInputAreaBloc(get<_i64.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i70.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i71.FireBaseInjectableModule {}
