// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:bloc/bloc.dart' as _i5;
import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:cloud_functions/cloud_functions.dart' as _i13;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dart_client/dart_client.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_storage/firebase_storage.dart' as _i14;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i15;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i63;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i75;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i60;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i61;
import 'application/main/friends/friends_bloc.dart' as _i95;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i92;
import 'application/main/game_history/game_history_bloc.dart' as _i76;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i96;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i94;
import 'application/main/home/home_bloc.dart' as _i97;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i69;
import 'application/main/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i85;
import 'application/main/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i88;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i41;
import 'application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i49;
import 'application/main/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i55;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i56;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i93;
import 'application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i86;
import 'application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i89;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i84;
import 'application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i87;
import 'application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i90;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i91;
import 'application/main/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import 'application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i71;
import 'application/main/profile/profile_bloc.dart' as _i57;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i66;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i67;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i68;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i74;
import 'application/main/settings/settings_bloc.dart' as _i59;
import 'application/main/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i39;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i47;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i50;
import 'application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i65;
import 'application/main/training/create_training/create_training_bloc.dart'
    as _i70;
import 'application/main/training/double_training/in_training/in_double_training_bloc.dart'
    as _i40;
import 'application/main/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i46;
import 'application/main/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i53;
import 'application/main/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i73;
import 'application/main/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i45;
import 'application/main/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i51;
import 'application/main/training/score_training/in_training/in_score_training_bloc.dart'
    as _i42;
import 'application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i44;
import 'application/main/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i52;
import 'application/main/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i58;
import 'application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i9;
import 'application/main/training/single_training/in_training/in_single_training_bloc.dart'
    as _i43;
import 'application/main/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i48;
import 'application/main/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i54;
import 'application/main/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i62;
import 'application/shared/auth/auth_bloc.dart' as _i64;
import 'domain/auth/i_auth_service.dart' as _i16;
import 'domain/connectivity/i_connectivity_service.dart' as _i20;
import 'domain/friend/i_friend_service.dart' as _i78;
import 'domain/game_history/i_game_history_service.dart' as _i27;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i29;
import 'domain/play/abstract_game_snapshot.dart' as _i6;
import 'domain/play/abstract_i_play_service.dart' as _i72;
import 'domain/play/i_dart_utils.dart' as _i23;
import 'domain/play/offline/i_play_offline_service.dart' as _i31;
import 'domain/play/online/i_play_online_service.dart' as _i81;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i18;
import 'domain/training/double/i_double_training_service.dart' as _i25;
import 'domain/training/score/i_score_training_service.dart' as _i33;
import 'domain/training/single/i_single_training_service.dart' as _i35;
import 'domain/user/i_user_service.dart' as _i37;
import 'infrastructure/auth/firebase_auth_service.dart' as _i77;
import 'infrastructure/auth/mocked_auth_service.dart' as _i17;
import 'infrastructure/connectivity/connectivity_service.dart' as _i21;
import 'infrastructure/connectivity/mocked_connectivity_service.dart' as _i22;
import 'infrastructure/core/firebase_injectable_module.dart' as _i102;
import 'infrastructure/core/jtd_injectable_module.dart' as _i101;
import 'infrastructure/friend/friend_service.dart' as _i98;
import 'infrastructure/friend/mocked_friend_service.dart' as _i79;
import 'infrastructure/game_history/game_history_service.dart' as _i99;
import 'infrastructure/game_history/mocked_game_history_service.dart' as _i28;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i80;
import 'infrastructure/game_invitation/mocked_game_invitation_service.dart'
    as _i30;
