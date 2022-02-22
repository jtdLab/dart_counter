// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:cloud_functions/cloud_functions.dart' as _i13;
import 'package:connectivity_plus/connectivity_plus.dart' as _i6;
import 'package:dart_client/dart_client.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_storage/firebase_storage.dart' as _i14;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i9;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i15;
import 'package:image_picker/image_picker.dart' as _i42;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i75;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i87;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i72;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i73;
import 'application/main/core/friends/friends_cubit.dart' as _i89;
import 'application/main/core/game_invitations/game_invitations_cubit.dart'
    as _i91;
import 'application/main/core/play/offline/play_offline_cubit.dart' as _i65;
import 'application/main/core/play/online/play_online_cubit.dart' as _i67;
import 'application/main/core/user/user_cubit.dart' as _i76;
import 'application/main/friends/friends_bloc.dart' as _i88;
import 'application/main/friends/more/more_bloc.dart' as _i64;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i70;
import 'application/main/game_history/game_history_bloc.dart' as _i90;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i103;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i102;
import 'application/main/home/home_bloc.dart' as _i16;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i82;
import 'application/main/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i53;
import 'application/main/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i60;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i45;
import 'application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i54;
import 'application/main/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i61;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i66;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i101;
import 'application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i98;
import 'application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i62;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i97;
import 'application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i99;
import 'application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i63;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i100;
import 'application/main/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import 'application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i84;
import 'application/main/profile/profile_bloc.dart' as _i68;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i79;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i80;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i81;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i86;
import 'application/main/settings/settings_bloc.dart' as _i71;
import 'application/main/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i43;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i51;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i55;
import 'application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i78;
import 'application/main/training/create_training/create_training_bloc.dart'
    as _i83;
import 'application/main/training/double_training/in_training/in_double_training_bloc.dart'
    as _i44;
import 'application/main/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i49;
import 'application/main/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i56;
import 'application/main/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i85;
import 'application/main/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i48;
import 'application/main/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i57;
import 'application/main/training/score_training/in_training/in_score_training_bloc.dart'
    as _i46;
import 'application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i52;
import 'application/main/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i58;
import 'application/main/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i69;
import 'application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i8;
import 'application/main/training/single_training/in_training/in_single_training_bloc.dart'
    as _i47;
import 'application/main/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i50;
import 'application/main/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i59;
import 'application/main/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i74;
import 'application/shared/auth/auth_bloc.dart' as _i77;
import 'domain/auth/i_auth_service.dart' as _i17;
import 'domain/connectivity/i_connectivity_service.dart' as _i21;
import 'domain/friend/i_friend_service.dart' as _i28;
import 'domain/game_history/i_game_history_service.dart' as _i30;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i32;
import 'domain/play/i_dart_utils.dart' as _i24;
import 'domain/play/offline/i_play_offline_service.dart' as _i34;
import 'domain/play/online/i_play_online_service.dart' as _i94;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i19;
import 'domain/training/double/i_double_training_service.dart' as _i26;
import 'domain/training/score/i_score_training_service.dart' as _i36;
import 'domain/training/single/i_single_training_service.dart' as _i38;
import 'domain/user/i_user_service.dart' as _i40;
import 'infrastructure/auth/apple_sign_in.dart' as _i5;
import 'infrastructure/auth/fake_auth_service.dart' as _i18;
import 'infrastructure/auth/firebase_auth_service.dart' as _i92;
import 'infrastructure/connectivity/connectivity_service.dart' as _i22;
import 'infrastructure/connectivity/fake_connectivity_service.dart' as _i23;
import 'infrastructure/core/firebase_injectable_module.dart' as _i108;
import 'infrastructure/core/jtd_injectable_module.dart' as _i107;
import 'infrastructure/friend/fake_friend_service.dart' as _i29;
import 'infrastructure/friend/friend_service.dart' as _i104;
import 'infrastructure/game_history/fake_game_history_service.dart' as _i31;
import 'infrastructure/game_history/game_history_service.dart' as _i105;
import 'infrastructure/game_invitation/fake_game_invitation_service.dart'
    as _i33;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i93;
