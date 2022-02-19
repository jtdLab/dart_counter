// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:cloud_functions/cloud_functions.dart' as _i12;
import 'package:connectivity_plus/connectivity_plus.dart' as _i6;
import 'package:dart_client/dart_client.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:firebase_storage/firebase_storage.dart' as _i13;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i14;
import 'package:image_picker/image_picker.dart' as _i41;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i74;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i86;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i71;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i72;
import 'application/main/core/friends/friends_cubit.dart' as _i88;
import 'application/main/core/game_invitations/game_invitations_cubit.dart'
    as _i90;
import 'application/main/core/play/offline/play_offline_cubit.dart' as _i64;
import 'application/main/core/play/online/play_online_cubit.dart' as _i66;
import 'application/main/core/user/user_cubit.dart' as _i75;
import 'application/main/friends/friends_bloc.dart' as _i87;
import 'application/main/friends/more/more_bloc.dart' as _i63;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i69;
import 'application/main/game_history/game_history_bloc.dart' as _i89;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i102;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i101;
import 'application/main/home/home_bloc.dart' as _i15;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i81;
import 'application/main/play/offline/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i52;
import 'application/main/play/offline/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i59;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i44;
import 'application/main/play/offline/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i53;
import 'application/main/play/offline/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i60;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i65;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i100;
import 'application/main/play/online/in_game/detailed_input_area/input_row/input_row_bloc.dart'
    as _i97;
import 'application/main/play/online/in_game/detailed_input_area/key_board/key_board_bloc.dart'
    as _i61;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i96;
import 'application/main/play/online/in_game/standard_input_area/input_row/input_row_bloc.dart'
    as _i98;
import 'application/main/play/online/in_game/standard_input_area/key_board/key_board_bloc.dart'
    as _i62;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i99;
import 'application/main/play/shared/advanced_settings/advanced_settings_bloc.dart'
    as _i4;
import 'application/main/play/shared/in_game/darts_displayer/darts_displayer_bloc.dart'
    as _i83;
import 'application/main/profile/profile_bloc.dart' as _i67;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i78;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i79;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i80;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i85;
import 'application/main/settings/settings_bloc.dart' as _i70;
import 'application/main/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart'
    as _i42;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart'
    as _i47;
import 'application/main/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart'
    as _i56;
import 'application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart'
    as _i77;
import 'application/main/training/create_training/create_training_bloc.dart'
    as _i82;
import 'application/main/training/double_training/in_training/in_double_training_bloc.dart'
    as _i43;
import 'application/main/training/double_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i50;
import 'application/main/training/double_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i54;
import 'application/main/training/double_training/watcher/double_training_watcher_cubit.dart'
    as _i84;
import 'application/main/training/score_training/in_training/detailed_input_area/input_row/input_row_bloc.dart'
    as _i51;
import 'application/main/training/score_training/in_training/detailed_input_area/key_board/key_board_bloc.dart'
    as _i55;
import 'application/main/training/score_training/in_training/in_score_training_bloc.dart'
    as _i45;
import 'application/main/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart'
    as _i49;
import 'application/main/training/score_training/in_training/standard_input_area/key_board/key_board_bloc.dart'
    as _i57;
import 'application/main/training/score_training/watcher/score_training_watcher_cubit.dart'
    as _i68;
import 'application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart'
    as _i8;
import 'application/main/training/single_training/in_training/in_single_training_bloc.dart'
    as _i46;
import 'application/main/training/single_training/in_training/input_area/input_row/input_row_bloc.dart'
    as _i48;
import 'application/main/training/single_training/in_training/input_area/key_board/key_board_bloc.dart'
    as _i58;
import 'application/main/training/single_training/watcher/single_training_watcher_cubit.dart'
    as _i73;
import 'application/shared/auth/auth_bloc.dart' as _i76;
import 'domain/auth/i_auth_service.dart' as _i16;
import 'domain/connectivity/i_connectivity_service.dart' as _i20;
import 'domain/friend/i_friend_service.dart' as _i27;
import 'domain/game_history/i_game_history_service.dart' as _i29;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i31;
import 'domain/play/i_dart_utils.dart' as _i23;
import 'domain/play/offline/i_play_offline_service.dart' as _i33;
import 'domain/play/online/i_play_online_service.dart' as _i93;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i18;
import 'domain/training/double/i_double_training_service.dart' as _i25;
import 'domain/training/score/i_score_training_service.dart' as _i35;
import 'domain/training/single/i_single_training_service.dart' as _i37;
import 'domain/user/i_user_service.dart' as _i39;
import 'infrastructure/auth/apple_sign_in.dart' as _i5;
import 'infrastructure/auth/fake_auth_service.dart' as _i17;
import 'infrastructure/auth/firebase_auth_service.dart' as _i91;
import 'infrastructure/connectivity/connectivity_service.dart' as _i22;
import 'infrastructure/connectivity/fake_connectivity_service.dart' as _i21;
import 'infrastructure/core/firebase_injectable_module.dart' as _i107;
import 'infrastructure/core/jtd_injectable_module.dart' as _i106;
import 'infrastructure/friend/fake_friend_service.dart' as _i28;
import 'infrastructure/friend/friend_service.dart' as _i103;
import 'infrastructure/game_history/fake_game_history_service.dart' as _i30;
import 'infrastructure/game_history/game_history_service.dart' as _i104;
import 'infrastructure/game_invitation/fake_game_invitation_service.dart'
    as _i32;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i92;
