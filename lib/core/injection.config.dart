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
import 'package:image_picker/image_picker.dart' as _i49;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i82;

import '../application/authenticated/core/friends/friends_cubit.dart' as _i97;
import '../application/authenticated/core/game_invitations/game_invitations_cubit.dart'
    as _i99;
import '../application/authenticated/core/user/user_cubit.dart' as _i83;
import '../application/authenticated/friends/friends_bloc.dart' as _i96;
import '../application/authenticated/friends/more/more_bloc.dart' as _i71;
import '../application/authenticated/friends/search_user/search_user_bloc.dart'
    as _i77;
import '../application/authenticated/game_history/game_history_bloc.dart'
    as _i98;
import '../application/authenticated/game_invitations/game_invitations_bloc.dart'
    as _i111;
import '../application/authenticated/home/create_offline_game/create_offline_game_cubit.dart'
    as _i90;
import '../application/authenticated/home/create_online_game/create_online_game_cubit.dart'
    as _i110;
import '../application/authenticated/home/home_bloc.dart' as _i18;
import '../application/authenticated/play/offline/create_game/create_offline_game_bloc.dart'
    as _i89;
import '../application/authenticated/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i60;
import '../application/authenticated/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i67;
import '../application/authenticated/play/offline/in_game/in_offline_game_bloc.dart'
    as _i52;
import '../application/authenticated/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i61;
import '../application/authenticated/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i68;
import '../application/authenticated/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import '../application/authenticated/play/online/create_game/create_online_game_bloc.dart'
    as _i109;
import '../application/authenticated/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i107;
import '../application/authenticated/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i69;
import '../application/authenticated/play/online/in_game/in_online_game_bloc.dart'
    as _i106;
import '../application/authenticated/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i108;
import '../application/authenticated/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i70;
import '../application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import '../application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i92;
import '../application/authenticated/profile/profile_bloc.dart' as _i73;
import '../application/authenticated/settings/change_email/change_email_bloc.dart'
    as _i86;
import '../application/authenticated/settings/change_password/change_password_bloc.dart'
    as _i87;
import '../application/authenticated/settings/change_username/change_username_bloc.dart'
    as _i88;
import '../application/authenticated/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i94;
import '../application/authenticated/settings/settings_bloc.dart' as _i78;
import '../application/authenticated/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i50;
import '../application/authenticated/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i55;
import '../application/authenticated/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i63;
import '../application/authenticated/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i85;
import '../application/authenticated/training/create_training/create_training_bloc.dart'
    as _i91;
import '../application/authenticated/training/double_training/in_training/in_double_training_bloc.dart'
    as _i51;
import '../application/authenticated/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i58;
import '../application/authenticated/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i64;
import '../application/authenticated/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i93;
import '../application/authenticated/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i56;
import '../application/authenticated/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i62;
import '../application/authenticated/training/score_training/in_training/in_score_training_bloc.dart'
    as _i53;
import '../application/authenticated/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i59;
import '../application/authenticated/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i66;
import '../application/authenticated/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i76;
import '../application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i10;
import '../application/authenticated/training/single_training/in_training/in_single_training_bloc.dart'
    as _i54;
import '../application/authenticated/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i57;
import '../application/authenticated/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i65;
import '../application/authenticated/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i81;
import '../application/shared/auth/auth_bloc.dart' as _i84;
import '../application/unauthenticated/forgot_password/forgot_password_bloc.dart'
    as _i95;