import 'infrastructure/play/dart_utils.dart' as _i25;
import 'infrastructure/play/offline/play_offline_service.dart' as _i35;
import 'infrastructure/play/online/fake_play_online_service.dart' as _i95;
import 'infrastructure/play/online/play_online_service.dart' as _i106;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i20;
import 'infrastructure/training/double/double_training_service.dart' as _i27;
import 'infrastructure/training/score/score_training_service.dart' as _i37;
import 'infrastructure/training/single/single_training_service.dart' as _i39;
import 'infrastructure/user/fake_user_service.dart' as _i41;
import 'infrastructure/user/user_service.dart' as _i96;

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
  gh.factoryParam<_i4.AdvancedSettingsBloc, List<Object>, dynamic>(
      (otherDependencies, _) =>
          _i4.AdvancedSettingsBloc.injectable(otherDependencies));
  gh.lazySingleton<_i5.AppleSignIn>(() => _i5.AppleSignIn.injectable());
  gh.lazySingleton<_i6.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i7.DartClient>(() => jtdInjectableModule.dartClient);
  gh.factory<_i8.DartsDisplayerBloc>(() => _i8.DartsDisplayerBloc());
  gh.lazySingleton<_i9.DefaultCacheManager>(() => jtdInjectableModule.cache);
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
  gh.factoryParam<_i16.HomeBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i16.HomeBloc.injectable(otherDependencies));
  gh.lazySingleton<_i17.IAuthService>(
      () => _i18.FakeAuthService.injectable(get<_i5.AppleSignIn>(),
          get<_i15.GoogleSignIn>(), get<_i10.FacebookAuth>()),
      registerFor: {_dev});
  gh.lazySingleton<_i19.IBobsTwentySevenService>(
      () => _i20.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i21.IConnectivityService>(
      () => _i22.ConnectivityService(get<_i6.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IConnectivityService>(
      () => _i23.FakeConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i24.IDartUtils>(() => _i25.DartUtils());
  gh.lazySingleton<_i26.IDoubleTrainingService>(
      () => _i27.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i28.IFriendService>(
      () => _i29.FakeFriendService(get<_i17.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i30.IGameHistoryService>(
      () => _i31.FakeGameHistoryService(get<_i17.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i32.IGameInvitationService>(
      () => _i33.FakeGameInvitationService(get<_i17.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i34.IPlayOfflineService>(() => _i35.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i36.IScoreTrainingService>(
      () => _i37.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i38.ISingleTrainingService>(
      () => _i39.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i40.IUserService>(
      () => _i41.FakeUserService(get<_i17.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i42.ImagePicker>(() => jtdInjectableModule.imagePicker);
  gh.factory<_i43.InBobsTwentySevenBloc>(
      () => _i43.InBobsTwentySevenBloc(get<_i19.IBobsTwentySevenService>()));
  gh.factory<_i44.InDoubleTrainingBloc>(
      () => _i44.InDoubleTrainingBloc(get<_i26.IDoubleTrainingService>()));
  gh.factory<_i45.InOfflineGameBloc>(
      () => _i45.InOfflineGameBloc(get<_i34.IPlayOfflineService>()));
  gh.factory<_i46.InScoreTrainingBloc>(
      () => _i46.InScoreTrainingBloc(get<_i36.IScoreTrainingService>()));
  gh.factory<_i47.InSingleTrainingBloc>(
      () => _i47.InSingleTrainingBloc(get<_i38.ISingleTrainingService>()));
  gh.factoryParam<_i48.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i48.InputRowBloc.injectable(
          get<_i36.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i49.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i49.InputRowBloc.injectable(
          get<_i26.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i50.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i50.InputRowBloc.injectable(
          get<_i38.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i51.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i51.InputRowBloc.injectable(
          get<_i19.IBobsTwentySevenService>(), otherDependencies));
  gh.factory<_i52.InputRowBloc>(
      () => _i52.InputRowBloc(get<_i36.IScoreTrainingService>()));
  gh.factoryParam<_i53.InputRowBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i53.InputRowBlocOfflineDetailedInputArea.injectable(
              get<_i34.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i54.InputRowBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i54.InputRowBlocOfflineStandardInputArea.injectable(
              get<_i24.IDartUtils>(),
              get<_i34.IPlayOfflineService>(),
              otherDependencies));
  gh.factoryParam<_i55.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i55.KeyBoardBloc.injectable(
          get<_i19.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i56.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i56.KeyBoardBloc.injectable(
          get<_i26.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i57.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) =>
          _i57.KeyBoardBloc.injectable(otherDependencies));
  gh.factoryParam<_i58.KeyBoardBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i58.KeyBoardBloc.injectable(get<_i24.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i59.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i59.KeyBoardBloc.injectable(
          get<_i38.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i60.KeyBoardBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i60.KeyBoardBlocOfflineDetailedInputArea.injectable(
              get<_i24.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i61.KeyBoardBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i61.KeyBoardBlocOfflineStandardInputArea.injectable(
              get<_i24.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i62.KeyBoardBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i62.KeyBoardBlocOnlineDetailedInputArea.injectable(
              get<_i24.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i63.KeyBoardBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i63.KeyBoardBlocOnlineStandardInputArea.injectable(
              get<_i24.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i64.MoreBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i64.MoreBloc.injectable(get<_i28.IFriendService>(), otherDependencies));
  gh.factory<_i65.PlayOfflineCubit>(() => _i65.PlayOfflineCubit());
  gh.factoryParam<_i66.PlayOfflineWatcherCubit, List<Object>, dynamic>(
      (otherDependencies, _) => _i66.PlayOfflineWatcherCubit.injectable(
          get<_i34.IPlayOfflineService>(), otherDependencies));
  gh.factory<_i67.PlayOnlineCubit>(() => _i67.PlayOnlineCubit());
  gh.factoryParam<_i68.ProfileBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i68.ProfileBloc.injectable(otherDependencies));
  gh.factory<_i69.ScoreTrainingWatcherCubit>(
      () => _i69.ScoreTrainingWatcherCubit(get<_i36.IScoreTrainingService>()));
  gh.factory<_i70.SearchUserBloc>(
      () => _i70.SearchUserBloc(get<_i28.IFriendService>()));
  gh.factory<_i71.SettingsBloc>(
      () => _i71.SettingsBloc(get<_i17.IAuthService>()));
  gh.factory<_i72.SignInBloc>(() => _i72.SignInBloc(get<_i17.IAuthService>()));
  gh.factory<_i73.SignUpBloc>(() => _i73.SignUpBloc(get<_i17.IAuthService>()));
  gh.factory<_i74.SingleTrainingWatcherCubit>(() =>
      _i74.SingleTrainingWatcherCubit(get<_i38.ISingleTrainingService>()));
  gh.lazySingleton<_i75.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i76.UserCubit>(() => _i76.UserCubit(get<_i40.IUserService>()));
  gh.factory<_i77.AuthBloc>(() => _i77.AuthBloc(get<_i17.IAuthService>()));
  gh.factory<_i78.BobsTwentySevenWatcherCubit>(() =>
      _i78.BobsTwentySevenWatcherCubit(get<_i19.IBobsTwentySevenService>()));
  gh.factory<_i79.ChangeEmailBloc>(
      () => _i79.ChangeEmailBloc(get<_i40.IUserService>()));
  gh.factory<_i80.ChangePasswordBloc>(
      () => _i80.ChangePasswordBloc(get<_i17.IAuthService>()));
  gh.factory<_i81.ChangeUsernameBloc>(
      () => _i81.ChangeUsernameBloc(get<_i40.IUserService>()));
  gh.factory<_i82.CreateOfflineGameBloc>(
      () => _i82.CreateOfflineGameBloc(get<_i34.IPlayOfflineService>()));
  gh.factoryParam<_i83.CreateTrainingBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i83.CreateTrainingBloc.injectable(
          get<_i38.ISingleTrainingService>(),
          get<_i26.IDoubleTrainingService>(),
          get<_i36.IScoreTrainingService>(),
          get<_i19.IBobsTwentySevenService>(),
          otherDependencies));
  gh.factoryParam<_i84.DartsDisplayerBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i84.DartsDisplayerBloc.injectable(
          get<_i24.IDartUtils>(), otherDependencies));
  gh.factory<_i85.DoubleTrainingWatcherCubit>(() =>
      _i85.DoubleTrainingWatcherCubit(get<_i26.IDoubleTrainingService>()));
  gh.factory<_i86.EditProfileImageBloc>(() => _i86.EditProfileImageBloc(
      get<_i42.ImagePicker>(), get<_i40.IUserService>()));
  gh.factory<_i87.ForgotPasswordBloc>(
      () => _i87.ForgotPasswordBloc(get<_i17.IAuthService>()));
  gh.factory<_i88.FriendsBloc>(
      () => _i88.FriendsBloc(get<_i28.IFriendService>()));
  gh.factory<_i89.FriendsCubit>(
      () => _i89.FriendsCubit(get<_i28.IFriendService>()));
  gh.factoryParam<_i90.GameHistoryBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i90.GameHistoryBloc.injectable(
          get<_i30.IGameHistoryService>(), otherDependencies));
  gh.factory<_i91.GameInvitationsCubit>(
      () => _i91.GameInvitationsCubit(get<_i32.IGameInvitationService>()));
  gh.lazySingleton<_i17.IAuthService>(
      () => _i92.FirebaseAuthService.injectable(
          get<_i11.FirebaseAuth>(),
          get<_i5.AppleSignIn>(),
          get<_i15.GoogleSignIn>(),
          get<_i10.FacebookAuth>(),
          get<_i75.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i32.IGameInvitationService>(
      () => _i93.GameInvitationService(
          get<_i17.IAuthService>(),
          get<_i12.FirebaseFirestore>(),
          get<_i75.SocialClient>(),
          get<_i7.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i94.IPlayOnlineService>(
      () => _i95.FakePlayOnlineService(get<_i40.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i40.IUserService>(
      () => _i96.UserService(get<_i12.FirebaseFirestore>(),
          get<_i14.FirebaseStorage>(), get<_i75.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factory<_i97.InOnlineGameBloc>(
      () => _i97.InOnlineGameBloc(get<_i94.IPlayOnlineService>()));
  gh.factoryParam<_i98.InputRowBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i98.InputRowBlocOnlineDetailedInputArea.injectable(
              get<_i94.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i99.InputRowBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i99.InputRowBlocOnlineStandardInputArea.injectable(
              get<_i24.IDartUtils>(),
              get<_i94.IPlayOnlineService>(),
              otherDependencies));
  gh.factory<_i100.PlayOnlineWatcherCubit>(
      () => _i100.PlayOnlineWatcherCubit(get<_i94.IPlayOnlineService>()));
  gh.factory<_i101.CreateOnlineGameBloc>(
      () => _i101.CreateOnlineGameBloc(get<_i94.IPlayOnlineService>()));
  gh.factory<_i102.CreateOnlineGameCubit>(
      () => _i102.CreateOnlineGameCubit(get<_i94.IPlayOnlineService>()));
  gh.factory<_i103.GameInvitationsBloc>(() => _i103.GameInvitationsBloc(
      get<_i94.IPlayOnlineService>(), get<_i32.IGameInvitationService>()));
  gh.lazySingleton<_i28.IFriendService>(
      () => _i104.FriendService(
          get<_i17.IAuthService>(),
          get<_i40.IUserService>(),
          get<_i12.FirebaseFirestore>(),
          get<_i75.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i30.IGameHistoryService>(
      () => _i105.GameHistoryService(get<_i12.FirebaseFirestore>(),
          get<_i40.IUserService>(), get<_i28.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i94.IPlayOnlineService>(
      () => _i106.PlayOnlineService(get<_i7.DartClient>(),
          get<_i40.IUserService>(), get<_i28.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i107.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i108.FireBaseInjectableModule {}
