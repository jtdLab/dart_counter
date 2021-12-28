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
import 'package:social_client/social_client.dart' as _i45;

import 'application/auth/sign_in/forgot_password/forgot_password_bloc.dart'
    as _i55;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i42;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i43;
import 'application/main/friends/friends_bloc.dart' as _i69;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i66;
import 'application/main/game_history/game_history_bloc.dart' as _i56;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i70;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i68;
import 'application/main/home/home_bloc.dart' as _i71;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i52;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i35;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i36;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i67;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i64;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i65;
import 'application/main/play/shared/in_game/points/points_cubit.dart' as _i37;
import 'application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart'
    as _i41;
import 'application/main/profile/profile_bloc.dart' as _i38;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i49;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i50;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i51;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i54;
import 'application/main/settings/settings_bloc.dart' as _i40;
import 'application/main/training/bobs_twenty_seven/bobs_twenty_seven_bloc.dart'
    as _i48;
import 'application/main/training/double_training/double_training_bloc.dart'
    as _i53;
import 'application/main/training/score_training/score_training_bloc.dart'
    as _i39;
import 'application/main/training/single_training/single_training_bloc.dart'
    as _i44;
import 'application/main/training/training_bloc.dart' as _i46;
import 'application/shared/auth/auth_bloc.dart' as _i47;
import 'domain/auth/i_auth_service.dart' as _i12;
import 'domain/connectivity/i_connectivity_service.dart' as _i16;
import 'domain/friend/i_friend_service.dart' as _i58;
import 'domain/game_history/i_game_history_service.dart' as _i23;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i25;
import 'domain/play/i_dart_utils.dart' as _i19;
import 'domain/play/offline/i_play_offline_service.dart' as _i27;
import 'domain/play/online/i_play_online_service.dart' as _i61;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i14;
import 'domain/training/double/i_double_training_service.dart' as _i21;
import 'domain/training/score/i_score_training_service.dart' as _i29;
import 'domain/training/single/i_single_training_service.dart' as _i31;
import 'domain/user/i_user_service.dart' as _i33;
import 'infrastructure/auth/firebase_auth_service.dart' as _i57;
import 'infrastructure/auth/mocked_auth_service.dart' as _i13;
import 'infrastructure/connectivity/connectivity_service.dart' as _i17;
import 'infrastructure/connectivity/mocked_connectivity_service.dart' as _i18;
import 'infrastructure/core/firebase_injectable_module.dart' as _i76;
import 'infrastructure/core/jtd_injectable_module.dart' as _i75;
import 'infrastructure/friend/friend_service.dart' as _i72;
import 'infrastructure/friend/mocked_friend_service.dart' as _i59;
import 'infrastructure/game_history/game_history_service.dart' as _i73;
import 'infrastructure/game_history/mocked_game_history_service.dart' as _i24;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i60;
import 'infrastructure/game_invitation/mocked_game_invitation_service.dart'
    as _i26;
