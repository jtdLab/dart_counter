// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i15;
import 'package:cloud_functions/cloud_functions.dart' as _i16;
import 'package:connectivity_plus/connectivity_plus.dart' as _i8;
import 'package:dart_client/dart_client.dart' as _i9;
import 'package:dart_game/util.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i14;
import 'package:firebase_storage/firebase_storage.dart' as _i17;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i12;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i18;
import 'package:image_picker/image_picker.dart' as _i50;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i83;

import '../application/authenticated/core/friends/friends_cubit.dart' as _i98;
import '../application/authenticated/core/game_invitations/game_invitations_cubit.dart'
    as _i100;
import '../application/authenticated/core/user/user_cubit.dart' as _i84;
import '../application/authenticated/friends/friends_bloc.dart' as _i97;
import '../application/authenticated/friends/more/more_bloc.dart' as _i72;
import '../application/authenticated/friends/search_user/search_user_bloc.dart'
    as _i78;
import '../application/authenticated/game_history/game_history_bloc.dart'
    as _i99;
import '../application/authenticated/game_invitations/game_invitations_bloc.dart'
    as _i112;
import '../application/authenticated/home/create_offline_game/create_offline_game_cubit.dart'
    as _i91;
import '../application/authenticated/home/create_online_game/create_online_game_cubit.dart'
    as _i111;
import '../application/authenticated/home/home_bloc.dart' as _i19;
import '../application/authenticated/play/offline/create_game/create_offline_game_bloc.dart'
    as _i90;
import '../application/authenticated/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i61;
import '../application/authenticated/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i68;
import '../application/authenticated/play/offline/in_game/in_offline_game_bloc.dart'
    as _i53;
import '../application/authenticated/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i62;
import '../application/authenticated/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i69;
import '../application/authenticated/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import '../application/authenticated/play/online/create_game/create_online_game_bloc.dart'
    as _i110;
import '../application/authenticated/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i108;
import '../application/authenticated/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i70;
import '../application/authenticated/play/online/in_game/in_online_game_bloc.dart'
    as _i107;
import '../application/authenticated/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i109;
import '../application/authenticated/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i71;
import '../application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import '../application/authenticated/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i93;
import '../application/authenticated/profile/profile_bloc.dart' as _i74;
import '../application/authenticated/settings/change_email/change_email_bloc.dart'
    as _i87;
import '../application/authenticated/settings/change_password/change_password_bloc.dart'
    as _i88;
import '../application/authenticated/settings/change_username/change_username_bloc.dart'
    as _i89;
import '../application/authenticated/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i95;
import '../application/authenticated/settings/settings_bloc.dart' as _i79;
import '../application/authenticated/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i51;
import '../application/authenticated/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i57;
import '../application/authenticated/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i63;
import '../application/authenticated/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i86;
import '../application/authenticated/training/create_training/create_training_bloc.dart'
    as _i92;
import '../application/authenticated/training/double_training/in_training/in_double_training_bloc.dart'
    as _i52;
import '../application/authenticated/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i60;
import '../application/authenticated/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i66;
import '../application/authenticated/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i94;
import '../application/authenticated/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i58;
import '../application/authenticated/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i64;
import '../application/authenticated/training/score_training/in_training/in_score_training_bloc.dart'
    as _i54;
import '../application/authenticated/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i56;
import '../application/authenticated/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i67;
import '../application/authenticated/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i77;
import '../application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i11;
import '../application/authenticated/training/single_training/in_training/in_single_training_bloc.dart'
    as _i55;
import '../application/authenticated/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i59;
import '../application/authenticated/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i65;
import '../application/authenticated/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i82;
import '../application/shared/auth/auth_bloc.dart' as _i85;
import '../application/unauthenticated/forgot_password/forgot_password_bloc.dart'
    as _i96;
