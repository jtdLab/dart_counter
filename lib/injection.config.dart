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
import 'package:image_picker/image_picker.dart' as _i44;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i77;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i89;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i74;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i75;
import 'application/main/core/friends/friends_cubit.dart' as _i91;
import 'application/main/core/game_invitations/game_invitations_cubit.dart'
    as _i93;
import 'application/main/core/play/offline/play_offline_cubit.dart' as _i67;
import 'application/main/core/play/online/play_online_cubit.dart' as _i69;
import 'application/main/core/user/user_cubit.dart' as _i78;
import 'application/main/friends/friends_bloc.dart' as _i90;
import 'application/main/friends/more/more_bloc.dart' as _i66;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i72;
import 'application/main/game_history/game_history_bloc.dart' as _i92;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i105;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i104;
import 'application/main/home/home_bloc.dart' as _i18;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i84;
import 'application/main/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i55;
import 'application/main/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i62;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i47;
import 'application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i56;
import 'application/main/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i63;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i68;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i103;
import 'application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i100;
import 'application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i64;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i99;
import 'application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i101;
import 'application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i65;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i102;
import 'application/main/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import 'application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i86;
import 'application/main/profile/profile_bloc.dart' as _i70;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i81;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i82;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i83;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i88;
import 'application/main/settings/settings_bloc.dart' as _i73;
import 'application/main/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i45;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i53;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i59;
import 'application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i80;
import 'application/main/training/create_training/create_training_bloc.dart'
    as _i85;
import 'application/main/training/double_training/in_training/in_double_training_bloc.dart'
    as _i46;
import 'application/main/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i51;
import 'application/main/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i61;
import 'application/main/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i87;
import 'application/main/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i52;
import 'application/main/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i57;
import 'application/main/training/score_training/in_training/in_score_training_bloc.dart'
    as _i48;
import 'application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i54;
import 'application/main/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i58;
import 'application/main/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i71;
import 'application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i10;
import 'application/main/training/single_training/in_training/in_single_training_bloc.dart'
    as _i49;
import 'application/main/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i50;
import 'application/main/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i60;
import 'application/main/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i76;
import 'application/shared/auth/auth_bloc.dart' as _i79;
import 'domain/auth/i_auth_service.dart' as _i19;
import 'domain/connectivity/i_connectivity_service.dart' as _i23;
import 'domain/friend/i_friend_service.dart' as _i30;
import 'domain/game_history/i_game_history_service.dart' as _i32;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i34;
import 'domain/play/i_dart_utils.dart' as _i26;
import 'domain/play/offline/i_play_offline_service.dart' as _i36;
import 'domain/play/online/i_play_online_service.dart' as _i96;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i21;
import 'domain/training/double/i_double_training_service.dart' as _i28;
import 'domain/training/score/i_score_training_service.dart' as _i38;
import 'domain/training/single/i_single_training_service.dart' as _i40;
import 'domain/user/i_user_service.dart' as _i42;
import 'infrastructure/auth/core/apple_sign_in.dart' as _i5;
import 'infrastructure/auth/core/auth_provider_manager.dart' as _i6;
import 'infrastructure/auth/fake_auth_service.dart' as _i20;
import 'infrastructure/auth/firebase_auth_service.dart' as _i94;
import 'infrastructure/connectivity/connectivity_service.dart' as _i24;
import 'infrastructure/connectivity/fake_connectivity_service.dart' as _i25;
import 'infrastructure/core/firebase_injectable_module.dart' as _i110;
import 'infrastructure/core/jtd_injectable_module.dart' as _i109;
import 'infrastructure/friend/fake_friend_service.dart' as _i31;
import 'infrastructure/friend/friend_service.dart' as _i106;
import 'infrastructure/game_history/fake_game_history_service.dart' as _i33;
import 'infrastructure/game_history/game_history_service.dart' as _i107;
import 'infrastructure/game_invitation/fake_game_invitation_service.dart'
    as _i35;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i95;