import 'infrastructure/play/dart_utils.dart' as _i24;
import 'infrastructure/play/offline/play_offline_service.dart' as _i32;
import 'infrastructure/play/online/mocked_play_online_service.dart' as _i82;
import 'infrastructure/play/online/play_online_service.dart' as _i100;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i19;
import 'infrastructure/training/double/double_training_service.dart' as _i26;
import 'infrastructure/training/score/score_training_service.dart' as _i34;
import 'infrastructure/training/single/single_training_service.dart' as _i36;
import 'infrastructure/user/mocked_user_service.dart' as _i38;
import 'infrastructure/user/user_service.dart' as _i83;

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
  gh.factory<_i3.AddPlayerBloc>(() => _i3.AddPlayerBloc());
  gh.factoryParam<_i4.AdvancedSettingsBloc,
          _i5.Cubit<_i6.AbstractGameSnapshot>?, dynamic>(
      (playWatcherCubit, _) => _i4.AdvancedSettingsBloc(playWatcherCubit));
  gh.lazySingleton<_i7.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i8.DartClient>(() => jtdInjectableModule.dartClient);
  gh.factory<_i9.DartsDisplayerBloc>(() => _i9.DartsDisplayerBloc());
  gh.lazySingleton<_i10.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i11.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i12.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i13.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i14.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i15.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.lazySingleton<_i16.IAuthService>(() => _i17.MockedAuthService.inject(),
      registerFor: {_dev});
  gh.lazySingleton<_i18.IBobsTwentySevenService>(
      () => _i19.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i20.IConnectivityService>(
      () => _i21.ConnectivityService(get<_i7.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i20.IConnectivityService>(
      () => _i22.MockedConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IDartUtils>(() => _i24.DartUtils());
  gh.lazySingleton<_i25.IDoubleTrainingService>(
      () => _i26.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i27.IGameHistoryService>(
      () => _i28.MockedGameHistoryService(get<_i16.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i29.IGameInvitationService>(
      () => _i30.MockedGameInvitationService(get<_i16.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i31.IPlayOfflineService>(() => _i32.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i33.IScoreTrainingService>(
      () => _i34.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i35.ISingleTrainingService>(
      () => _i36.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i37.IUserService>(
      () => _i38.MockedUserService(get<_i16.IAuthService>()),
      registerFor: {_dev});
  gh.factory<_i39.InBobsTwentySevenBloc>(
      () => _i39.InBobsTwentySevenBloc(get<_i18.IBobsTwentySevenService>()));
  gh.factory<_i40.InDoubleTrainingBloc>(
      () => _i40.InDoubleTrainingBloc(get<_i25.IDoubleTrainingService>()));
  gh.factory<_i41.InOfflineGameBloc>(
      () => _i41.InOfflineGameBloc(get<_i31.IPlayOfflineService>()));
  gh.factory<_i42.InScoreTrainingBloc>(
      () => _i42.InScoreTrainingBloc(get<_i33.IScoreTrainingService>()));
  gh.factory<_i43.InSingleTrainingBloc>(
      () => _i43.InSingleTrainingBloc(get<_i35.ISingleTrainingService>()));
  gh.factory<_i44.InputRowBloc>(
      () => _i44.InputRowBloc(get<_i33.IScoreTrainingService>()));
  gh.factoryParam<_i45.InputRowBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i45.InputRowBloc(get<_i33.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i46.InputRowBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i46.InputRowBloc(get<_i25.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i47.InputRowBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i47.InputRowBloc(
          get<_i18.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i48.InputRowBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i48.InputRowBloc(get<_i35.ISingleTrainingService>(), otherDependencies));
  gh.factory<_i49.InputRowBlocOfflineStandardInputArea>(() =>
      _i49.InputRowBlocOfflineStandardInputArea(get<_i23.IDartUtils>(),
          get<_i31.IPlayOfflineService>(), get<_i41.InOfflineGameBloc>()));
  gh.factoryParam<_i50.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i50.KeyBoardBloc(
          get<_i18.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i51.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i51.KeyBoardBloc(otherDependencies));
  gh.factoryParam<_i52.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) =>
          _i52.KeyBoardBloc(get<_i23.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i53.KeyBoardBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i53.KeyBoardBloc(get<_i25.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i54.KeyBoardBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i54.KeyBoardBloc(get<_i35.ISingleTrainingService>(), otherDependencies));
  gh.factory<_i55.KeyBoardBlocOfflineStandardInputArea>(() =>
      _i55.KeyBoardBlocOfflineStandardInputArea(
          get<_i23.IDartUtils>(),
          get<_i31.IPlayOfflineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i49.InputRowBlocOfflineStandardInputArea>()));
  gh.factory<_i56.PlayOfflineWatcherCubit>(() => _i56.PlayOfflineWatcherCubit(
      get<_i31.IPlayOfflineService>(), get<_i37.IUserService>()));
  gh.lazySingleton<_i57.ProfileBloc>(
      () => _i57.ProfileBloc(get<_i37.IUserService>()));
  gh.factory<_i58.ScoreTrainingWatcherCubit>(
      () => _i58.ScoreTrainingWatcherCubit(get<_i33.IScoreTrainingService>()));
  gh.lazySingleton<_i59.SettingsBloc>(() =>
      _i59.SettingsBloc(get<_i16.IAuthService>(), get<_i37.IUserService>()));
  gh.factory<_i60.SignInBloc>(() => _i60.SignInBloc(get<_i16.IAuthService>()));
  gh.factory<_i61.SignUpBloc>(() => _i61.SignUpBloc(get<_i16.IAuthService>()));
  gh.factory<_i62.SingleTrainingWatcherCubit>(() =>
      _i62.SingleTrainingWatcherCubit(get<_i35.ISingleTrainingService>()));
  gh.lazySingleton<_i63.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i64.AuthBloc>(() => _i64.AuthBloc(get<_i16.IAuthService>()));
  gh.factory<_i65.BobsTwentySevenWatcherCubit>(() =>
      _i65.BobsTwentySevenWatcherCubit(get<_i18.IBobsTwentySevenService>()));
  gh.lazySingleton<_i66.ChangeEmailBloc>(
      () => _i66.ChangeEmailBloc(get<_i37.IUserService>()));
  gh.lazySingleton<_i67.ChangePasswordBloc>(
      () => _i67.ChangePasswordBloc(get<_i16.IAuthService>()));
  gh.lazySingleton<_i68.ChangeUsernameBloc>(
      () => _i68.ChangeUsernameBloc(get<_i37.IUserService>()));
  gh.factory<_i69.CreateOfflineGameBloc>(
      () => _i69.CreateOfflineGameBloc(get<_i31.IPlayOfflineService>()));
  gh.factory<_i70.CreateTrainingBloc>(() => _i70.CreateTrainingBloc(
      get<_i35.ISingleTrainingService>(),
      get<_i25.IDoubleTrainingService>(),
      get<_i33.IScoreTrainingService>(),
      get<_i18.IBobsTwentySevenService>(),
      get<_i37.IUserService>()));
  gh.factoryParam<_i71.DartsDisplayerBloc, _i72.AbstractIPlayService?, dynamic>(
      (playService, _) =>
          _i71.DartsDisplayerBloc(get<_i23.IDartUtils>(), playService));
  gh.factory<_i73.DoubleTrainingWatcherCubit>(() =>
      _i73.DoubleTrainingWatcherCubit(get<_i25.IDoubleTrainingService>()));
  gh.lazySingleton<_i74.EditProfileImageBloc>(
      () => _i74.EditProfileImageBloc(get<_i37.IUserService>()));
  gh.factory<_i75.ForgotPasswordBloc>(
      () => _i75.ForgotPasswordBloc(get<_i16.IAuthService>()));
  gh.lazySingleton<_i76.GameHistoryBloc>(() => _i76.GameHistoryBloc(
      get<_i37.IUserService>(), get<_i27.IGameHistoryService>()));
  gh.lazySingleton<_i16.IAuthService>(
      () => _i77.FirebaseAuthService(
          get<_i11.FirebaseAuth>(),
          get<_i15.GoogleSignIn>(),
          get<_i10.FacebookAuth>(),
          get<_i63.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i78.IFriendService>(
      () => _i79.MockedFriendService(
          get<_i16.IAuthService>(), get<_i37.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i29.IGameInvitationService>(
      () => _i80.GameInvitationService(
          get<_i16.IAuthService>(),
          get<_i12.FirebaseFirestore>(),
          get<_i63.SocialClient>(),
          get<_i8.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i81.IPlayOnlineService>(
      () => _i82.MockedPlayOnlineService(get<_i37.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i37.IUserService>(
      () => _i83.UserService(
          get<_i12.FirebaseFirestore>(),
          get<_i14.FirebaseStorage>(),
          get<_i16.IAuthService>(),
          get<_i63.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factory<_i84.InOnlineGameBloc>(
      () => _i84.InOnlineGameBloc(get<_i81.IPlayOnlineService>()));
  gh.factory<_i85.InputRowBlocOfflineDetailedInputArea>(() =>
      _i85.InputRowBlocOfflineDetailedInputArea(
          get<_i31.IPlayOfflineService>(), get<_i71.DartsDisplayerBloc>()));
  gh.factory<_i86.InputRowBlocOnlineDetailedInputArea>(() =>
      _i86.InputRowBlocOnlineDetailedInputArea(
          get<_i81.IPlayOnlineService>(), get<_i71.DartsDisplayerBloc>()));
  gh.factory<_i87.InputRowBlocOnlineStandardInputArea>(() =>
      _i87.InputRowBlocOnlineStandardInputArea(get<_i23.IDartUtils>(),
          get<_i81.IPlayOnlineService>(), get<_i84.InOnlineGameBloc>()));
  gh.factory<_i88.KeyBoardBlocOfflineDetailedInputArea>(() =>
      _i88.KeyBoardBlocOfflineDetailedInputArea(
          get<_i23.IDartUtils>(),
          get<_i31.IPlayOfflineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i71.DartsDisplayerBloc>()));
  gh.factory<_i89.KeyBoardBlocOnlineDetailedInputArea>(() =>
      _i89.KeyBoardBlocOnlineDetailedInputArea(
          get<_i23.IDartUtils>(),
          get<_i81.IPlayOnlineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i71.DartsDisplayerBloc>()));
  gh.factory<_i90.KeyBoardBlocOnlineStandardInputArea>(() =>
      _i90.KeyBoardBlocOnlineStandardInputArea(
          get<_i23.IDartUtils>(),
          get<_i81.IPlayOnlineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i87.InputRowBlocOnlineStandardInputArea>()));
  gh.factory<_i91.PlayOnlineWatcherCubit>(
      () => _i91.PlayOnlineWatcherCubit(get<_i81.IPlayOnlineService>()));
  gh.lazySingleton<_i92.SearchUserBloc>(
      () => _i92.SearchUserBloc(get<_i78.IFriendService>()));
  gh.factory<_i93.CreateOnlineGameBloc>(
      () => _i93.CreateOnlineGameBloc(get<_i81.IPlayOnlineService>()));
  gh.lazySingleton<_i94.CreateOnlineGameCubit>(
      () => _i94.CreateOnlineGameCubit(get<_i81.IPlayOnlineService>()));
  gh.lazySingleton<_i95.FriendsBloc>(
      () => _i95.FriendsBloc(get<_i78.IFriendService>()));
  gh.lazySingleton<_i96.GameInvitationsBloc>(() => _i96.GameInvitationsBloc(
      get<_i81.IPlayOnlineService>(), get<_i29.IGameInvitationService>()));
  gh.lazySingleton<_i97.HomeBloc>(() => _i97.HomeBloc(get<_i37.IUserService>(),
      get<_i29.IGameInvitationService>(), get<_i78.IFriendService>()));
  gh.lazySingleton<_i78.IFriendService>(
      () => _i98.FriendService(
          get<_i16.IAuthService>(),
          get<_i37.IUserService>(),
          get<_i12.FirebaseFirestore>(),
          get<_i63.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i27.IGameHistoryService>(
      () => _i99.GameHistoryService(get<_i12.FirebaseFirestore>(),
          get<_i37.IUserService>(), get<_i78.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i81.IPlayOnlineService>(
      () => _i100.PlayOnlineService(get<_i8.DartClient>(),
          get<_i37.IUserService>(), get<_i78.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i101.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i102.FireBaseInjectableModule {}
