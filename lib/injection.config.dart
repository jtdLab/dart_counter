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

import 'application/core/auth/auth_bloc.dart' as _i41;
import 'application/core/play/play_bloc.dart' as _i59;
import 'application/create_game/add_player/add_player_bloc.dart' as _i3;
import 'application/create_game/create_game_bloc.dart' as _i62;
import 'application/create_game/offline/create_offline_game_bloc.dart' as _i46;
import 'application/friends/friends_bloc.dart' as _i63;
import 'application/friends/more/more_bloc.dart' as _i58;
import 'application/friends/search_user/search_user_bloc.dart' as _i60;
import 'application/game_history/game_history_bloc.dart' as _i50;
import 'application/game_invitations/game_invitations_bloc.dart' as _i64;
import 'application/home/home_bloc.dart' as _i65;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i73;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i74;
import 'application/in_game/in_game_bloc.dart' as _i69;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i70;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i71;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i72;
import 'application/in_game/stats/stats_bloc.dart' as _i61;
import 'application/profile/profile_bloc.dart' as _i33;
import 'application/settings/change_email/change_email_bloc.dart' as _i43;
import 'application/settings/change_password/change_password_bloc.dart' as _i44;
import 'application/settings/change_username/change_username_bloc.dart' as _i45;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i48;
import 'application/settings/settings_bloc.dart' as _i35;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i49;
import 'application/sign_in/sign_in_bloc.dart' as _i36;
import 'application/sign_up/sign_up_bloc.dart' as _i37;
import 'application/training/bobs_twenty_seven/bobs_twenty_seven_bloc.dart'
    as _i42;
import 'application/training/double_training/double_training_bloc.dart' as _i47;
import 'application/training/score_training/score_training_bloc.dart' as _i34;
import 'application/training/single_training/single_training_bloc.dart' as _i38;
import 'application/training/training_bloc.dart' as _i40;
import 'domain/auth/i_auth_service.dart' as _i12;
import 'domain/connectivity/i_connectivity_service.dart' as _i16;
import 'domain/friend/i_friend_service.dart' as _i52;
import 'domain/game_history/i_game_history_service.dart' as _i21;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i23;
import 'domain/play/offline/i_play_offline_service.dart' as _i25;
import 'domain/play/online/i_play_online_service.dart' as _i55;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i14;
import 'domain/training/double/i_double_training_service.dart' as _i19;
import 'domain/training/score/i_score_training_service.dart' as _i27;
import 'domain/training/single/i_single_training_service.dart' as _i29;
import 'domain/user/i_user_service.dart' as _i31;
import 'infrastructure/auth/firebase_auth_service.dart' as _i51;
import 'infrastructure/auth/mocked_auth_service.dart' as _i13;
import 'infrastructure/connectivity/connectivity_service.dart' as _i18;
import 'infrastructure/connectivity/mocked_connectivity_service.dart' as _i17;
import 'infrastructure/core/firebase_injectable_module.dart' as _i76;
import 'infrastructure/core/jtd_injectable_module.dart' as _i75;
import 'infrastructure/friend/friend_service.dart' as _i66;
import 'infrastructure/friend/mocked_friend_service.dart' as _i53;
import 'infrastructure/game_history/game_history_service.dart' as _i67;
import 'infrastructure/game_history/mocked_game_history_service.dart' as _i22;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i54;
import 'infrastructure/game_invitation/mocked_game_invitation_service.dart'
    as _i24;
