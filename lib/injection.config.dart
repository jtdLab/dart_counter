// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:cloud_functions/cloud_functions.dart' as _i10;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dart_client/dart_client.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i11;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i49;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i58;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i46;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i47;
import 'application/main/friends/friends_bloc.dart' as _i72;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i69;
import 'application/main/game_history/game_history_bloc.dart' as _i59;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i73;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i71;
import 'application/main/home/home_bloc.dart' as _i74;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i55;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i36;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i40;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i70;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i67;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i68;
import 'application/main/play/shared/in_game/points/points_cubit.dart' as _i41;
import 'application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart'
    as _i45;
import 'application/main/profile/profile_bloc.dart' as _i42;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i52;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i53;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i54;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i57;
import 'application/main/settings/settings_bloc.dart' as _i44;
import 'application/main/training/bobs_twenty_seven/bobs_twenty_seven_watcher_cubit.dart'
    as _i51;
import 'application/main/training/double_training/double_training_watcher_cubit.dart'
    as _i56;
import 'application/main/training/score_training/score_training_watcher_cubit.dart'
    as _i43;
import 'application/main/training/single_training/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i6;
import 'application/main/training/single_training/in_game/in_single_training_bloc.dart'
    as _i37;
import 'application/main/training/single_training/in_game/input_area/input_row/input_row_bloc.dart'
    as _i38;
import 'application/main/training/single_training/in_game/input_area/key_board/key_board_bloc.dart'
    as _i39;
import 'application/main/training/single_training/single_training_watcher_cubit.dart'
    as _i48;
import 'application/shared/auth/auth_bloc.dart' as _i50;
import 'domain/auth/i_auth_service.dart' as _i13;
import 'domain/connectivity/i_connectivity_service.dart' as _i17;
import 'domain/friend/i_friend_service.dart' as _i61;
import 'domain/game_history/i_game_history_service.dart' as _i24;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i26;
import 'domain/play/i_dart_utils.dart' as _i20;
import 'domain/play/offline/i_play_offline_service.dart' as _i28;
import 'domain/play/online/i_play_online_service.dart' as _i64;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i15;
import 'domain/training/double/i_double_training_service.dart' as _i22;
import 'domain/training/score/i_score_training_service.dart' as _i30;
import 'domain/training/single/i_single_training_service.dart' as _i32;
import 'domain/user/i_user_service.dart' as _i34;
import 'infrastructure/auth/firebase_auth_service.dart' as _i60;
import 'infrastructure/auth/mocked_auth_service.dart' as _i14;
import 'infrastructure/connectivity/connectivity_service.dart' as _i19;
import 'infrastructure/connectivity/mocked_connectivity_service.dart' as _i18;
import 'infrastructure/core/firebase_injectable_module.dart' as _i79;
import 'infrastructure/core/jtd_injectable_module.dart' as _i78;
import 'infrastructure/friend/friend_service.dart' as _i75;
import 'infrastructure/friend/mocked_friend_service.dart' as _i62;
import 'infrastructure/game_history/game_history_service.dart' as _i76;
import 'infrastructure/game_history/mocked_game_history_service.dart' as _i25;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i63;
import 'infrastructure/game_invitation/mocked_game_invitation_service.dart'
    as _i27;