import 'infrastructure/play/dart_utils.dart' as _i20;
import 'infrastructure/play/offline/play_offline_service.dart' as _i28;
import 'infrastructure/play/online/mocked_play_online_service.dart' as _i62;
import 'infrastructure/play/online/play_online_service.dart' as _i74;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i15;
import 'infrastructure/training/double/double_training_service.dart' as _i22;
import 'infrastructure/training/score/score_training_service.dart' as _i30;
import 'infrastructure/training/single/single_training_service.dart' as _i32;
import 'infrastructure/user/mocked_user_service.dart' as _i34;
import 'infrastructure/user/user_service.dart' as _i63;

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
      () => _i17.ConnectivityService(get<_i4.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i16.IConnectivityService>(
      () => _i18.MockedConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i19.IDartUtils>(() => _i20.DartUtils());
  gh.lazySingleton<_i21.IDoubleTrainingService>(
      () => _i22.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i23.IGameHistoryService>(
      () => _i24.MockedGameHistoryService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i25.IGameInvitationService>(
      () => _i26.MockedGameInvitationService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i27.IPlayOfflineService>(() => _i28.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i29.IScoreTrainingService>(
      () => _i30.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i31.ISingleTrainingService>(
      () => _i32.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i33.IUserService>(
      () => _i34.MockedUserService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i35.InOfflineGameBloc>(
      () => _i35.InOfflineGameBloc(get<_i27.IPlayOfflineService>()));
  gh.lazySingleton<_i36.PlayOfflineWatcherCubit>(() =>
      _i36.PlayOfflineWatcherCubit(
          get<_i27.IPlayOfflineService>(), get<_i33.IUserService>()));
  gh.lazySingleton<_i37.PointsCubit>(() => _i37.PointsCubit());
  gh.lazySingleton<_i38.ProfileBloc>(
      () => _i38.ProfileBloc(get<_i33.IUserService>()));
  gh.lazySingleton<_i39.ScoreTrainingBloc>(
      () => _i39.ScoreTrainingBloc(get<_i29.IScoreTrainingService>()));
  gh.lazySingleton<_i40.SettingsBloc>(() =>
      _i40.SettingsBloc(get<_i12.IAuthService>(), get<_i33.IUserService>()));
  gh.lazySingleton<_i41.ShowCheckoutDetailsCubit>(
      () => _i41.ShowCheckoutDetailsCubit());
  gh.lazySingleton<_i42.SignInBloc>(
      () => _i42.SignInBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i43.SignUpBloc>(
      () => _i43.SignUpBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i44.SingleTrainingBloc>(
      () => _i44.SingleTrainingBloc(get<_i31.ISingleTrainingService>()));
  gh.lazySingleton<_i45.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i46.TrainingBloc>(() => _i46.TrainingBloc(
      get<_i31.ISingleTrainingService>(),
      get<_i21.IDoubleTrainingService>(),
      get<_i29.IScoreTrainingService>(),
      get<_i14.IBobsTwentySevenService>(),
      get<_i33.IUserService>()));
  gh.lazySingleton<_i47.AuthBloc>(
      () => _i47.AuthBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i48.BobsTwentySevenBloc>(
      () => _i48.BobsTwentySevenBloc(get<_i14.IBobsTwentySevenService>()));
  gh.lazySingleton<_i49.ChangeEmailBloc>(
      () => _i49.ChangeEmailBloc(get<_i33.IUserService>()));
  gh.lazySingleton<_i50.ChangePasswordBloc>(
      () => _i50.ChangePasswordBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i51.ChangeUsernameBloc>(
      () => _i51.ChangeUsernameBloc(get<_i33.IUserService>()));
  gh.lazySingleton<_i52.CreateOfflineGameBloc>(
      () => _i52.CreateOfflineGameBloc(get<_i27.IPlayOfflineService>()));
  gh.lazySingleton<_i53.DoubleTrainingBloc>(
      () => _i53.DoubleTrainingBloc(get<_i21.IDoubleTrainingService>()));
  gh.lazySingleton<_i54.EditProfileImageBloc>(
      () => _i54.EditProfileImageBloc(get<_i33.IUserService>()));
  gh.lazySingleton<_i55.ForgotPasswordBloc>(
      () => _i55.ForgotPasswordBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i56.GameHistoryBloc>(() => _i56.GameHistoryBloc(
      get<_i33.IUserService>(), get<_i23.IGameHistoryService>()));
  gh.lazySingleton<_i12.IAuthService>(
      () => _i57.FirebaseAuthService(
          get<_i7.FirebaseAuth>(),
          get<_i11.GoogleSignIn>(),
          get<_i6.FacebookAuth>(),
          get<_i45.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i58.IFriendService>(
      () => _i59.MockedFriendService(
          get<_i12.IAuthService>(), get<_i33.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i25.IGameInvitationService>(
      () => _i60.GameInvitationService(
          get<_i12.IAuthService>(),
          get<_i8.FirebaseFirestore>(),
          get<_i45.SocialClient>(),
          get<_i5.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i61.IPlayOnlineService>(
      () => _i62.MockedPlayOnlineService(get<_i33.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i33.IUserService>(
      () => _i63.UserService(
          get<_i8.FirebaseFirestore>(),
          get<_i10.FirebaseStorage>(),
          get<_i12.IAuthService>(),
          get<_i45.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i64.InOnlineGameBloc>(
      () => _i64.InOnlineGameBloc(get<_i61.IPlayOnlineService>()));
  gh.lazySingleton<_i65.PlayOnlineWatcherCubit>(
      () => _i65.PlayOnlineWatcherCubit(get<_i61.IPlayOnlineService>()));
  gh.lazySingleton<_i66.SearchUserBloc>(
      () => _i66.SearchUserBloc(get<_i58.IFriendService>()));
  gh.lazySingleton<_i67.CreateOnlineGameBloc>(
      () => _i67.CreateOnlineGameBloc(get<_i61.IPlayOnlineService>()));
  gh.lazySingleton<_i68.CreateOnlineGameCubit>(
      () => _i68.CreateOnlineGameCubit(get<_i61.IPlayOnlineService>()));
  gh.lazySingleton<_i69.FriendsBloc>(
      () => _i69.FriendsBloc(get<_i58.IFriendService>()));
  gh.lazySingleton<_i70.GameInvitationsBloc>(() => _i70.GameInvitationsBloc(
      get<_i61.IPlayOnlineService>(), get<_i25.IGameInvitationService>()));
  gh.lazySingleton<_i71.HomeBloc>(() => _i71.HomeBloc(get<_i33.IUserService>(),
      get<_i25.IGameInvitationService>(), get<_i58.IFriendService>()));
  gh.lazySingleton<_i58.IFriendService>(
      () => _i72.FriendService(
          get<_i12.IAuthService>(),
          get<_i33.IUserService>(),
          get<_i8.FirebaseFirestore>(),
          get<_i45.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i23.IGameHistoryService>(
      () => _i73.GameHistoryService(get<_i8.FirebaseFirestore>(),
          get<_i33.IUserService>(), get<_i58.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i61.IPlayOnlineService>(
      () => _i74.PlayOnlineService(get<_i5.DartClient>(),
          get<_i33.IUserService>(), get<_i58.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i75.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i76.FireBaseInjectableModule {}
