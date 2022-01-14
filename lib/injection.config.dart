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
import 'package:social_client/social_client.dart' as _i60;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i70;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i57;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i58;
import 'application/main/friends/friends_bloc.dart' as _i84;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i81;
import 'application/main/game_history/game_history_bloc.dart' as _i71;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i85;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i83;
import 'application/main/home/home_bloc.dart' as _i86;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i66;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i38;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i51;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i82;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i79;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i80;
import 'application/main/play/shared/in_game/points/points_cubit.dart' as _i52;
import 'application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart'
    as _i56;
import 'application/main/profile/profile_bloc.dart' as _i53;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i63;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i64;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i65;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i69;
import 'application/main/settings/settings_bloc.dart' as _i55;
import 'application/main/training/bobs_twenty_seven/bobs_twenty_seven_watcher_cubit.dart'
    as _i62;
import 'application/main/training/bobs_twenty_seven/in_game/in_bobs_twenty_seven_bloc.dart'
    as _i36;
import 'application/main/training/bobs_twenty_seven/in_game/input_area/input_row/input_row_bloc.dart'
    as _i43;
import 'application/main/training/bobs_twenty_seven/in_game/input_area/key_board/key_board_bloc.dart'
    as _i46;
import 'application/main/training/create_training/create_training_bloc.dart'
    as _i67;
import 'application/main/training/double_training/double_training_watcher_cubit.dart'
    as _i68;
import 'application/main/training/double_training/in_game/in_double_training_bloc.dart'
    as _i37;
import 'application/main/training/double_training/in_game/input_area/input_row/input_row_bloc.dart'
    as _i42;
import 'application/main/training/double_training/in_game/input_area/key_board/key_board_bloc.dart'
    as _i48;
import 'application/main/training/score_training/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i44;
import 'application/main/training/score_training/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i47;
import 'application/main/training/score_training/in_game/in_score_training_bloc.dart'
    as _i39;
import 'application/main/training/score_training/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i45;
import 'application/main/training/score_training/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i49;
import 'application/main/training/score_training/score_training_watcher_cubit.dart'
    as _i54;
import 'application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i6;
import 'application/main/training/single_training/in_game/in_single_training_bloc.dart'
    as _i40;
import 'application/main/training/single_training/in_game/input_area/input_row/input_row_bloc.dart'
    as _i41;
import 'application/main/training/single_training/in_game/input_area/key_board/key_board_bloc.dart'
    as _i50;
import 'application/main/training/single_training/single_training_watcher_cubit.dart'
    as _i59;
import 'application/shared/auth/auth_bloc.dart' as _i61;
import 'domain/auth/i_auth_service.dart' as _i13;
import 'domain/connectivity/i_connectivity_service.dart' as _i17;
import 'domain/friend/i_friend_service.dart' as _i73;
import 'domain/game_history/i_game_history_service.dart' as _i24;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i26;
import 'domain/play/i_dart_utils.dart' as _i20;
import 'domain/play/offline/i_play_offline_service.dart' as _i28;
import 'domain/play/online/i_play_online_service.dart' as _i76;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i15;
import 'domain/training/double/i_double_training_service.dart' as _i22;
import 'domain/training/score/i_score_training_service.dart' as _i30;
import 'domain/training/single/i_single_training_service.dart' as _i32;
import 'domain/user/i_user_service.dart' as _i34;
import 'infrastructure/auth/firebase_auth_service.dart' as _i72;
import 'infrastructure/auth/mocked_auth_service.dart' as _i14;
import 'infrastructure/connectivity/connectivity_service.dart' as _i18;
import 'infrastructure/connectivity/mocked_connectivity_service.dart' as _i19;
import 'infrastructure/core/firebase_injectable_module.dart' as _i91;
import 'infrastructure/core/jtd_injectable_module.dart' as _i90;
import 'infrastructure/friend/friend_service.dart' as _i87;
import 'infrastructure/friend/mocked_friend_service.dart' as _i74;
import 'infrastructure/game_history/game_history_service.dart' as _i88;
import 'infrastructure/game_history/mocked_game_history_service.dart' as _i25;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i75;
import 'infrastructure/game_invitation/mocked_game_invitation_service.dart'
    as _i27;