import '../application/unauthenticated/sign_in/sign_in_bloc.dart' as _i80;
import '../application/unauthenticated/sign_up/sign_up_bloc.dart' as _i81;
import '../domain/auth/i_auth_service.dart' as _i22;
import '../domain/connectivity/i_connectivity_service.dart' as _i29;
import '../domain/friend/i_friend_service.dart' as _i36;
import '../domain/game_history/i_game_history_service.dart' as _i38;
import '../domain/game_invitation/i_game_invitation_service.dart' as _i40;
import '../domain/play/i_advanced_settings_service.dart' as _i20;
import '../domain/play/i_dart_utils.dart' as _i32;
import '../domain/play/offline/i_play_offline_service.dart' as _i42;
import '../domain/play/online/i_play_online_service.dart' as _i104;
import '../domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i24;
import '../domain/training/double/i_double_training_service.dart' as _i34;
import '../domain/training/score/i_score_training_service.dart' as _i44;
import '../domain/training/single/i_single_training_service.dart' as _i46;
import '../domain/user/i_user_service.dart' as _i48;
import '../infrastructure/auth/core/apple_sign_in.dart' as _i6;
import '../infrastructure/auth/core/auth_provider_manager.dart' as _i7;
import '../infrastructure/auth/fake_auth_service.dart' as _i23;
import '../infrastructure/auth/firebase_auth_service.dart' as _i102;
import '../infrastructure/cache/fake_cache.dart' as _i27;
import '../infrastructure/cache/i_cache.dart' as _i26;
import '../infrastructure/cache/sqflite_cache.dart' as _i28;
import '../infrastructure/connectivity/connectivity_service.dart' as _i30;
import '../infrastructure/connectivity/fake_connectivity_service.dart' as _i31;
import '../infrastructure/core/firebase_injectable_module.dart' as _i117;
import '../infrastructure/core/jtd_injectable_module.dart' as _i116;
import '../infrastructure/friend/fake_friend_service.dart' as _i37;
import '../infrastructure/friend/friend_service.dart' as _i113;
import '../infrastructure/game_history/fake_game_history_service.dart' as _i39;
import '../infrastructure/game_history/game_history_service.dart' as _i114;
import '../infrastructure/game_invitation/fake_game_invitation_service.dart'
    as _i41;
import '../infrastructure/game_invitation/game_invitation_service.dart'
    as _i103;