import 'infrastructure/play/dart_utils.dart' as _i24;
import 'infrastructure/play/offline/play_offline_service.dart' as _i34;
import 'infrastructure/play/online/fake_play_online_service.dart' as _i94;
import 'infrastructure/play/online/play_online_service.dart' as _i105;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i19;
import 'infrastructure/training/double/double_training_service.dart' as _i26;
import 'infrastructure/training/score/score_training_service.dart' as _i36;
import 'infrastructure/training/single/single_training_service.dart' as _i38;
import 'infrastructure/user/fake_user_service.dart' as _i40;
import 'infrastructure/user/user_service.dart' as _i95;

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
  gh.factoryParam<_i4.AdvancedSettingsBloc, List<Object>?, dynamic>(
      (otherDependencies, _) =>
          _i4.AdvancedSettingsBloc.injectable(otherDependencies));
  gh.lazySingleton<_i5.AppleSignIn>(() => _i5.AppleSignIn.injectable());
  gh.lazySingleton<_i6.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i7.DartClient>(() => jtdInjectableModule.dartClient);
  gh.factory<_i8.DartsDisplayerBloc>(() => _i8.DartsDisplayerBloc());
  gh.lazySingleton<_i9.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i10.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i11.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i12.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i13.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i14.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.factoryParam<_i15.HomeBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i15.HomeBloc.injectable(otherDependencies));
  gh.lazySingleton<_i16.IAuthService>(
      () => _i17.FakeAuthService.injectable(get<_i5.AppleSignIn>(),
          get<_i14.GoogleSignIn>(), get<_i9.FacebookAuth>()),
      registerFor: {_dev});
  gh.lazySingleton<_i18.IBobsTwentySevenService>(
      () => _i19.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i20.IConnectivityService>(
      () => _i21.FakeConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i20.IConnectivityService>(
      () => _i22.ConnectivityService(get<_i6.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i23.IDartUtils>(() => _i24.DartUtils());
  gh.lazySingleton<_i25.IDoubleTrainingService>(
      () => _i26.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i27.IFriendService>(
      () => _i28.FakeFriendService(get<_i16.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i29.IGameHistoryService>(
      () => _i30.FakeGameHistoryService(get<_i16.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i31.IGameInvitationService>(
      () => _i32.FakeGameInvitationService(get<_i16.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i33.IPlayOfflineService>(() => _i34.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i35.IScoreTrainingService>(
      () => _i36.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i37.ISingleTrainingService>(
      () => _i38.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i39.IUserService>(
      () => _i40.FakeUserService(get<_i16.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i41.ImagePicker>(() => jtdInjectableModule.imagePicker);
  gh.factory<_i42.InBobsTwentySevenBloc>(
      () => _i42.InBobsTwentySevenBloc(get<_i18.IBobsTwentySevenService>()));
  gh.factory<_i43.InDoubleTrainingBloc>(
      () => _i43.InDoubleTrainingBloc(get<_i25.IDoubleTrainingService>()));
  gh.factory<_i44.InOfflineGameBloc>(
      () => _i44.InOfflineGameBloc(get<_i33.IPlayOfflineService>()));
  gh.factory<_i45.InScoreTrainingBloc>(
      () => _i45.InScoreTrainingBloc(get<_i35.IScoreTrainingService>()));
  gh.factory<_i46.InSingleTrainingBloc>(
      () => _i46.InSingleTrainingBloc(get<_i37.ISingleTrainingService>()));
  gh.factoryParam<_i47.InputRowBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i47.InputRowBloc.injectable(
          get<_i18.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i48.InputRowBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i48.InputRowBloc.injectable(
          get<_i37.ISingleTrainingService>(), otherDependencies));
  gh.factory<_i49.InputRowBloc>(
      () => _i49.InputRowBloc(get<_i35.IScoreTrainingService>()));
  gh.factoryParam<_i50.InputRowBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i50.InputRowBloc.injectable(
          get<_i25.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i51.InputRowBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i51.InputRowBloc.injectable(
          get<_i35.IScoreTrainingService>(), otherDependencies));
  gh.factoryParam<_i52.InputRowBlocOfflineDetailedInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i52.InputRowBlocOfflineDetailedInputArea.injectable(
              get<_i33.IPlayOfflineService>(), otherDependencies));
  gh.factoryParam<_i53.InputRowBlocOfflineStandardInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i53.InputRowBlocOfflineStandardInputArea.injectable(
              get<_i23.IDartUtils>(),
              get<_i33.IPlayOfflineService>(),
              otherDependencies));
  gh.factoryParam<_i54.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i54.KeyBoardBloc.injectable(
          get<_i25.IDoubleTrainingService>(), otherDependencies));
  gh.factoryParam<_i55.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) =>
          _i55.KeyBoardBloc.injectable(otherDependencies));
  gh.factoryParam<_i56.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i56.KeyBoardBloc.injectable(
          get<_i18.IBobsTwentySevenService>(), otherDependencies));
  gh.factoryParam<_i57.KeyBoardBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i57.KeyBoardBloc.injectable(get<_i23.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i58.KeyBoardBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i58.KeyBoardBloc.injectable(
          get<_i37.ISingleTrainingService>(), otherDependencies));
  gh.factoryParam<_i59.KeyBoardBlocOfflineDetailedInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i59.KeyBoardBlocOfflineDetailedInputArea.injectable(
              get<_i23.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i60.KeyBoardBlocOfflineStandardInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i60.KeyBoardBlocOfflineStandardInputArea.injectable(
              get<_i23.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i61.KeyBoardBlocOnlineDetailedInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i61.KeyBoardBlocOnlineDetailedInputArea.injectable(
              get<_i23.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i62.KeyBoardBlocOnlineStandardInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i62.KeyBoardBlocOnlineStandardInputArea.injectable(
              get<_i23.IDartUtils>(), otherDependencies));
  gh.factoryParam<_i63.MoreBloc, List<Object>?, dynamic>((otherDependencies,
          _) =>
      _i63.MoreBloc.injectable(get<_i27.IFriendService>(), otherDependencies));
  gh.factory<_i64.PlayOfflineCubit>(() => _i64.PlayOfflineCubit());
  gh.factoryParam<_i65.PlayOfflineWatcherCubit, List<Object>?, dynamic>(
      (otherDependencies, _) => _i65.PlayOfflineWatcherCubit.injectable(
          get<_i33.IPlayOfflineService>(), otherDependencies));
  gh.factory<_i66.PlayOnlineCubit>(() => _i66.PlayOnlineCubit());
  gh.factoryParam<_i67.ProfileBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i67.ProfileBloc.injectable(otherDependencies));
  gh.factory<_i68.ScoreTrainingWatcherCubit>(
      () => _i68.ScoreTrainingWatcherCubit(get<_i35.IScoreTrainingService>()));
  gh.factory<_i69.SearchUserBloc>(
      () => _i69.SearchUserBloc(get<_i27.IFriendService>()));
  gh.factory<_i70.SettingsBloc>(
      () => _i70.SettingsBloc(get<_i16.IAuthService>()));
  gh.factory<_i71.SignInBloc>(() => _i71.SignInBloc(get<_i16.IAuthService>()));
  gh.factory<_i72.SignUpBloc>(() => _i72.SignUpBloc(get<_i16.IAuthService>()));
  gh.factory<_i73.SingleTrainingWatcherCubit>(() =>
      _i73.SingleTrainingWatcherCubit(get<_i37.ISingleTrainingService>()));
  gh.lazySingleton<_i74.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i75.UserCubit>(() => _i75.UserCubit(get<_i39.IUserService>()));
  gh.factory<_i76.AuthBloc>(() => _i76.AuthBloc(get<_i16.IAuthService>()));
  gh.factory<_i77.BobsTwentySevenWatcherCubit>(() =>
      _i77.BobsTwentySevenWatcherCubit(get<_i18.IBobsTwentySevenService>()));
  gh.factory<_i78.ChangeEmailBloc>(
      () => _i78.ChangeEmailBloc(get<_i39.IUserService>()));
  gh.factory<_i79.ChangePasswordBloc>(
      () => _i79.ChangePasswordBloc(get<_i16.IAuthService>()));
  gh.factory<_i80.ChangeUsernameBloc>(
      () => _i80.ChangeUsernameBloc(get<_i39.IUserService>()));
  gh.factory<_i81.CreateOfflineGameBloc>(
      () => _i81.CreateOfflineGameBloc(get<_i33.IPlayOfflineService>()));
  gh.factoryParam<_i82.CreateTrainingBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i82.CreateTrainingBloc.injectable(
          get<_i37.ISingleTrainingService>(),
          get<_i25.IDoubleTrainingService>(),
          get<_i35.IScoreTrainingService>(),
          get<_i18.IBobsTwentySevenService>(),
          otherDependencies));
  gh.factoryParam<_i83.DartsDisplayerBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i83.DartsDisplayerBloc.injectable(
          get<_i23.IDartUtils>(), otherDependencies));
  gh.factory<_i84.DoubleTrainingWatcherCubit>(() =>
      _i84.DoubleTrainingWatcherCubit(get<_i25.IDoubleTrainingService>()));
  gh.factory<_i85.EditProfileImageBloc>(() => _i85.EditProfileImageBloc(
      get<_i41.ImagePicker>(), get<_i39.IUserService>()));
  gh.factory<_i86.ForgotPasswordBloc>(
      () => _i86.ForgotPasswordBloc(get<_i16.IAuthService>()));
  gh.factory<_i87.FriendsBloc>(
      () => _i87.FriendsBloc(get<_i27.IFriendService>()));
  gh.factory<_i88.FriendsCubit>(
      () => _i88.FriendsCubit(get<_i27.IFriendService>()));
  gh.factoryParam<_i89.GameHistoryBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i89.GameHistoryBloc.injectable(
          get<_i29.IGameHistoryService>(), otherDependencies));
  gh.factory<_i90.GameInvitationsCubit>(
      () => _i90.GameInvitationsCubit(get<_i31.IGameInvitationService>()));
  gh.lazySingleton<_i16.IAuthService>(
      () => _i91.FirebaseAuthService.injectable(
          get<_i10.FirebaseAuth>(),
          get<_i5.AppleSignIn>(),
          get<_i14.GoogleSignIn>(),
          get<_i9.FacebookAuth>(),
          get<_i74.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i31.IGameInvitationService>(
      () => _i92.GameInvitationService(
          get<_i16.IAuthService>(),
          get<_i11.FirebaseFirestore>(),
          get<_i74.SocialClient>(),
          get<_i7.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i93.IPlayOnlineService>(
      () => _i94.FakePlayOnlineService(get<_i39.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i39.IUserService>(
      () => _i95.UserService(get<_i11.FirebaseFirestore>(),
          get<_i13.FirebaseStorage>(), get<_i74.SocialClient>()),
      registerFor: {_test, _prod});
  gh.factory<_i96.InOnlineGameBloc>(
      () => _i96.InOnlineGameBloc(get<_i93.IPlayOnlineService>()));
  gh.factoryParam<_i97.InputRowBlocOnlineDetailedInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i97.InputRowBlocOnlineDetailedInputArea.injectable(
              get<_i93.IPlayOnlineService>(), otherDependencies));
  gh.factoryParam<_i98.InputRowBlocOnlineStandardInputArea, List<Object>?,
          dynamic>(
      (otherDependencies, _) =>
          _i98.InputRowBlocOnlineStandardInputArea.injectable(
              get<_i23.IDartUtils>(),
              get<_i93.IPlayOnlineService>(),
              otherDependencies));
  gh.factory<_i99.PlayOnlineWatcherCubit>(
      () => _i99.PlayOnlineWatcherCubit(get<_i93.IPlayOnlineService>()));
  gh.factory<_i100.CreateOnlineGameBloc>(
      () => _i100.CreateOnlineGameBloc(get<_i93.IPlayOnlineService>()));
  gh.factory<_i101.CreateOnlineGameCubit>(
      () => _i101.CreateOnlineGameCubit(get<_i93.IPlayOnlineService>()));
  gh.factoryParam<_i102.GameInvitationsBloc, List<Object>?, dynamic>(
      (otherDependencies, _) => _i102.GameInvitationsBloc.injectable(
          get<_i93.IPlayOnlineService>(),
          get<_i31.IGameInvitationService>(),
          otherDependencies));
  gh.lazySingleton<_i27.IFriendService>(
      () => _i103.FriendService(
          get<_i16.IAuthService>(),
          get<_i39.IUserService>(),
          get<_i11.FirebaseFirestore>(),
          get<_i74.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i29.IGameHistoryService>(
      () => _i104.GameHistoryService(get<_i11.FirebaseFirestore>(),
          get<_i39.IUserService>(), get<_i27.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i93.IPlayOnlineService>(
      () => _i105.PlayOnlineService(get<_i7.DartClient>(),
          get<_i39.IUserService>(), get<_i27.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i106.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i107.FireBaseInjectableModule {}
