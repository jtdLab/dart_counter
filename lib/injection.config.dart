// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:bloc/bloc.dart' as _i5;
import 'package:cloud_firestore/cloud_firestore.dart' as _i13;
import 'package:cloud_functions/cloud_functions.dart' as _i14;
import 'package:connectivity_plus/connectivity_plus.dart' as _i8;
import 'package:dart_client/dart_client.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i12;
import 'package:firebase_storage/firebase_storage.dart' as _i15;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i16;
import 'package:image_picker/image_picker.dart' as _i40;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i65;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i77;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i62;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i63;
import 'application/main/friends/friends_bloc.dart' as _i97;
import 'application/main/friends/more/more_bloc.dart' as _i103;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i94;
import 'application/main/game_history/game_history_bloc.dart' as _i78;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i98;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i96;
import 'application/main/home/home_bloc.dart' as _i99;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i71;
import 'application/main/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i87;
import 'application/main/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i90;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i43;
import 'application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i51;
import 'application/main/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i57;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i58;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i95;
import 'application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i88;
import 'application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i91;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i86;
import 'application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i89;
import 'application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i92;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i93;
import 'application/main/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import 'application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i73;
import 'application/main/profile/profile_bloc.dart' as _i59;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i68;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i69;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i70;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i76;
import 'application/main/settings/settings_bloc.dart' as _i61;
import 'application/main/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i41;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i47;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i52;
import 'application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i67;
import 'application/main/training/create_training/create_training_bloc.dart'
    as _i72;
import 'application/main/training/double_training/in_training/in_double_training_bloc.dart'
    as _i42;
import 'application/main/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i46;
import 'application/main/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i53;
import 'application/main/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i75;
import 'application/main/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i49;
import 'application/main/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i54;
import 'application/main/training/score_training/in_training/in_score_training_bloc.dart'
    as _i44;
import 'application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i48;
import 'application/main/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i55;
import 'application/main/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i60;
import 'application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i10;
import 'application/main/training/single_training/in_training/in_single_training_bloc.dart'
    as _i45;
import 'application/main/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i50;
import 'application/main/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i56;
import 'application/main/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i64;
import 'application/shared/auth/auth_bloc.dart' as _i66;
import 'domain/auth/i_auth_service.dart' as _i17;
import 'domain/connectivity/i_connectivity_service.dart' as _i21;
import 'domain/friend/i_friend_service.dart' as _i80;
import 'domain/game_history/i_game_history_service.dart' as _i28;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i30;
import 'domain/play/abstract_game_snapshot.dart' as _i6;
import 'domain/play/abstract_i_play_service.dart' as _i74;
import 'domain/play/i_dart_utils.dart' as _i24;
import 'domain/play/offline/i_play_offline_service.dart' as _i32;
import 'domain/play/online/i_play_online_service.dart' as _i83;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i19;
import 'domain/training/double/i_double_training_service.dart' as _i26;
import 'domain/training/score/i_score_training_service.dart' as _i34;
import 'domain/training/single/i_single_training_service.dart' as _i36;
import 'domain/user/i_user_service.dart' as _i38;
import 'infrastructure/auth/apple_sign_in.dart' as _i7;
import 'infrastructure/auth/fake_auth_service.dart' as _i18;
import 'infrastructure/auth/firebase_auth_service.dart' as _i79;
import 'infrastructure/connectivity/connectivity_service.dart' as _i22;
import 'infrastructure/connectivity/fake_connectivity_service.dart' as _i23;
import 'infrastructure/core/firebase_injectable_module.dart' as _i105;
import 'infrastructure/core/jtd_injectable_module.dart' as _i104;
import 'infrastructure/friend/fake_friend_service.dart' as _i81;
import 'infrastructure/friend/friend_service.dart' as _i100;
import 'infrastructure/game_history/fake_game_history_service.dart' as _i29;
import 'infrastructure/game_history/game_history_service.dart' as _i101;
import 'infrastructure/game_invitation/fake_game_invitation_service.dart'
    as _i31;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i82;