import '../infrastructure/play/advanced_settings_service.dart' as _i21;
import '../infrastructure/play/dart_utils.dart' as _i33;
import '../infrastructure/play/fake_advanced_settings_service.dart' as _i101;
import '../infrastructure/play/offline/play_offline_service.dart' as _i43;
import '../infrastructure/play/online/fake_play_online_service.dart' as _i105;
import '../infrastructure/play/online/play_online_service.dart' as _i115;
import '../infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i25;
import '../infrastructure/training/double/double_training_service.dart' as _i35;
import '../infrastructure/training/score/score_training_service.dart' as _i45;
import '../infrastructure/training/single/single_training_service.dart' as _i47;
import '../infrastructure/user/fake_user_service.dart' as _i49;
import '../infrastructure/user/user_service.dart' as _i106;
import '../presentation/android/core/router.dart' as _i75;
import '../presentation/core/app_toast.dart' as _i5;
import 'platform.dart' as _i73;
import '../presentation/ios/core/router.dart' as _i76;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';
const String _android = 'android';
const String _ios = 'ios';
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
  gh.lazySingleton<_i5.AppToast>(() => _i5.AppToast());
  gh.lazySingleton<_i6.AppleSignIn>(() => jtdInjectableModule.appleSignIn);
  gh.lazySingleton<_i7.AuthProviderManager>(
      () => jtdInjectableModule.authProviderManager);
  gh.lazySingleton<_i8.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i9.DartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i10.DartUtils>(() => jtdInjectableModule.dartUtils);
  gh.factory<_i11.DartsDisplayerBloc>(() => _i11.DartsDisplayerBloc());
  gh.lazySingleton<_i12.DefaultCacheManager>(() => jtdInjectableModule.cache);
  gh.lazySingleton<_i13.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i14.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i15.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i16.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i17.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i18.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.factoryParam<_i19.HomeBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i19.HomeBloc.injectable(otherDependencies));
  gh.lazySingleton<_i20.IAdvancedSettingsService>(
      () => _i21.AdvancedSettingsService(),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i22.IAuthService>(
      () => _i23.FakeAuthService.injectable(get<_i6.AppleSignIn>(),
          get<_i18.GoogleSignIn>(), get<_i13.FacebookAuth>()),
      registerFor: {_dev});
  gh.lazySingleton<_i24.IBobsTwentySevenService>(
      () => _i25.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i26.ICache>(() => _i27.FakeCache(), registerFor: {_dev});
  gh.lazySingleton<_i26.ICache>(
      () => _i28.SqfliteCache(get<_i12.DefaultCacheManager>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i29.IConnectivityService>(
      () => _i30.ConnectivityService(get<_i8.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i29.IConnectivityService>(
      () => _i31.FakeConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i32.IDartUtils>(
      () => _i33.DartUtils(get<_i10.DartUtils>()));
  gh.lazySingleton<_i34.IDoubleTrainingService>(
      () => _i35.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i36.IFriendService>(
      () => _i37.FakeFriendService(get<_i22.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i38.IGameHistoryService>(
      () => _i39.FakeGameHistoryService(get<_i22.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i40.IGameInvitationService>(
      () => _i41.FakeGameInvitationService(get<_i22.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i42.IPlayOfflineService>(() => _i43.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i44.IScoreTrainingService>(
      () => _i45.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i46.ISingleTrainingService>(
      () => _i47.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i48.IUserService>(
      () => _i49.FakeUserService(get<_i22.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i50.ImagePicker>(() => jtdInjectableModule.imagePicker);
  gh.factory<_i51.InBobsTwentySevenBloc>(
      () => _i51.InBobsTwentySevenBloc(get<_i24.IBobsTwentySevenService>()));
  gh.factory<_i52.InDoubleTrainingBloc>(
      () => _i52.InDoubleTrainingBloc(get<_i34.IDoubleTrainingService>()));
  gh.factoryParam<_i53.InOfflineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i53.InOfflineGameBloc.injectable(
          get<_i42.IPlayOfflineService>(), otherDependencies));
  gh.factory<_i54.InScoreTrainingBloc>(
      () => _i54.InScoreTrainingBloc(get<_i44.IScoreTrainingService>()));
  gh.factory<_i55.InSingleTrainingBloc>(
      () => _i55.InSingleTrainingBloc(get<_i46.ISingleTrainingService>()));
  gh.factory<_i56.InputRowBloc>(
      () => _i56.InputRowBloc(get<_i44.IScoreTrainingService>()));
  gh.factoryParam<_i57.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i57.InputRowBloc.injectable(
          get<_i24.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i58.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i58.InputRowBloc.injectable(
          get<_i44.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i59.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i59.InputRowBloc.injectable(
          get<_i46.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i60.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i60.InputRowBloc.injectable(
          get<_i34.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i61.InputRowBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i61.InputRowBlocOfflineDetailedInputArea.injectable(
              get<_i42.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i62.InputRowBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i62.InputRowBlocOfflineStandardInputArea.injectable(
              get<_i32.IDartUtils>(),
              get<_i42.IPlayOfflineService>(),
              otherDependencies));
  gh.factoryParam<_i63.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i63.KeyBoardBloc.injectable(
          get<_i24.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i64.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) =>
          _i64.KeyBoardBloc.injectable(otherDependencies));
  gh.factoryParam<_i65.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i65.KeyBoardBloc.injectable(
          get<_i46.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i66.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i66.KeyBoardBloc.injectable(
          get<_i34.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i67.KeyBoardBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i67.KeyBoardBloc.injectable(get<_i32.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i68.KeyBoardBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i68.KeyBoardBlocOfflineDetailedInputArea.injectable(
              get<_i32.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i69.KeyBoardBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i69.KeyBoardBlocOfflineStandardInputArea.injectable(
              get<_i32.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i70.KeyBoardBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i70.KeyBoardBlocOnlineDetailedInputArea.injectable(
              get<_i32.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i71.KeyBoardBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i71.KeyBoardBlocOnlineStandardInputArea.injectable(
              get<_i32.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i72.MoreBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i72.MoreBloc.injectable(get<_i36.IFriendService>(), otherDependencies));
  gh.lazySingleton<_i73.Platform>(() => _i73.Platform());
  gh.factoryParam<_i74.ProfileBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i74.ProfileBloc.injectable(otherDependencies));
  gh.lazySingleton<_i75.Router>(() => _i75.Router(), registerFor: {_android});
  gh.lazySingleton<_i76.Router>(() => _i76.Router(), registerFor: {_ios});
  gh.factory<_i77.ScoreTrainingWatcherCubit>(
      () => _i77.ScoreTrainingWatcherCubit(get<_i44.IScoreTrainingService>()));
  gh.factory<_i78.SearchUserBloc>(
      () => _i78.SearchUserBloc(get<_i36.IFriendService>()));
  gh.factory<_i79.SettingsBloc>(
      () => _i79.SettingsBloc(get<_i22.IAuthService>()));
  gh.factory<_i80.SignInBloc>(() => _i80.SignInBloc(get<_i22.IAuthService>()));
  gh.factory<_i81.SignUpBloc>(() => _i81.SignUpBloc(get<_i22.IAuthService>()));
  gh.factory<_i82.SingleTrainingWatcherCubit>(() =>
      _i82.SingleTrainingWatcherCubit(get<_i46.ISingleTrainingService>()));
  gh.lazySingleton<_i83.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i84.UserCubit>(() => _i84.UserCubit(get<_i48.IUserService>()));
  gh.factory<_i85.AuthBloc>(() => _i85.AuthBloc(get<_i22.IAuthService>()));
  gh.factory<_i86.BobsTwentySevenWatcherCubit>(() =>
      _i86.BobsTwentySevenWatcherCubit(get<_i24.IBobsTwentySevenService>()));
  gh.factory<_i87.ChangeEmailBloc>(
      () => _i87.ChangeEmailBloc(get<_i48.IUserService>()));
  gh.factory<_i88.ChangePasswordBloc>(
      () => _i88.ChangePasswordBloc(get<_i22.IAuthService>()));
  gh.factory<_i89.ChangeUsernameBloc>(
      () => _i89.ChangeUsernameBloc(get<_i48.IUserService>()));
  gh.factoryParam<_i90.CreateOfflineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i90.CreateOfflineGameBloc.injectable(
          get<_i42.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i91.CreateOfflineGameCubit, List<Object>, dynamic>(
      (otherDependencies, _) => _i91.CreateOfflineGameCubit.injectable(
          get<_i42.IPlayOfflineService>(),
          get<_i20.IAdvancedSettingsService>(),
          otherDependencies));
  gh.factoryParam<_i92.CreateTrainingBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i92.CreateTrainingBloc.injectable(
          get<_i46.ISingleTrainingService>(),
          get<_i34.IDoubleTrainingService>(),
          get<_i44.IScoreTrainingService>(),
          get<_i24.IBobsTwentySevenService>(),
          otherDependencies));
  gh.factoryParam<_i93.DartsDisplayerBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i93.DartsDisplayerBloc.injectable(
          get<_i32.IDartUtils>(), otherDependencies));
  gh.factory<_i94.DoubleTrainingWatcherCubit>(() =>
      _i94.DoubleTrainingWatcherCubit(get<_i34.IDoubleTrainingService>()));
  gh.factory<_i95.EditProfileImageBloc>(() => _i95.EditProfileImageBloc(
      get<_i50.ImagePicker>(), get<_i48.IUserService>()));
  gh.factory<_i96.ForgotPasswordBloc>(
      () => _i96.ForgotPasswordBloc(get<_i22.IAuthService>()));
  gh.factory<_i97.FriendsBloc>(
      () => _i97.FriendsBloc(get<_i36.IFriendService>()));
  gh.factory<_i98.FriendsCubit>(
      () => _i98.FriendsCubit(get<_i36.IFriendService>()));
  gh.factoryParam<_i99.GameHistoryBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i99.GameHistoryBloc.injectable(
          get<_i38.IGameHistoryService>(), otherDependencies));
  gh.factory<_i100.GameInvitationsCubit>(
      () => _i100.GameInvitationsCubit(get<_i40.IGameInvitationService>()));
  gh.lazySingleton<_i20.IAdvancedSettingsService>(
      () => _i101.FakeAdvancedSettingsService(get<_i22.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i22.IAuthService>(
      () => _i102.FirebaseAuthService(
          get<_i14.FirebaseAuth>(),
          get<_i6.AppleSignIn>(),
          get<_i18.GoogleSignIn>(),
          get<_i13.FacebookAuth>(),
          get<_i7.AuthProviderManager>(),
          get<_i83.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i40.IGameInvitationService>(
      () => _i103.GameInvitationService(
          get<_i22.IAuthService>(),
          get<_i15.FirebaseFirestore>(),
          get<_i83.SocialClient>(),
          get<_i9.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i104.IPlayOnlineService>(
      () => _i105.FakePlayOnlineService(get<_i48.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i48.IUserService>(
      () => _i106.UserService(
          get<_i15.FirebaseFirestore>(),
          get<_i17.FirebaseStorage>(),
          get<_i22.IAuthService>(),
          get<_i83.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factoryParam<_i107.InOnlineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i107.InOnlineGameBloc.injectable(
          get<_i104.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i108.InputRowBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i108.InputRowBlocOnlineDetailedInputArea.injectable(
              get<_i104.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i109.InputRowBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i109.InputRowBlocOnlineStandardInputArea.injectable(
              get<_i32.IDartUtils>(),
              get<_i104.IPlayOnlineService>(),
              otherDependencies));
  gh.factoryParam<_i110.CreateOnlineGameBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i110.CreateOnlineGameBloc.injectable(
          get<_i104.IPlayOnlineService>(), otherDependencies));
  gh.factory<_i111.CreateOnlineGameCubit>(
      () => _i111.CreateOnlineGameCubit(get<_i104.IPlayOnlineService>()));
  gh.factory<_i112.GameInvitationsBloc>(() => _i112.GameInvitationsBloc(
      get<_i104.IPlayOnlineService>(), get<_i40.IGameInvitationService>()));
  gh.lazySingleton<_i36.IFriendService>(
      () => _i113.FriendService(
          get<_i22.IAuthService>(),
          get<_i48.IUserService>(),
          get<_i15.FirebaseFirestore>(),
          get<_i83.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i38.IGameHistoryService>(
      () => _i114.GameHistoryService(
          get<_i15.FirebaseFirestore>(), get<_i36.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i104.IPlayOnlineService>(
      () => _i115.PlayOnlineService(get<_i9.DartClient>(),
          get<_i48.IUserService>(), get<_i36.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i116.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i117.FireBaseInjectableModule {}
