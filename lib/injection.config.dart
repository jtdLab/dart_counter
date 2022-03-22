// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i14;
import 'package:cloud_functions/cloud_functions.dart' as _i15;
import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dart_client/dart_client.dart' as _i8;
import 'package:dart_game/util.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i13;
import 'package:firebase_storage/firebase_storage.dart' as _i16;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i11;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i17;
import 'package:image_picker/image_picker.dart' as _i47;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i79;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i91;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i76;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i77;
import 'application/main/core/friends/friends_cubit.dart' as _i93;
import 'application/main/core/game_invitations/game_invitations_cubit.dart'
    as _i95;
import 'application/main/core/play/offline/play_offline_cubit.dart' as _i70;
import 'application/main/core/play/online/play_online_cubit.dart' as _i104;
import 'application/main/core/user/user_cubit.dart' as _i80;
import 'application/main/friends/friends_bloc.dart' as _i92;
import 'application/main/friends/more/more_bloc.dart' as _i69;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i74;
import 'application/main/game_history/game_history_bloc.dart' as _i94;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i108;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i107;
import 'application/main/home/home_bloc.dart' as _i18;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i86;
import 'application/main/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i58;
import 'application/main/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i65;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i50;
import 'application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i59;
import 'application/main/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i66;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i71;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i106;
import 'application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i102;
import 'application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i67;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i101;
import 'application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i103;
import 'application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i68;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i105;
import 'application/main/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import 'application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i88;
import 'application/main/profile/profile_bloc.dart' as _i72;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i83;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i84;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i85;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i90;
import 'application/main/settings/settings_bloc.dart' as _i75;
import 'application/main/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i48;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i56;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i60;
import 'application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i82;
import 'application/main/training/create_training/create_training_bloc.dart'
    as _i87;
import 'application/main/training/double_training/in_training/in_double_training_bloc.dart'
    as _i49;
import 'application/main/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i55;
import 'application/main/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i61;
import 'application/main/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i89;
import 'application/main/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i54;
import 'application/main/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i62;
import 'application/main/training/score_training/in_training/in_score_training_bloc.dart'
    as _i51;
import 'application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i53;
import 'application/main/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i63;
import 'application/main/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i73;
import 'application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i10;
import 'application/main/training/single_training/in_training/in_single_training_bloc.dart'
    as _i52;
import 'application/main/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i57;
import 'application/main/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i64;
import 'application/main/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i78;
import 'application/shared/auth/auth_bloc.dart' as _i81;
import 'domain/auth/i_auth_service.dart' as _i19;
import 'domain/connectivity/i_connectivity_service.dart' as _i26;
import 'domain/friend/i_friend_service.dart' as _i33;
import 'domain/game_history/i_game_history_service.dart' as _i35;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i37;
import 'domain/play/i_dart_utils.dart' as _i29;
import 'domain/play/offline/i_play_offline_service.dart' as _i39;
import 'domain/play/online/i_play_online_service.dart' as _i98;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i21;
import 'domain/training/double/i_double_training_service.dart' as _i31;
import 'domain/training/score/i_score_training_service.dart' as _i41;
import 'domain/training/single/i_single_training_service.dart' as _i43;
import 'domain/user/i_user_service.dart' as _i45;
import 'infrastructure/auth/core/apple_sign_in.dart' as _i5;
import 'infrastructure/auth/core/auth_provider_manager.dart' as _i6;
import 'infrastructure/auth/fake_auth_service.dart' as _i20;
import 'infrastructure/auth/firebase_auth_service.dart' as _i96;
import 'infrastructure/cache/fake_cache.dart' as _i24;
import 'infrastructure/cache/i_cache.dart' as _i23;
import 'infrastructure/cache/sqflite_cache.dart' as _i25;
import 'infrastructure/connectivity/connectivity_service.dart' as _i27;
import 'infrastructure/connectivity/fake_connectivity_service.dart' as _i28;
import 'infrastructure/core/firebase_injectable_module.dart' as _i113;
import 'infrastructure/core/jtd_injectable_module.dart' as _i112;
import 'infrastructure/friend/fake_friend_service.dart' as _i34;
import 'infrastructure/friend/friend_service.dart' as _i109;
import 'infrastructure/game_history/fake_game_history_service.dart' as _i36;
import 'infrastructure/game_history/game_history_service.dart' as _i110;
import 'infrastructure/game_invitation/fake_game_invitation_service.dart'
    as _i38;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i97;