import 'infrastructure/play/dart_utils.dart' as _i25;
import 'infrastructure/play/offline/play_offline_service.dart' as _i33;
import 'infrastructure/play/online/fake_play_online_service.dart' as _i84;
import 'infrastructure/play/online/play_online_service.dart' as _i102;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i20;
import 'infrastructure/training/double/double_training_service.dart' as _i27;
import 'infrastructure/training/score/score_training_service.dart' as _i35;
import 'infrastructure/training/single/single_training_service.dart' as _i37;
import 'infrastructure/user/fake_user_service.dart' as _i39;
import 'infrastructure/user/user_service.dart' as _i85;

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
  gh.lazySingleton<_i7.AppleSignIn>(() => _i7.AppleSignIn.inject());
  gh.lazySingleton<_i8.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i9.DartClient>(() => jtdInjectableModule.dartClient);
  gh.factory<_i10.DartsDisplayerBloc>(() => _i10.DartsDisplayerBloc());
  gh.lazySingleton<_i11.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i12.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i13.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i14.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i15.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i16.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.lazySingleton<_i17.IAuthService>(
      () => _i18.FakeAuthService.inject(get<_i7.AppleSignIn>(),
          get<_i16.GoogleSignIn>(), get<_i11.FacebookAuth>()),
      registerFor: {_dev});
  gh.lazySingleton<_i19.IBobsTwentySevenService>(
      () => _i20.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i21.IConnectivityService>(
      () => _i22.ConnectivityService(get<_i8.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IConnectivityService>(
      () => _i23.FakeConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i24.IDartUtils>(() => _i25.DartUtils());
  gh.lazySingleton<_i26.IDoubleTrainingService>(
      () => _i27.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i28.IGameHistoryService>(
      () => _i29.FakeGameHistoryService(get<_i17.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i30.IGameInvitationService>(
      () => _i31.FakeGameInvitationService(get<_i17.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i32.IPlayOfflineService>(() => _i33.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i34.IScoreTrainingService>(
      () => _i35.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i36.ISingleTrainingService>(
      () => _i37.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i38.IUserService>(
      () => _i39.FakeUserService(get<_i17.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i40.ImagePicker>(() => jtdInjectableModule.imagePicker);
  gh.factory<_i41.InBobsTwentySevenBloc>(
      () => _i41.InBobsTwentySevenBloc(get<_i19.IBobsTwentySevenService>()));
  gh.factory<_i42.InDoubleTrainingBloc>(
      () => _i42.InDoubleTrainingBloc(get<_i26.IDoubleTrainingService>()));
  gh.factory<_i43.InOfflineGameBloc>(
      () => _i43.InOfflineGameBloc(get<_i32.IPlayOfflineService>()));
  gh.factory<_i44.InScoreTrainingBloc>(
      () => _i44.InScoreTrainingBloc(get<_i34.IScoreTrainingService>()));
  gh.factory<_i45.InSingleTrainingBloc>(
      () => _i45.InSingleTrainingBloc(get<_i36.ISingleTrainingService>()));
  gh.factoryParam<_i46.InputRowBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i46.InputRowBloc(get<_i26.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i47.InputRowBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i47.InputRowBloc(
          get<_i19.IBobsTwentySevenService>(), otherDependencies));
  gh.factory<_i48.InputRowBloc>(
      () => _i48.InputRowBloc(get<_i34.IScoreTrainingService>()));
  gh.factoryParam<_i49.InputRowBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i49.InputRowBloc(get<_i34.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i50.InputRowBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i50.InputRowBloc(get<_i36.ISingleTrainingService>(), otherDependencies));
  gh.factory<_i51.InputRowBlocOfflineStandardInputArea>(() =>
      _i51.InputRowBlocOfflineStandardInputArea(get<_i24.IDartUtils>(),
          get<_i32.IPlayOfflineService>(), get<_i43.InOfflineGameBloc>()));
  gh.factoryParam<_i52.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i52.KeyBoardBloc(
          get<_i19.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i53.KeyBoardBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i53.KeyBoardBloc(get<_i26.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i54.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i54.KeyBoardBloc(otherDependencies));
  gh.factoryParam<_i55.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) =>
          _i55.KeyBoardBloc(get<_i24.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i56.KeyBoardBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i56.KeyBoardBloc(get<_i36.ISingleTrainingService>(), otherDependencies));
  gh.factory<_i57.KeyBoardBlocOfflineStandardInputArea>(() =>
      _i57.KeyBoardBlocOfflineStandardInputArea(
          get<_i24.IDartUtils>(),
          get<_i32.IPlayOfflineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i51.InputRowBlocOfflineStandardInputArea>()));
  gh.factory<_i58.PlayOfflineWatcherCubit>(() => _i58.PlayOfflineWatcherCubit(
      get<_i32.IPlayOfflineService>(), get<_i38.IUserService>()));
  gh.factory<_i59.ProfileBloc>(
      () => _i59.ProfileBloc(get<_i38.IUserService>()));
  gh.factory<_i60.ScoreTrainingWatcherCubit>(
      () => _i60.ScoreTrainingWatcherCubit(get<_i34.IScoreTrainingService>()));
  gh.factory<_i61.SettingsBloc>(() =>
      _i61.SettingsBloc(get<_i17.IAuthService>(), get<_i38.IUserService>()));
  gh.factory<_i62.SignInBloc>(() => _i62.SignInBloc(get<_i17.IAuthService>()));
  gh.factory<_i63.SignUpBloc>(() => _i63.SignUpBloc(get<_i17.IAuthService>()));
  gh.factory<_i64.SingleTrainingWatcherCubit>(() =>
      _i64.SingleTrainingWatcherCubit(get<_i36.ISingleTrainingService>()));
  gh.lazySingleton<_i65.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i66.AuthBloc>(() => _i66.AuthBloc(get<_i17.IAuthService>()));
  gh.factory<_i67.BobsTwentySevenWatcherCubit>(() =>
      _i67.BobsTwentySevenWatcherCubit(get<_i19.IBobsTwentySevenService>()));
  gh.factory<_i68.ChangeEmailBloc>(
      () => _i68.ChangeEmailBloc(get<_i38.IUserService>()));
  gh.factory<_i69.ChangePasswordBloc>(
      () => _i69.ChangePasswordBloc(get<_i17.IAuthService>()));
  gh.factory<_i70.ChangeUsernameBloc>(
      () => _i70.ChangeUsernameBloc(get<_i38.IUserService>()));
  gh.factory<_i71.CreateOfflineGameBloc>(
      () => _i71.CreateOfflineGameBloc(get<_i32.IPlayOfflineService>()));
  gh.factory<_i72.CreateTrainingBloc>(() => _i72.CreateTrainingBloc(
      get<_i36.ISingleTrainingService>(),
      get<_i26.IDoubleTrainingService>(),
      get<_i34.IScoreTrainingService>(),
      get<_i19.IBobsTwentySevenService>(),
      get<_i38.IUserService>()));
  gh.factoryParam<_i73.DartsDisplayerBloc, _i74.AbstractIPlayService?, dynamic>(
      (playService, _) =>
          _i73.DartsDisplayerBloc(get<_i24.IDartUtils>(), playService));
  gh.factory<_i75.DoubleTrainingWatcherCubit>(() =>
      _i75.DoubleTrainingWatcherCubit(get<_i26.IDoubleTrainingService>()));
  gh.factory<_i76.EditProfileImageBloc>(() => _i76.EditProfileImageBloc(
      get<_i40.ImagePicker>(), get<_i38.IUserService>()));
  gh.factory<_i77.ForgotPasswordBloc>(
      () => _i77.ForgotPasswordBloc(get<_i17.IAuthService>()));
  gh.factory<_i78.GameHistoryBloc>(() => _i78.GameHistoryBloc(
      get<_i38.IUserService>(), get<_i28.IGameHistoryService>()));
  gh.lazySingleton<_i17.IAuthService>(
      () => _i79.FirebaseAuthService.inject(
          get<_i12.FirebaseAuth>(),
          get<_i7.AppleSignIn>(),
          get<_i16.GoogleSignIn>(),
          get<_i11.FacebookAuth>(),
          get<_i65.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i80.IFriendService>(
      () => _i81.FakeFriendService(
          get<_i17.IAuthService>(), get<_i38.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i30.IGameInvitationService>(
      () => _i82.GameInvitationService(
          get<_i17.IAuthService>(),
          get<_i13.FirebaseFirestore>(),
          get<_i65.SocialClient>(),
          get<_i9.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i83.IPlayOnlineService>(
      () => _i84.FakePlayOnlineService(get<_i38.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i38.IUserService>(
      () => _i85.UserService(
          get<_i13.FirebaseFirestore>(),
          get<_i15.FirebaseStorage>(),
          get<_i17.IAuthService>(),
          get<_i65.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factory<_i86.InOnlineGameBloc>(
      () => _i86.InOnlineGameBloc(get<_i83.IPlayOnlineService>()));
  gh.factory<_i87.InputRowBlocOfflineDetailedInputArea>(() =>
      _i87.InputRowBlocOfflineDetailedInputArea(
          get<_i32.IPlayOfflineService>(), get<_i73.DartsDisplayerBloc>()));
  gh.factory<_i88.InputRowBlocOnlineDetailedInputArea>(() =>
      _i88.InputRowBlocOnlineDetailedInputArea(
          get<_i83.IPlayOnlineService>(), get<_i73.DartsDisplayerBloc>()));
  gh.factory<_i89.InputRowBlocOnlineStandardInputArea>(() =>
      _i89.InputRowBlocOnlineStandardInputArea(get<_i24.IDartUtils>(),
          get<_i83.IPlayOnlineService>(), get<_i86.InOnlineGameBloc>()));
  gh.factory<_i90.KeyBoardBlocOfflineDetailedInputArea>(() =>
      _i90.KeyBoardBlocOfflineDetailedInputArea(
          get<_i24.IDartUtils>(),
          get<_i32.IPlayOfflineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i73.DartsDisplayerBloc>()));
  gh.factory<_i91.KeyBoardBlocOnlineDetailedInputArea>(() =>
      _i91.KeyBoardBlocOnlineDetailedInputArea(
          get<_i24.IDartUtils>(),
          get<_i83.IPlayOnlineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i73.DartsDisplayerBloc>()));
  gh.factory<_i92.KeyBoardBlocOnlineStandardInputArea>(() =>
      _i92.KeyBoardBlocOnlineStandardInputArea(
          get<_i24.IDartUtils>(),
          get<_i83.IPlayOnlineService>(),
          get<_i4.AdvancedSettingsBloc>(),
          get<_i89.InputRowBlocOnlineStandardInputArea>()));
  gh.factory<_i93.PlayOnlineWatcherCubit>(
      () => _i93.PlayOnlineWatcherCubit(get<_i83.IPlayOnlineService>()));
  gh.factory<_i94.SearchUserBloc>(
      () => _i94.SearchUserBloc(get<_i80.IFriendService>()));
  gh.factory<_i95.CreateOnlineGameBloc>(
      () => _i95.CreateOnlineGameBloc(get<_i83.IPlayOnlineService>()));
  gh.factory<_i96.CreateOnlineGameCubit>(
      () => _i96.CreateOnlineGameCubit(get<_i83.IPlayOnlineService>()));
  gh.factory<_i97.FriendsBloc>(
      () => _i97.FriendsBloc(get<_i80.IFriendService>()));
  gh.factory<_i98.GameInvitationsBloc>(() => _i98.GameInvitationsBloc(
      get<_i83.IPlayOnlineService>(), get<_i30.IGameInvitationService>()));
  gh.factory<_i99.HomeBloc>(() => _i99.HomeBloc(get<_i38.IUserService>(),
      get<_i30.IGameInvitationService>(), get<_i80.IFriendService>()));
  gh.lazySingleton<_i80.IFriendService>(
      () => _i100.FriendService(
          get<_i17.IAuthService>(),
          get<_i38.IUserService>(),
          get<_i13.FirebaseFirestore>(),
          get<_i65.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i28.IGameHistoryService>(
      () => _i101.GameHistoryService(get<_i13.FirebaseFirestore>(),
          get<_i38.IUserService>(), get<_i80.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i83.IPlayOnlineService>(
      () => _i102.PlayOnlineService(get<_i9.DartClient>(),
          get<_i38.IUserService>(), get<_i80.IFriendService>()),
      registerFor: {_test, _prod});
  gh.factory<_i103.MoreBloc>(() =>
      _i103.MoreBloc(get<_i80.IFriendService>(), get<_i97.FriendsBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i104.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i105.FireBaseInjectableModule {}