import '../application/unauthenticated/sign_in/sign_in_bloc.dart' as _i79;
import '../application/unauthenticated/sign_up/sign_up_bloc.dart' as _i80;
import '../domain/auth/i_auth_service.dart' as _i21;
import '../domain/connectivity/i_connectivity_service.dart' as _i28;
import '../domain/friend/i_friend_service.dart' as _i35;
import '../domain/game_history/i_game_history_service.dart' as _i37;
import '../domain/game_invitation/i_game_invitation_service.dart' as _i39;
import '../domain/play/i_advanced_settings_service.dart' as _i19;
import '../domain/play/i_dart_utils.dart' as _i31;
import '../domain/play/offline/i_play_offline_service.dart' as _i41;
import '../domain/play/online/i_play_online_service.dart' as _i103;
import '../domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i23;
import '../domain/training/double/i_double_training_service.dart' as _i33;
import '../domain/training/score/i_score_training_service.dart' as _i43;
import '../domain/training/single/i_single_training_service.dart' as _i45;
import '../domain/user/i_user_service.dart' as _i47;
import '../infrastructure/auth/core/apple_sign_in.dart' as _i5;
import '../infrastructure/auth/core/auth_provider_manager.dart' as _i6;
import '../infrastructure/auth/fake_auth_service.dart' as _i22;
import '../infrastructure/auth/firebase_auth_service.dart' as _i101;
import '../infrastructure/cache/fake_cache.dart' as _i26;
import '../infrastructure/cache/i_cache.dart' as _i25;
import '../infrastructure/cache/sqflite_cache.dart' as _i27;
import '../infrastructure/connectivity/connectivity_service.dart' as _i30;
import '../infrastructure/connectivity/fake_connectivity_service.dart' as _i29;
import '../infrastructure/core/firebase_injectable_module.dart' as _i116;
import '../infrastructure/core/jtd_injectable_module.dart' as _i115;
import '../infrastructure/friend/fake_friend_service.dart' as _i36;
import '../infrastructure/friend/friend_service.dart' as _i112;
import '../infrastructure/game_history/fake_game_history_service.dart' as _i38;
import '../infrastructure/game_history/game_history_service.dart' as _i113;
import '../infrastructure/game_invitation/fake_game_invitation_service.dart'
    as _i40;
import '../infrastructure/game_invitation/game_invitation_service.dart'
    as _i102;