import 'infrastructure/play/dart_utils.dart' as _i21;
import 'infrastructure/play/offline/play_offline_service.dart' as _i29;
import 'infrastructure/play/online/mocked_play_online_service.dart' as _i77;
import 'infrastructure/play/online/play_online_service.dart' as _i89;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i16;
import 'infrastructure/training/double/double_training_service.dart' as _i23;
import 'infrastructure/training/score/score_training_service.dart' as _i31;
import 'infrastructure/training/single/single_training_service.dart' as _i33;
import 'infrastructure/user/mocked_user_service.dart' as _i35;
import 'infrastructure/user/user_service.dart' as _i78;

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
      () => _i18.ConnectivityService(get<_i4.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i17.IConnectivityService>(
      () => _i19.MockedConnectivityService(),
      registerFor: {_dev});
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
  gh.factory<_i36.InBobsTwentySevenBloc>(
      () => _i36.InBobsTwentySevenBloc(get<_i15.IBobsTwentySevenService>()));
  gh.factory<_i37.InDoubleTrainingBloc>(
      () => _i37.InDoubleTrainingBloc(get<_i22.IDoubleTrainingService>()));
  gh.lazySingleton<_i38.InOfflineGameBloc>(
      () => _i38.InOfflineGameBloc(get<_i28.IPlayOfflineService>()));
  gh.factory<_i39.InScoreTrainingBloc>(
      () => _i39.InScoreTrainingBloc(get<_i30.IScoreTrainingService>()));
  gh.factory<_i40.InSingleTrainingBloc>(
      () => _i40.InSingleTrainingBloc(get<_i32.ISingleTrainingService>()));
  gh.factoryParam<_i41.InputRowBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i41.InputRowBloc(
          get<_i32.ISingleTrainingService>(), dartsDisplayerBloc));
  gh.factoryParam<_i42.InputRowBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i42.InputRowBloc(
          get<_i22.IDoubleTrainingService>(), dartsDisplayerBloc));
  gh.factoryParam<_i43.InputRowBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i43.InputRowBloc(
          get<_i15.IBobsTwentySevenService>(), dartsDisplayerBloc));
  gh.factoryParam<_i44.InputRowBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i44.InputRowBloc(
          get<_i30.IScoreTrainingService>(), dartsDisplayerBloc));
  gh.factory<_i45.InputRowBloc>(
      () => _i45.InputRowBloc(get<_i30.IScoreTrainingService>()));
  gh.factoryParam<_i46.KeyBoardBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i46.KeyBoardBloc(
          get<_i15.IBobsTwentySevenService>(), dartsDisplayerBloc));
  gh.factoryParam<_i47.KeyBoardBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i47.KeyBoardBloc(dartsDisplayerBloc));
  gh.factoryParam<_i48.KeyBoardBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i48.KeyBoardBloc(
          get<_i22.IDoubleTrainingService>(), dartsDisplayerBloc));
  gh.factoryParam<_i49.KeyBoardBloc, _i45.InputRowBloc?, dynamic>(
      (inputRowBloc, _) =>
          _i49.KeyBoardBloc(get<_i20.IDartUtils>(), inputRowBloc));
  gh.factoryParam<_i50.KeyBoardBloc, _i6.DartsDisplayerBloc?, dynamic>(
      (dartsDisplayerBloc, _) => _i50.KeyBoardBloc(
          get<_i32.ISingleTrainingService>(), dartsDisplayerBloc));
  gh.lazySingleton<_i51.PlayOfflineWatcherCubit>(() =>
      _i51.PlayOfflineWatcherCubit(
          get<_i28.IPlayOfflineService>(), get<_i34.IUserService>()));
  gh.lazySingleton<_i52.PointsCubit>(() => _i52.PointsCubit());
  gh.lazySingleton<_i53.ProfileBloc>(
      () => _i53.ProfileBloc(get<_i34.IUserService>()));
  gh.factory<_i54.ScoreTrainingWatcherCubit>(
      () => _i54.ScoreTrainingWatcherCubit(get<_i30.IScoreTrainingService>()));
  gh.lazySingleton<_i55.SettingsBloc>(() =>
      _i55.SettingsBloc(get<_i13.IAuthService>(), get<_i34.IUserService>()));
  gh.lazySingleton<_i56.ShowCheckoutDetailsCubit>(
      () => _i56.ShowCheckoutDetailsCubit());
  gh.lazySingleton<_i57.SignInBloc>(
      () => _i57.SignInBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i58.SignUpBloc>(
      () => _i58.SignUpBloc(get<_i13.IAuthService>()));
  gh.factory<_i59.SingleTrainingWatcherCubit>(() =>
      _i59.SingleTrainingWatcherCubit(get<_i32.ISingleTrainingService>()));
  gh.lazySingleton<_i60.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i61.AuthBloc>(
      () => _i61.AuthBloc(get<_i13.IAuthService>()));
  gh.factory<_i62.BobsTwentySevenWatcherCubit>(() =>
      _i62.BobsTwentySevenWatcherCubit(get<_i15.IBobsTwentySevenService>()));
  gh.lazySingleton<_i63.ChangeEmailBloc>(
      () => _i63.ChangeEmailBloc(get<_i34.IUserService>()));
  gh.lazySingleton<_i64.ChangePasswordBloc>(
      () => _i64.ChangePasswordBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i65.ChangeUsernameBloc>(
      () => _i65.ChangeUsernameBloc(get<_i34.IUserService>()));
  gh.lazySingleton<_i66.CreateOfflineGameBloc>(
      () => _i66.CreateOfflineGameBloc(get<_i28.IPlayOfflineService>()));
  gh.factory<_i67.CreateTrainingBloc>(
      () => _i67.CreateTrainingBloc(get<_i34.IUserService>()));
  gh.factory<_i68.DoubleTrainingWatcherCubit>(() =>
      _i68.DoubleTrainingWatcherCubit(get<_i22.IDoubleTrainingService>()));
  gh.lazySingleton<_i69.EditProfileImageBloc>(
      () => _i69.EditProfileImageBloc(get<_i34.IUserService>()));
  gh.lazySingleton<_i70.ForgotPasswordBloc>(
      () => _i70.ForgotPasswordBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i71.GameHistoryBloc>(() => _i71.GameHistoryBloc(
      get<_i34.IUserService>(), get<_i24.IGameHistoryService>()));
  gh.lazySingleton<_i13.IAuthService>(
      () => _i72.FirebaseAuthService(
          get<_i8.FirebaseAuth>(),
          get<_i12.GoogleSignIn>(),
          get<_i7.FacebookAuth>(),
          get<_i60.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i73.IFriendService>(
      () => _i74.MockedFriendService(
          get<_i13.IAuthService>(), get<_i34.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i26.IGameInvitationService>(
      () => _i75.GameInvitationService(
          get<_i13.IAuthService>(),
          get<_i9.FirebaseFirestore>(),
          get<_i60.SocialClient>(),
          get<_i5.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i76.IPlayOnlineService>(
      () => _i77.MockedPlayOnlineService(get<_i34.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i34.IUserService>(
      () => _i78.UserService(
          get<_i9.FirebaseFirestore>(),
          get<_i11.FirebaseStorage>(),
          get<_i13.IAuthService>(),
          get<_i60.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i79.InOnlineGameBloc>(
      () => _i79.InOnlineGameBloc(get<_i76.IPlayOnlineService>()));
  gh.lazySingleton<_i80.PlayOnlineWatcherCubit>(
      () => _i80.PlayOnlineWatcherCubit(get<_i76.IPlayOnlineService>()));
  gh.lazySingleton<_i81.SearchUserBloc>(
      () => _i81.SearchUserBloc(get<_i73.IFriendService>()));
  gh.lazySingleton<_i82.CreateOnlineGameBloc>(
      () => _i82.CreateOnlineGameBloc(get<_i76.IPlayOnlineService>()));
  gh.lazySingleton<_i83.CreateOnlineGameCubit>(
      () => _i83.CreateOnlineGameCubit(get<_i76.IPlayOnlineService>()));
  gh.lazySingleton<_i84.FriendsBloc>(
      () => _i84.FriendsBloc(get<_i73.IFriendService>()));
  gh.lazySingleton<_i85.GameInvitationsBloc>(() => _i85.GameInvitationsBloc(
      get<_i76.IPlayOnlineService>(), get<_i26.IGameInvitationService>()));
  gh.lazySingleton<_i86.HomeBloc>(() => _i86.HomeBloc(get<_i34.IUserService>(),
      get<_i26.IGameInvitationService>(), get<_i73.IFriendService>()));
  gh.lazySingleton<_i73.IFriendService>(
      () => _i87.FriendService(
          get<_i13.IAuthService>(),
          get<_i34.IUserService>(),
          get<_i9.FirebaseFirestore>(),
          get<_i60.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i24.IGameHistoryService>(
      () => _i88.GameHistoryService(get<_i9.FirebaseFirestore>(),
          get<_i34.IUserService>(), get<_i73.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i76.IPlayOnlineService>(
      () => _i89.PlayOnlineService(get<_i5.DartClient>(),
          get<_i34.IUserService>(), get<_i73.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i90.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i91.FireBaseInjectableModule {}