import 'infrastructure/play/dart_utils.dart' as _i30;
import 'infrastructure/play/offline/play_offline_service.dart' as _i40;
import 'infrastructure/play/online/fake_play_online_service.dart' as _i99;
import 'infrastructure/play/online/play_online_service.dart' as _i111;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i22;
import 'infrastructure/training/double/double_training_service.dart' as _i32;
import 'infrastructure/training/score/score_training_service.dart' as _i42;
import 'infrastructure/training/single/single_training_service.dart' as _i44;
import 'infrastructure/user/fake_user_service.dart' as _i46;
import 'infrastructure/user/user_service.dart' as _i100;

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
  gh.lazySingleton<_i5.AppleSignIn>(() => jtdInjectableModule.appleSignIn);
  gh.lazySingleton<_i6.AuthProviderManager>(
      () => jtdInjectableModule.authProviderManager);
  gh.lazySingleton<_i7.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i8.DartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i9.DartUtils>(() => jtdInjectableModule.dartUtils);
  gh.factory<_i10.DartsDisplayerBloc>(() => _i10.DartsDisplayerBloc());
  gh.lazySingleton<_i11.DefaultCacheManager>(() => jtdInjectableModule.cache);
  gh.lazySingleton<_i12.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i13.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i14.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i15.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i16.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i17.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.factoryParam<_i18.HomeBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i18.HomeBloc.injectable(otherDependencies));
  gh.lazySingleton<_i19.IAuthService>(
      () => _i20.FakeAuthService.injectable(get<_i5.AppleSignIn>(),
          get<_i17.GoogleSignIn>(), get<_i12.FacebookAuth>()),
      registerFor: {_dev});
  gh.lazySingleton<_i21.IBobsTwentySevenService>(
      () => _i22.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i23.ICache>(() => _i24.FakeCache(), registerFor: {_dev});
  gh.lazySingleton<_i23.ICache>(
      () => _i25.SqfliteCache(get<_i11.DefaultCacheManager>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i26.IConnectivityService>(
      () => _i27.ConnectivityService(get<_i7.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i26.IConnectivityService>(
      () => _i28.FakeConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i29.IDartUtils>(() => _i30.DartUtils(get<_i9.DartUtils>()));
  gh.lazySingleton<_i31.IDoubleTrainingService>(
      () => _i32.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i33.IFriendService>(
      () => _i34.FakeFriendService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i35.IGameHistoryService>(
      () => _i36.FakeGameHistoryService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i37.IGameInvitationService>(
      () => _i38.FakeGameInvitationService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i39.IPlayOfflineService>(() => _i40.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i41.IScoreTrainingService>(
      () => _i42.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i43.ISingleTrainingService>(
      () => _i44.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i45.IUserService>(
      () => _i46.FakeUserService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i47.ImagePicker>(() => jtdInjectableModule.imagePicker);
  gh.factory<_i48.InBobsTwentySevenBloc>(
      () => _i48.InBobsTwentySevenBloc(get<_i21.IBobsTwentySevenService>()));
  gh.factory<_i49.InDoubleTrainingBloc>(
      () => _i49.InDoubleTrainingBloc(get<_i31.IDoubleTrainingService>()));
  gh.factory<_i50.InOfflineGameBloc>(
      () => _i50.InOfflineGameBloc(get<_i39.IPlayOfflineService>()));
  gh.factory<_i51.InScoreTrainingBloc>(
      () => _i51.InScoreTrainingBloc(get<_i41.IScoreTrainingService>()));
  gh.factory<_i52.InSingleTrainingBloc>(
      () => _i52.InSingleTrainingBloc(get<_i43.ISingleTrainingService>()));
  gh.factory<_i53.InputRowBloc>(
      () => _i53.InputRowBloc(get<_i41.IScoreTrainingService>()));
  gh.factoryParam<_i54.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i54.InputRowBloc.injectable(
          get<_i41.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i55.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i55.InputRowBloc.injectable(
          get<_i31.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i56.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i56.InputRowBloc.injectable(
          get<_i21.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i57.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i57.InputRowBloc.injectable(
          get<_i43.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i58.InputRowBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i58.InputRowBlocOfflineDetailedInputArea.injectable(
              get<_i39.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i59.InputRowBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i59.InputRowBlocOfflineStandardInputArea.injectable(
              get<_i29.IDartUtils>(),
              get<_i39.IPlayOfflineService>(),
              otherDependencies));
  gh.factoryParam<_i60.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i60.KeyBoardBloc.injectable(
          get<_i21.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i61.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i61.KeyBoardBloc.injectable(
          get<_i31.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i62.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) =>
          _i62.KeyBoardBloc.injectable(otherDependencies));
  gh.factoryParam<_i63.KeyBoardBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i63.KeyBoardBloc.injectable(get<_i29.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i64.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i64.KeyBoardBloc.injectable(
          get<_i43.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i65.KeyBoardBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i65.KeyBoardBlocOfflineDetailedInputArea.injectable(
              get<_i29.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i66.KeyBoardBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i66.KeyBoardBlocOfflineStandardInputArea.injectable(
              get<_i29.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i67.KeyBoardBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i67.KeyBoardBlocOnlineDetailedInputArea.injectable(
              get<_i29.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i68.KeyBoardBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i68.KeyBoardBlocOnlineStandardInputArea.injectable(
              get<_i29.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i69.MoreBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i69.MoreBloc.injectable(get<_i33.IFriendService>(), otherDependencies));
  gh.factoryParam<_i70.PlayOfflineCubit, List<Object>, dynamic>(
      (otherDependencies, _) => _i70.PlayOfflineCubit.injectable(
          get<_i39.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i71.PlayOfflineWatcherCubit, List<Object>, dynamic>(
      (otherDependencies, _) => _i71.PlayOfflineWatcherCubit.injectable(
          get<_i39.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i72.ProfileBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i72.ProfileBloc.injectable(otherDependencies));
  gh.factory<_i73.ScoreTrainingWatcherCubit>(
      () => _i73.ScoreTrainingWatcherCubit(get<_i41.IScoreTrainingService>()));
  gh.factory<_i74.SearchUserBloc>(
      () => _i74.SearchUserBloc(get<_i33.IFriendService>()));
  gh.factory<_i75.SettingsBloc>(
      () => _i75.SettingsBloc(get<_i19.IAuthService>()));
  gh.factory<_i76.SignInBloc>(() => _i76.SignInBloc(get<_i19.IAuthService>()));
  gh.factory<_i77.SignUpBloc>(() => _i77.SignUpBloc(get<_i19.IAuthService>()));
  gh.factory<_i78.SingleTrainingWatcherCubit>(() =>
      _i78.SingleTrainingWatcherCubit(get<_i43.ISingleTrainingService>()));
  gh.lazySingleton<_i79.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i80.UserCubit>(() => _i80.UserCubit(get<_i45.IUserService>()));
  gh.factory<_i81.AuthBloc>(() => _i81.AuthBloc(get<_i19.IAuthService>()));
  gh.factory<_i82.BobsTwentySevenWatcherCubit>(() =>
      _i82.BobsTwentySevenWatcherCubit(get<_i21.IBobsTwentySevenService>()));
  gh.factory<_i83.ChangeEmailBloc>(
      () => _i83.ChangeEmailBloc(get<_i45.IUserService>()));
  gh.factory<_i84.ChangePasswordBloc>(
      () => _i84.ChangePasswordBloc(get<_i19.IAuthService>()));
  gh.factory<_i85.ChangeUsernameBloc>(
      () => _i85.ChangeUsernameBloc(get<_i45.IUserService>()));
  gh.factory<_i86.CreateOfflineGameBloc>(
      () => _i86.CreateOfflineGameBloc(get<_i39.IPlayOfflineService>()));
  gh.factoryParam<_i87.CreateTrainingBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i87.CreateTrainingBloc.injectable(
          get<_i43.ISingleTrainingService>(),
          get<_i31.IDoubleTrainingService>(),
          get<_i41.IScoreTrainingService>(),
          get<_i21.IBobsTwentySevenService>(),
          otherDependencies));
  gh.factoryParam<_i88.DartsDisplayerBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i88.DartsDisplayerBloc.injectable(
          get<_i29.IDartUtils>(), otherDependencies));
  gh.factory<_i89.DoubleTrainingWatcherCubit>(() =>
      _i89.DoubleTrainingWatcherCubit(get<_i31.IDoubleTrainingService>()));
  gh.factory<_i90.EditProfileImageBloc>(() => _i90.EditProfileImageBloc(
      get<_i47.ImagePicker>(), get<_i45.IUserService>()));
  gh.factory<_i91.ForgotPasswordBloc>(
      () => _i91.ForgotPasswordBloc(get<_i19.IAuthService>()));
  gh.factory<_i92.FriendsBloc>(
      () => _i92.FriendsBloc(get<_i33.IFriendService>()));
  gh.factory<_i93.FriendsCubit>(
      () => _i93.FriendsCubit(get<_i33.IFriendService>()));
  gh.factoryParam<_i94.GameHistoryBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i94.GameHistoryBloc.injectable(
          get<_i35.IGameHistoryService>(), otherDependencies));
  gh.factory<_i95.GameInvitationsCubit>(
      () => _i95.GameInvitationsCubit(get<_i37.IGameInvitationService>()));
  gh.lazySingleton<_i19.IAuthService>(
      () => _i96.FirebaseAuthService(
          get<_i13.FirebaseAuth>(),
          get<_i5.AppleSignIn>(),
          get<_i17.GoogleSignIn>(),
          get<_i12.FacebookAuth>(),
          get<_i6.AuthProviderManager>(),
          get<_i79.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i37.IGameInvitationService>(
      () => _i97.GameInvitationService(
          get<_i19.IAuthService>(),
          get<_i14.FirebaseFirestore>(),
          get<_i79.SocialClient>(),
          get<_i8.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i98.IPlayOnlineService>(
      () => _i99.FakePlayOnlineService(get<_i45.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i45.IUserService>(
      () => _i100.UserService(
          get<_i14.FirebaseFirestore>(),
          get<_i16.FirebaseStorage>(),
          get<_i19.IAuthService>(),
          get<_i79.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factory<_i101.InOnlineGameBloc>(
      () => _i101.InOnlineGameBloc(get<_i98.IPlayOnlineService>()));
  gh.factoryParam<_i102.InputRowBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i102.InputRowBlocOnlineDetailedInputArea.injectable(
              get<_i98.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i103.InputRowBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i103.InputRowBlocOnlineStandardInputArea.injectable(
              get<_i29.IDartUtils>(),
              get<_i98.IPlayOnlineService>(),
              otherDependencies));
  gh.factory<_i104.PlayOnlineCubit>(
      () => _i104.PlayOnlineCubit(get<_i98.IPlayOnlineService>()));
  gh.factory<_i105.PlayOnlineWatcherCubit>(
      () => _i105.PlayOnlineWatcherCubit(get<_i98.IPlayOnlineService>()));
  gh.factory<_i106.CreateOnlineGameBloc>(
      () => _i106.CreateOnlineGameBloc(get<_i98.IPlayOnlineService>()));
  gh.factory<_i107.CreateOnlineGameCubit>(
      () => _i107.CreateOnlineGameCubit(get<_i98.IPlayOnlineService>()));
  gh.factory<_i108.GameInvitationsBloc>(() => _i108.GameInvitationsBloc(
      get<_i98.IPlayOnlineService>(), get<_i37.IGameInvitationService>()));
  gh.lazySingleton<_i33.IFriendService>(
      () => _i109.FriendService(
          get<_i19.IAuthService>(),
          get<_i45.IUserService>(),
          get<_i14.FirebaseFirestore>(),
          get<_i79.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i35.IGameHistoryService>(
      () => _i110.GameHistoryService(
          get<_i14.FirebaseFirestore>(), get<_i33.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i98.IPlayOnlineService>(
      () => _i111.PlayOnlineService(get<_i8.DartClient>(),
          get<_i45.IUserService>(), get<_i33.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i112.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i113.FireBaseInjectableModule {}