import '../infrastructure/play/advanced_settings_service.dart' as _i20;
import '../infrastructure/play/dart_utils.dart' as _i32;
import '../infrastructure/play/fake_advanced_settings_service.dart' as _i100;
import '../infrastructure/play/offline/play_offline_service.dart' as _i42;
import '../infrastructure/play/online/fake_play_online_service.dart' as _i104;
import '../infrastructure/play/online/play_online_service.dart' as _i114;
import '../infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i24;
import '../infrastructure/training/double/double_training_service.dart' as _i34;
import '../infrastructure/training/score/score_training_service.dart' as _i44;
import '../infrastructure/training/single/single_training_service.dart' as _i46;
import '../infrastructure/user/fake_user_service.dart' as _i48;
import '../infrastructure/user/user_service.dart' as _i105;
import '../presentation/android/core/router.dart' as _i75;
import '../presentation/core/platform.dart' as _i72;
import '../presentation/ios/core/router.dart' as _i74;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';
const String _ios = 'ios';
const String _android = 'android';
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
  gh.lazySingleton<_i19.IAdvancedSettingsService>(
      () => _i20.AdvancedSettingsService(),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i21.IAuthService>(
      () => _i22.FakeAuthService.injectable(get<_i5.AppleSignIn>(),
          get<_i17.GoogleSignIn>(), get<_i12.FacebookAuth>()),
      registerFor: {_dev});
  gh.lazySingleton<_i23.IBobsTwentySevenService>(
      () => _i24.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i25.ICache>(() => _i26.FakeCache(), registerFor: {_dev});
  gh.lazySingleton<_i25.ICache>(
      () => _i27.SqfliteCache(get<_i11.DefaultCacheManager>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i28.IConnectivityService>(
      () => _i29.FakeConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i28.IConnectivityService>(
      () => _i30.ConnectivityService(get<_i7.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i31.IDartUtils>(() => _i32.DartUtils(get<_i9.DartUtils>()));
  gh.lazySingleton<_i33.IDoubleTrainingService>(
      () => _i34.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i35.IFriendService>(
      () => _i36.FakeFriendService(get<_i21.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i37.IGameHistoryService>(
      () => _i38.FakeGameHistoryService(get<_i21.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i39.IGameInvitationService>(
      () => _i40.FakeGameInvitationService(get<_i21.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i41.IPlayOfflineService>(() => _i42.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i43.IScoreTrainingService>(
      () => _i44.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i45.ISingleTrainingService>(
      () => _i46.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i47.IUserService>(
      () => _i48.FakeUserService(get<_i21.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i49.ImagePicker>(() => jtdInjectableModule.imagePicker);
  gh.factory<_i50.InBobsTwentySevenBloc>(
      () => _i50.InBobsTwentySevenBloc(get<_i23.IBobsTwentySevenService>()));
  gh.factory<_i51.InDoubleTrainingBloc>(
      () => _i51.InDoubleTrainingBloc(get<_i33.IDoubleTrainingService>()));
  gh.factoryParam<_i52.InOfflineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i52.InOfflineGameBloc.injectable(
          get<_i41.IPlayOfflineService>(), otherDependencies));
  gh.factory<_i53.InScoreTrainingBloc>(
      () => _i53.InScoreTrainingBloc(get<_i43.IScoreTrainingService>()));
  gh.factory<_i54.InSingleTrainingBloc>(
      () => _i54.InSingleTrainingBloc(get<_i45.ISingleTrainingService>()));
  gh.factoryParam<_i55.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i55.InputRowBloc.injectable(
          get<_i23.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i56.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i56.InputRowBloc.injectable(
          get<_i43.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i57.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i57.InputRowBloc.injectable(
          get<_i45.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i58.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i58.InputRowBloc.injectable(
          get<_i33.IDoubleTrainingService>(), otherDependencies));
  gh.factory<_i59.InputRowBloc>(
      () => _i59.InputRowBloc(get<_i43.IScoreTrainingService>()));
  gh.factoryParam<_i60.InputRowBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i60.InputRowBlocOfflineDetailedInputArea.injectable(
              get<_i41.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i61.InputRowBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i61.InputRowBlocOfflineStandardInputArea.injectable(
              get<_i31.IDartUtils>(),
              get<_i41.IPlayOfflineService>(),
              otherDependencies));
  gh.factoryParam<_i62.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) =>
          _i62.KeyBoardBloc.injectable(otherDependencies));
  gh.factoryParam<_i63.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i63.KeyBoardBloc.injectable(
          get<_i23.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i64.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i64.KeyBoardBloc.injectable(
          get<_i33.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i65.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i65.KeyBoardBloc.injectable(
          get<_i45.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i66.KeyBoardBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i66.KeyBoardBloc.injectable(get<_i31.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i67.KeyBoardBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i67.KeyBoardBlocOfflineDetailedInputArea.injectable(
              get<_i31.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i68.KeyBoardBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i68.KeyBoardBlocOfflineStandardInputArea.injectable(
              get<_i31.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i69.KeyBoardBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i69.KeyBoardBlocOnlineDetailedInputArea.injectable(
              get<_i31.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i70.KeyBoardBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i70.KeyBoardBlocOnlineStandardInputArea.injectable(
              get<_i31.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i71.MoreBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i71.MoreBloc.injectable(get<_i35.IFriendService>(), otherDependencies));
  gh.lazySingleton<_i72.Platform>(() => _i72.Platform());
  gh.factoryParam<_i73.ProfileBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i73.ProfileBloc.injectable(otherDependencies));
  gh.lazySingleton<_i74.Router>(() => _i74.Router(), registerFor: {_ios});
  gh.lazySingleton<_i75.Router>(() => _i75.Router(), registerFor: {_android});
  gh.factory<_i76.ScoreTrainingWatcherCubit>(
      () => _i76.ScoreTrainingWatcherCubit(get<_i43.IScoreTrainingService>()));
  gh.factory<_i77.SearchUserBloc>(
      () => _i77.SearchUserBloc(get<_i35.IFriendService>()));
  gh.factory<_i78.SettingsBloc>(
      () => _i78.SettingsBloc(get<_i21.IAuthService>()));
  gh.factory<_i79.SignInBloc>(() => _i79.SignInBloc(get<_i21.IAuthService>()));
  gh.factory<_i80.SignUpBloc>(() => _i80.SignUpBloc(get<_i21.IAuthService>()));
  gh.factory<_i81.SingleTrainingWatcherCubit>(() =>
      _i81.SingleTrainingWatcherCubit(get<_i45.ISingleTrainingService>()));
  gh.lazySingleton<_i82.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i83.UserCubit>(() => _i83.UserCubit(get<_i47.IUserService>()));
  gh.factory<_i84.AuthBloc>(() => _i84.AuthBloc(get<_i21.IAuthService>()));
  gh.factory<_i85.BobsTwentySevenWatcherCubit>(() =>
      _i85.BobsTwentySevenWatcherCubit(get<_i23.IBobsTwentySevenService>()));
  gh.factory<_i86.ChangeEmailBloc>(
      () => _i86.ChangeEmailBloc(get<_i47.IUserService>()));
  gh.factory<_i87.ChangePasswordBloc>(
      () => _i87.ChangePasswordBloc(get<_i21.IAuthService>()));
  gh.factory<_i88.ChangeUsernameBloc>(
      () => _i88.ChangeUsernameBloc(get<_i47.IUserService>()));
  gh.factoryParam<_i89.CreateOfflineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i89.CreateOfflineGameBloc.injectable(
          get<_i41.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i90.CreateOfflineGameCubit, List<Object>, dynamic>(
      (otherDependencies, _) => _i90.CreateOfflineGameCubit.injectable(
          get<_i41.IPlayOfflineService>(),
          get<_i19.IAdvancedSettingsService>(),
          otherDependencies));
  gh.factoryParam<_i91.CreateTrainingBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i91.CreateTrainingBloc.injectable(
          get<_i45.ISingleTrainingService>(),
          get<_i33.IDoubleTrainingService>(),
          get<_i43.IScoreTrainingService>(),
          get<_i23.IBobsTwentySevenService>(),
          otherDependencies));
  gh.factoryParam<_i92.DartsDisplayerBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i92.DartsDisplayerBloc.injectable(
          get<_i31.IDartUtils>(), otherDependencies));
  gh.factory<_i93.DoubleTrainingWatcherCubit>(() =>
      _i93.DoubleTrainingWatcherCubit(get<_i33.IDoubleTrainingService>()));
  gh.factory<_i94.EditProfileImageBloc>(() => _i94.EditProfileImageBloc(
      get<_i49.ImagePicker>(), get<_i47.IUserService>()));
  gh.factory<_i95.ForgotPasswordBloc>(
      () => _i95.ForgotPasswordBloc(get<_i21.IAuthService>()));
  gh.factory<_i96.FriendsBloc>(
      () => _i96.FriendsBloc(get<_i35.IFriendService>()));
  gh.factory<_i97.FriendsCubit>(
      () => _i97.FriendsCubit(get<_i35.IFriendService>()));
  gh.factoryParam<_i98.GameHistoryBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i98.GameHistoryBloc.injectable(
          get<_i37.IGameHistoryService>(), otherDependencies));
  gh.factory<_i99.GameInvitationsCubit>(
      () => _i99.GameInvitationsCubit(get<_i39.IGameInvitationService>()));
  gh.lazySingleton<_i19.IAdvancedSettingsService>(
      () => _i100.FakeAdvancedSettingsService(get<_i21.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i21.IAuthService>(
      () => _i101.FirebaseAuthService(
          get<_i13.FirebaseAuth>(),
          get<_i5.AppleSignIn>(),
          get<_i17.GoogleSignIn>(),
          get<_i12.FacebookAuth>(),
          get<_i6.AuthProviderManager>(),
          get<_i82.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i39.IGameInvitationService>(
      () => _i102.GameInvitationService(
          get<_i21.IAuthService>(),
          get<_i14.FirebaseFirestore>(),
          get<_i82.SocialClient>(),
          get<_i8.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i103.IPlayOnlineService>(
      () => _i104.FakePlayOnlineService(get<_i47.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i47.IUserService>(
      () => _i105.UserService(
          get<_i14.FirebaseFirestore>(),
          get<_i16.FirebaseStorage>(),
          get<_i21.IAuthService>(),
          get<_i82.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factoryParam<_i106.InOnlineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i106.InOnlineGameBloc.injectable(
          get<_i103.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i107.InputRowBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i107.InputRowBlocOnlineDetailedInputArea.injectable(
              get<_i103.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i108.InputRowBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i108.InputRowBlocOnlineStandardInputArea.injectable(
              get<_i31.IDartUtils>(),
              get<_i103.IPlayOnlineService>(),
              otherDependencies));
  gh.factoryParam<_i109.CreateOnlineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i109.CreateOnlineGameBloc.injectable(
          get<_i103.IPlayOnlineService>(), otherDependencies));
  gh.factory<_i110.CreateOnlineGameCubit>(
      () => _i110.CreateOnlineGameCubit(get<_i103.IPlayOnlineService>()));
  gh.factory<_i111.GameInvitationsBloc>(() => _i111.GameInvitationsBloc(
      get<_i103.IPlayOnlineService>(), get<_i39.IGameInvitationService>()));
  gh.lazySingleton<_i35.IFriendService>(
      () => _i112.FriendService(
          get<_i21.IAuthService>(),
          get<_i47.IUserService>(),
          get<_i14.FirebaseFirestore>(),
          get<_i82.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i37.IGameHistoryService>(
      () => _i113.GameHistoryService(
          get<_i14.FirebaseFirestore>(), get<_i35.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i103.IPlayOnlineService>(
      () => _i114.PlayOnlineService(get<_i8.DartClient>(),
          get<_i47.IUserService>(), get<_i35.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i115.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i116.FireBaseInjectableModule {}