import 'infrastructure/play/offline/play_offline_service.dart' as _i26;
import 'infrastructure/play/online/mocked_play_online_service.dart' as _i56;
import 'infrastructure/play/online/play_online_service.dart' as _i68;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i15;
import 'infrastructure/training/double/double_training_service.dart' as _i20;
import 'infrastructure/training/score/score_training_service.dart' as _i28;
import 'infrastructure/training/single/single_training_service.dart' as _i30;
import 'infrastructure/user/mocked_user_service.dart' as _i32;
import 'infrastructure/user/user_service.dart' as _i57;

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
  gh.lazySingleton<_i12.IAuthService>(() => _i13.MockedAuthService(),
      registerFor: {_dev});
  gh.lazySingleton<_i14.IBobsTwentySevenService>(
      () => _i15.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i16.IConnectivityService>(
      () => _i17.MockedConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.IConnectivityService>(
      () => _i18.ConnectivityService(get<_i4.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i19.IDoubleTrainingService>(
      () => _i20.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i21.IGameHistoryService>(
      () => _i22.MockedGameHistoryService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IGameInvitationService>(
      () => _i24.MockedGameInvitationService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i25.IPlayOfflineService>(() => _i26.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i27.IScoreTrainingService>(
      () => _i28.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i29.ISingleTrainingService>(
      () => _i30.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i31.IUserService>(
      () => _i32.MockedUserService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i33.ProfileBloc>(
      () => _i33.ProfileBloc(get<_i31.IUserService>()));
  gh.lazySingleton<_i34.ScoreTrainingBloc>(
      () => _i34.ScoreTrainingBloc(get<_i27.IScoreTrainingService>()));
  gh.lazySingleton<_i35.SettingsBloc>(() =>
      _i35.SettingsBloc(get<_i12.IAuthService>(), get<_i31.IUserService>()));
  gh.lazySingleton<_i36.SignInBloc>(
      () => _i36.SignInBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i37.SignUpBloc>(
      () => _i37.SignUpBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i38.SingleTrainingBloc>(
      () => _i38.SingleTrainingBloc(get<_i29.ISingleTrainingService>()));
  gh.lazySingleton<_i39.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i40.TrainingBloc>(() => _i40.TrainingBloc(
      get<_i29.ISingleTrainingService>(),
      get<_i19.IDoubleTrainingService>(),
      get<_i27.IScoreTrainingService>(),
      get<_i14.IBobsTwentySevenService>(),
      get<_i31.IUserService>()));
  gh.lazySingleton<_i41.AuthBloc>(
      () => _i41.AuthBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i42.BobsTwentySevenBloc>(
      () => _i42.BobsTwentySevenBloc(get<_i14.IBobsTwentySevenService>()));
  gh.lazySingleton<_i43.ChangeEmailBloc>(
      () => _i43.ChangeEmailBloc(get<_i31.IUserService>()));
  gh.lazySingleton<_i44.ChangePasswordBloc>(
      () => _i44.ChangePasswordBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i45.ChangeUsernameBloc>(
      () => _i45.ChangeUsernameBloc(get<_i31.IUserService>()));
  gh.factory<_i46.CreateOfflineGameBloc>(
      () => _i46.CreateOfflineGameBloc(get<_i25.IPlayOfflineService>()));
  gh.lazySingleton<_i47.DoubleTrainingBloc>(
      () => _i47.DoubleTrainingBloc(get<_i19.IDoubleTrainingService>()));
  gh.lazySingleton<_i48.EditProfileImageBloc>(
      () => _i48.EditProfileImageBloc(get<_i31.IUserService>()));
  gh.lazySingleton<_i49.ForgotPasswordBloc>(
      () => _i49.ForgotPasswordBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i50.GameHistoryBloc>(() => _i50.GameHistoryBloc(
      get<_i31.IUserService>(), get<_i21.IGameHistoryService>()));
  gh.lazySingleton<_i12.IAuthService>(
      () => _i51.FirebaseAuthService(
          get<_i7.FirebaseAuth>(),
          get<_i11.GoogleSignIn>(),
          get<_i6.FacebookAuth>(),
          get<_i39.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i52.IFriendService>(
      () => _i53.MockedFriendService(
          get<_i12.IAuthService>(), get<_i31.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IGameInvitationService>(
      () => _i54.GameInvitationService(
          get<_i12.IAuthService>(),
          get<_i8.FirebaseFirestore>(),
          get<_i39.SocialClient>(),
          get<_i5.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i55.IPlayOnlineService>(
      () => _i56.MockedPlayOnlineService(get<_i31.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i31.IUserService>(
      () => _i57.UserService(
          get<_i8.FirebaseFirestore>(),
          get<_i10.FirebaseStorage>(),
          get<_i12.IAuthService>(),
          get<_i39.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i58.MoreBloc>(
      () => _i58.MoreBloc(get<_i52.IFriendService>()));
  gh.lazySingleton<_i59.PlayBloc>(() => _i59.PlayBloc(
      get<_i25.IPlayOfflineService>(), get<_i55.IPlayOnlineService>()));
  gh.lazySingleton<_i60.SearchUserBloc>(
      () => _i60.SearchUserBloc(get<_i52.IFriendService>()));
  gh.lazySingleton<_i61.StatsBloc>(() => _i61.StatsBloc(get<_i59.PlayBloc>()));
  gh.lazySingleton<_i62.CreateGameBloc>(() => _i62.CreateGameBloc(
      get<_i25.IPlayOfflineService>(),
      get<_i55.IPlayOnlineService>(),
      get<_i59.PlayBloc>()));
  gh.lazySingleton<_i63.FriendsBloc>(
      () => _i63.FriendsBloc(get<_i52.IFriendService>()));
  gh.lazySingleton<_i64.GameInvitationsBloc>(() => _i64.GameInvitationsBloc(
      get<_i55.IPlayOnlineService>(),
      get<_i23.IGameInvitationService>(),
      get<_i59.PlayBloc>()));
  gh.lazySingleton<_i65.HomeBloc>(() => _i65.HomeBloc(
      get<_i25.IPlayOfflineService>(),
      get<_i55.IPlayOnlineService>(),
      get<_i31.IUserService>(),
      get<_i23.IGameInvitationService>(),
      get<_i52.IFriendService>(),
      get<_i59.PlayBloc>(),
      get<_i40.TrainingBloc>()));
  gh.lazySingleton<_i52.IFriendService>(
      () => _i66.FriendService(
          get<_i12.IAuthService>(),
          get<_i31.IUserService>(),
          get<_i8.FirebaseFirestore>(),
          get<_i39.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IGameHistoryService>(
      () => _i67.GameHistoryService(get<_i8.FirebaseFirestore>(),
          get<_i31.IUserService>(), get<_i52.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i55.IPlayOnlineService>(
      () => _i68.PlayOnlineService(get<_i5.DartClient>(),
          get<_i31.IUserService>(), get<_i52.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i69.InGameBloc>(() => _i69.InGameBloc(
      get<_i25.IPlayOfflineService>(),
      get<_i55.IPlayOnlineService>(),
      get<_i59.PlayBloc>()));
  gh.lazySingleton<_i70.OpticalInputAreaBloc>(
      () => _i70.OpticalInputAreaBloc(get<_i69.InGameBloc>()));
  gh.lazySingleton<_i71.SpeechInputAreaBloc>(
      () => _i71.SpeechInputAreaBloc(get<_i69.InGameBloc>()));
  gh.lazySingleton<_i72.StandardInputAreaBloc>(
      () => _i72.StandardInputAreaBloc(get<_i69.InGameBloc>()));
  gh.lazySingleton<_i73.CheckoutDetailsBloc>(
      () => _i73.CheckoutDetailsBloc(get<_i69.InGameBloc>()));
  gh.lazySingleton<_i74.DetailedInputAreaBloc>(
      () => _i74.DetailedInputAreaBloc(get<_i69.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i75.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i76.FireBaseInjectableModule {}