import 'infrastructure/play/dart_utils.dart' as _i27;
import 'infrastructure/play/offline/play_offline_service.dart' as _i37;
import 'infrastructure/play/online/fake_play_online_service.dart' as _i97;
import 'infrastructure/play/online/play_online_service.dart' as _i108;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i22;
import 'infrastructure/training/double/double_training_service.dart' as _i29;
import 'infrastructure/training/score/score_training_service.dart' as _i39;
import 'infrastructure/training/single/single_training_service.dart' as _i41;
import 'infrastructure/user/fake_user_service.dart' as _i43;
import 'infrastructure/user/user_service.dart' as _i98;

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
  gh.lazySingleton<_i23.IConnectivityService>(
      () => _i24.ConnectivityService(get<_i7.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i23.IConnectivityService>(
      () => _i25.FakeConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i26.IDartUtils>(() => _i27.DartUtils(get<_i9.DartUtils>()));
  gh.lazySingleton<_i28.IDoubleTrainingService>(
      () => _i29.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i30.IFriendService>(
      () => _i31.FakeFriendService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i32.IGameHistoryService>(
      () => _i33.FakeGameHistoryService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i34.IGameInvitationService>(
      () => _i35.FakeGameInvitationService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i36.IPlayOfflineService>(() => _i37.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i38.IScoreTrainingService>(
      () => _i39.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i40.ISingleTrainingService>(
      () => _i41.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i42.IUserService>(
      () => _i43.FakeUserService(get<_i19.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i44.ImagePicker>(() => jtdInjectableModule.imagePicker);
  gh.factory<_i45.InBobsTwentySevenBloc>(
      () => _i45.InBobsTwentySevenBloc(get<_i21.IBobsTwentySevenService>()));
  gh.factory<_i46.InDoubleTrainingBloc>(
      () => _i46.InDoubleTrainingBloc(get<_i28.IDoubleTrainingService>()));
  gh.factory<_i47.InOfflineGameBloc>(
      () => _i47.InOfflineGameBloc(get<_i36.IPlayOfflineService>()));
  gh.factory<_i48.InScoreTrainingBloc>(
      () => _i48.InScoreTrainingBloc(get<_i38.IScoreTrainingService>()));
  gh.factory<_i49.InSingleTrainingBloc>(
      () => _i49.InSingleTrainingBloc(get<_i40.ISingleTrainingService>()));
  gh.factoryParam<_i50.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i50.InputRowBloc.injectable(
          get<_i40.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i51.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i51.InputRowBloc.injectable(
          get<_i28.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i52.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i52.InputRowBloc.injectable(
          get<_i38.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i53.InputRowBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i53.InputRowBloc.injectable(
          get<_i21.IBobsTwentySevenService>(), otherDependencies));
  gh.factory<_i54.InputRowBloc>(
      () => _i54.InputRowBloc(get<_i38.IScoreTrainingService>()));
  gh.factoryParam<_i55.InputRowBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i55.InputRowBlocOfflineDetailedInputArea.injectable(
              get<_i36.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i56.InputRowBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i56.InputRowBlocOfflineStandardInputArea.injectable(
              get<_i26.IDartUtils>(),
              get<_i36.IPlayOfflineService>(),
              otherDependencies));
  gh.factoryParam<_i57.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) =>
          _i57.KeyBoardBloc.injectable(otherDependencies));
  gh.factoryParam<_i58.KeyBoardBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i58.KeyBoardBloc.injectable(get<_i26.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i59.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i59.KeyBoardBloc.injectable(
          get<_i21.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i60.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i60.KeyBoardBloc.injectable(
          get<_i40.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i61.KeyBoardBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i61.KeyBoardBloc.injectable(
          get<_i28.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i62.KeyBoardBlocOfflineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i62.KeyBoardBlocOfflineDetailedInputArea.injectable(
              get<_i26.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i63.KeyBoardBlocOfflineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i63.KeyBoardBlocOfflineStandardInputArea.injectable(
              get<_i26.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i64.KeyBoardBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i64.KeyBoardBlocOnlineDetailedInputArea.injectable(
              get<_i26.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i65.KeyBoardBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i65.KeyBoardBlocOnlineStandardInputArea.injectable(
              get<_i26.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i66.MoreBloc, List<Object>, dynamic>((otherDependencies,
          _) =>
      _i66.MoreBloc.injectable(get<_i30.IFriendService>(), otherDependencies));
  gh.factory<_i67.PlayOfflineCubit>(() => _i67.PlayOfflineCubit());
  gh.factoryParam<_i68.PlayOfflineWatcherCubit, List<Object>, dynamic>(
      (otherDependencies, _) => _i68.PlayOfflineWatcherCubit.injectable(
          get<_i36.IPlayOfflineService>(), otherDependencies));
  gh.factory<_i69.PlayOnlineCubit>(() => _i69.PlayOnlineCubit());
  gh.factoryParam<_i70.ProfileBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i70.ProfileBloc.injectable(otherDependencies));
  gh.factory<_i71.ScoreTrainingWatcherCubit>(
      () => _i71.ScoreTrainingWatcherCubit(get<_i38.IScoreTrainingService>()));
  gh.factory<_i72.SearchUserBloc>(
      () => _i72.SearchUserBloc(get<_i30.IFriendService>()));
  gh.factory<_i73.SettingsBloc>(
      () => _i73.SettingsBloc(get<_i19.IAuthService>()));
  gh.factory<_i74.SignInBloc>(() => _i74.SignInBloc(get<_i19.IAuthService>()));
  gh.factory<_i75.SignUpBloc>(() => _i75.SignUpBloc(get<_i19.IAuthService>()));
  gh.factory<_i76.SingleTrainingWatcherCubit>(() =>
      _i76.SingleTrainingWatcherCubit(get<_i40.ISingleTrainingService>()));
  gh.lazySingleton<_i77.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i78.UserCubit>(() => _i78.UserCubit(get<_i42.IUserService>()));
  gh.factory<_i79.AuthBloc>(() => _i79.AuthBloc(get<_i19.IAuthService>()));
  gh.factory<_i80.BobsTwentySevenWatcherCubit>(() =>
      _i80.BobsTwentySevenWatcherCubit(get<_i21.IBobsTwentySevenService>()));
  gh.factory<_i81.ChangeEmailBloc>(
      () => _i81.ChangeEmailBloc(get<_i42.IUserService>()));
  gh.factory<_i82.ChangePasswordBloc>(
      () => _i82.ChangePasswordBloc(get<_i19.IAuthService>()));
  gh.factory<_i83.ChangeUsernameBloc>(
      () => _i83.ChangeUsernameBloc(get<_i42.IUserService>()));
  gh.factory<_i84.CreateOfflineGameBloc>(
      () => _i84.CreateOfflineGameBloc(get<_i36.IPlayOfflineService>()));
  gh.factoryParam<_i85.CreateTrainingBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i85.CreateTrainingBloc.injectable(
          get<_i40.ISingleTrainingService>(),
          get<_i28.IDoubleTrainingService>(),
          get<_i38.IScoreTrainingService>(),
          get<_i21.IBobsTwentySevenService>(),
          otherDependencies));
  gh.factoryParam<_i86.DartsDisplayerBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i86.DartsDisplayerBloc.injectable(
          get<_i26.IDartUtils>(), otherDependencies));
  gh.factory<_i87.DoubleTrainingWatcherCubit>(() =>
      _i87.DoubleTrainingWatcherCubit(get<_i28.IDoubleTrainingService>()));
  gh.factory<_i88.EditProfileImageBloc>(() => _i88.EditProfileImageBloc(
      get<_i44.ImagePicker>(), get<_i42.IUserService>()));
  gh.factory<_i89.ForgotPasswordBloc>(
      () => _i89.ForgotPasswordBloc(get<_i19.IAuthService>()));
  gh.factory<_i90.FriendsBloc>(
      () => _i90.FriendsBloc(get<_i30.IFriendService>()));
  gh.factory<_i91.FriendsCubit>(
      () => _i91.FriendsCubit(get<_i30.IFriendService>()));
  gh.factoryParam<_i92.GameHistoryBloc, List<Object>, dynamic>(
      (otherDependencies, _) => _i92.GameHistoryBloc.injectable(
          get<_i32.IGameHistoryService>(), otherDependencies));
  gh.factory<_i93.GameInvitationsCubit>(
      () => _i93.GameInvitationsCubit(get<_i34.IGameInvitationService>()));
  gh.lazySingleton<_i19.IAuthService>(
      () => _i94.FirebaseAuthService(
          get<_i13.FirebaseAuth>(),
          get<_i5.AppleSignIn>(),
          get<_i17.GoogleSignIn>(),
          get<_i12.FacebookAuth>(),
          get<_i6.AuthProviderManager>(),
          get<_i77.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i34.IGameInvitationService>(
      () => _i95.GameInvitationService(
          get<_i19.IAuthService>(),
          get<_i14.FirebaseFirestore>(),
          get<_i77.SocialClient>(),
          get<_i8.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i96.IPlayOnlineService>(
      () => _i97.FakePlayOnlineService(get<_i42.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i42.IUserService>(
      () => _i98.UserService(
          get<_i14.FirebaseFirestore>(),
          get<_i16.FirebaseStorage>(),
          get<_i19.IAuthService>(),
          get<_i77.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factory<_i99.InOnlineGameBloc>(
      () => _i99.InOnlineGameBloc(get<_i96.IPlayOnlineService>()));
  gh.factoryParam<_i100.InputRowBlocOnlineDetailedInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i100.InputRowBlocOnlineDetailedInputArea.injectable(
              get<_i96.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i101.InputRowBlocOnlineStandardInputArea, List<Object>,
          dynamic>(
      (otherDependencies, _) =>
          _i101.InputRowBlocOnlineStandardInputArea.injectable(
              get<_i26.IDartUtils>(),
              get<_i96.IPlayOnlineService>(),
              otherDependencies));
  gh.factory<_i102.PlayOnlineWatcherCubit>(
      () => _i102.PlayOnlineWatcherCubit(get<_i96.IPlayOnlineService>()));
  gh.factory<_i103.CreateOnlineGameBloc>(
      () => _i103.CreateOnlineGameBloc(get<_i96.IPlayOnlineService>()));
  gh.factory<_i104.CreateOnlineGameCubit>(
      () => _i104.CreateOnlineGameCubit(get<_i96.IPlayOnlineService>()));
  gh.factory<_i105.GameInvitationsBloc>(() => _i105.GameInvitationsBloc(
      get<_i96.IPlayOnlineService>(), get<_i34.IGameInvitationService>()));
  gh.lazySingleton<_i30.IFriendService>(
      () => _i106.FriendService(
          get<_i19.IAuthService>(),
          get<_i42.IUserService>(),
          get<_i14.FirebaseFirestore>(),
          get<_i77.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i32.IGameHistoryService>(
      () => _i107.GameHistoryService(
          get<_i14.FirebaseFirestore>(), get<_i30.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i96.IPlayOnlineService>(
      () => _i108.PlayOnlineService(get<_i8.DartClient>(),
          get<_i42.IUserService>(), get<_i30.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i109.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i110.FireBaseInjectableModule {}