import 'infrastructure/play/dart_utils.dart' as _i21;
import 'infrastructure/play/offline/play_offline_service.dart' as _i29;
import 'infrastructure/play/online/mocked_play_online_service.dart' as _i65;
import 'infrastructure/play/online/play_online_service.dart' as _i77;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i16;
import 'infrastructure/training/double/double_training_service.dart' as _i23;
import 'infrastructure/training/score/score_training_service.dart' as _i31;
import 'infrastructure/training/single/single_training_service.dart' as _i33;
import 'infrastructure/user/mocked_user_service.dart' as _i35;
import 'infrastructure/user/user_service.dart' as _i66;

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
  gh.factory<_i6.DartsDisplayerBloc>(() => _i6.DartsDisplayerBloc());
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
  gh.lazySingleton<_i13.IAuthService>(() => _i14.MockedAuthService.inject(),
      registerFor: {_dev});
  gh.lazySingleton<_i15.IBobsTwentySevenService>(
      () => _i16.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i17.IConnectivityService>(
      () => _i18.MockedConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i17.IConnectivityService>(
      () => _i19.ConnectivityService(get<_i4.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i20.IDartUtils>(() => _i21.DartUtils());
  gh.lazySingleton<_i22.IDoubleTrainingService>(
      () => _i23.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i24.IGameHistoryService>(
      () => _i25.MockedGameHistoryService(get<_i13.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i26.IGameInvitationService>(
      () => _i27.MockedGameInvitationService(get<_i13.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i28.IPlayOfflineService>(() => _i29.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i30.IScoreTrainingService>(
      () => _i31.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i32.ISingleTrainingService>(
      () => _i33.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i34.IUserService>(
      () => _i35.MockedUserService(get<_i13.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i36.InOfflineGameBloc>(
      () => _i36.InOfflineGameBloc(get<_i28.IPlayOfflineService>()));
  gh.factory<_i37.InSingleTrainingBloc>(
      () => _i37.InSingleTrainingBloc(get<_i32.ISingleTrainingService>()));
  gh.factoryParam<_i38.InputRowBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i38.InputRowBloc(
          get<_i32.ISingleTrainingService>(), dartsDisplayerBloc));
  gh.factoryParam<_i39.KeyBoardBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i39.KeyBoardBloc(
          get<_i32.ISingleTrainingService>(), dartsDisplayerBloc));
  gh.lazySingleton<_i40.PlayOfflineWatcherCubit>(() =>
      _i40.PlayOfflineWatcherCubit(
          get<_i28.IPlayOfflineService>(), get<_i34.IUserService>()));
  gh.lazySingleton<_i41.PointsCubit>(() => _i41.PointsCubit());
  gh.lazySingleton<_i42.ProfileBloc>(
      () => _i42.ProfileBloc(get<_i34.IUserService>()));
  gh.factory<_i43.ScoreTrainingWatcherCubit>(
      () => _i43.ScoreTrainingWatcherCubit(get<_i30.IScoreTrainingService>()));
  gh.lazySingleton<_i44.SettingsBloc>(() =>
      _i44.SettingsBloc(get<_i13.IAuthService>(), get<_i34.IUserService>()));
  gh.lazySingleton<_i45.ShowCheckoutDetailsCubit>(
      () => _i45.ShowCheckoutDetailsCubit());
  gh.lazySingleton<_i46.SignInBloc>(
      () => _i46.SignInBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i47.SignUpBloc>(
      () => _i47.SignUpBloc(get<_i13.IAuthService>()));
  gh.factory<_i48.SingleTrainingWatcherCubit>(() =>
      _i48.SingleTrainingWatcherCubit(get<_i32.ISingleTrainingService>()));
  gh.lazySingleton<_i49.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i50.AuthBloc>(
      () => _i50.AuthBloc(get<_i13.IAuthService>()));
  gh.factory<_i51.BobsTwentySevenWatcherCubit>(() =>
      _i51.BobsTwentySevenWatcherCubit(get<_i15.IBobsTwentySevenService>()));
  gh.lazySingleton<_i52.ChangeEmailBloc>(
      () => _i52.ChangeEmailBloc(get<_i34.IUserService>()));
  gh.lazySingleton<_i53.ChangePasswordBloc>(
      () => _i53.ChangePasswordBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i54.ChangeUsernameBloc>(
      () => _i54.ChangeUsernameBloc(get<_i34.IUserService>()));
  gh.lazySingleton<_i55.CreateOfflineGameBloc>(
      () => _i55.CreateOfflineGameBloc(get<_i28.IPlayOfflineService>()));
  gh.factory<_i56.DoubleTrainingWatcherCubit>(() =>
      _i56.DoubleTrainingWatcherCubit(get<_i22.IDoubleTrainingService>()));
  gh.lazySingleton<_i57.EditProfileImageBloc>(
      () => _i57.EditProfileImageBloc(get<_i34.IUserService>()));
  gh.lazySingleton<_i58.ForgotPasswordBloc>(
      () => _i58.ForgotPasswordBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i59.GameHistoryBloc>(() => _i59.GameHistoryBloc(
      get<_i34.IUserService>(), get<_i24.IGameHistoryService>()));
  gh.lazySingleton<_i13.IAuthService>(
      () => _i60.FirebaseAuthService(
          get<_i8.FirebaseAuth>(),
          get<_i12.GoogleSignIn>(),
          get<_i7.FacebookAuth>(),
          get<_i49.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i61.IFriendService>(
      () => _i62.MockedFriendService(
          get<_i13.IAuthService>(), get<_i34.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i26.IGameInvitationService>(
      () => _i63.GameInvitationService(
          get<_i13.IAuthService>(),
          get<_i9.FirebaseFirestore>(),
          get<_i49.SocialClient>(),
          get<_i5.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i64.IPlayOnlineService>(
      () => _i65.MockedPlayOnlineService(get<_i34.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i34.IUserService>(
      () => _i66.UserService(
          get<_i9.FirebaseFirestore>(),
          get<_i11.FirebaseStorage>(),
          get<_i13.IAuthService>(),
          get<_i49.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i67.InOnlineGameBloc>(
      () => _i67.InOnlineGameBloc(get<_i64.IPlayOnlineService>()));
  gh.lazySingleton<_i68.PlayOnlineWatcherCubit>(
      () => _i68.PlayOnlineWatcherCubit(get<_i64.IPlayOnlineService>()));
  gh.lazySingleton<_i69.SearchUserBloc>(
      () => _i69.SearchUserBloc(get<_i61.IFriendService>()));
  gh.lazySingleton<_i70.CreateOnlineGameBloc>(
      () => _i70.CreateOnlineGameBloc(get<_i64.IPlayOnlineService>()));
  gh.lazySingleton<_i71.CreateOnlineGameCubit>(
      () => _i71.CreateOnlineGameCubit(get<_i64.IPlayOnlineService>()));
  gh.lazySingleton<_i72.FriendsBloc>(
      () => _i72.FriendsBloc(get<_i61.IFriendService>()));
  gh.lazySingleton<_i73.GameInvitationsBloc>(() => _i73.GameInvitationsBloc(
      get<_i64.IPlayOnlineService>(), get<_i26.IGameInvitationService>()));
  gh.lazySingleton<_i74.HomeBloc>(() => _i74.HomeBloc(get<_i34.IUserService>(),
      get<_i26.IGameInvitationService>(), get<_i61.IFriendService>()));
  gh.lazySingleton<_i61.IFriendService>(
      () => _i75.FriendService(
          get<_i13.IAuthService>(),
          get<_i34.IUserService>(),
          get<_i9.FirebaseFirestore>(),
          get<_i49.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i24.IGameHistoryService>(
      () => _i76.GameHistoryService(get<_i9.FirebaseFirestore>(),
          get<_i34.IUserService>(), get<_i61.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i64.IPlayOnlineService>(
      () => _i77.PlayOnlineService(get<_i5.DartClient>(),
          get<_i34.IUserService>(), get<_i61.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i78.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i79.FireBaseInjectableModule {}
