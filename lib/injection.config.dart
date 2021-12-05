// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:bloc/bloc.dart' as _i38;
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:cloud_functions/cloud_functions.dart' as _i9;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dart_client/dart_client.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i50;

import 'application/auth/sign_in/forgot_password/forgot_password_bloc.dart'
    as _i65;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i47;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i48;
import 'application/main/friends/friends_bloc.dart' as _i80;
import 'application/main/friends/more/more_bloc.dart' as _i75;
import 'application/main/friends/search_user/search_user_bloc.dart' as _i77;
import 'application/main/game_history/game_history_bloc.dart' as _i66;
import 'application/main/game_invitations/game_invitations_bloc.dart' as _i81;
import 'application/main/home/create_online_game/create_online_game_cubit.dart'
    as _i79;
import 'application/main/home/home_bloc.dart' as _i82;
import 'application/main/play/offline/create_game/create_offline_game_bloc.dart'
    as _i61;
import 'application/main/play/offline/in_game/in_offline_game_bloc.dart'
    as _i35;
import 'application/main/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i42;
import 'application/main/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/main/play/online/create_game/create_online_game_bloc.dart'
    as _i78;
import 'application/main/play/online/in_game/in_online_game_bloc.dart' as _i74;
import 'application/main/play/online/watcher/play_online_watcher_cubit.dart'
    as _i76;
import 'application/main/play/shared/in_game/checkout_details/checkout_details_bloc.dart'
    as _i60;
import 'application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i62;
import 'application/main/play/shared/in_game/in_game_event.dart' as _i40;
import 'application/main/play/shared/in_game/in_game_state.dart' as _i41;
import 'application/main/play/shared/in_game/input/input_cubit.dart' as _i36;
import 'application/main/play/shared/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i37;
import 'application/main/play/shared/in_game/points_left/points_left_cubit.dart'
    as _i53;
import 'application/main/play/shared/in_game/show_checkout_details/show_checkout_details_cubit.dart'
    as _i46;
import 'application/main/play/shared/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i51;
import 'application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i52;
import 'application/main/profile/profile_bloc.dart' as _i43;
import 'application/main/settings/change_email/change_email_bloc.dart' as _i57;
import 'application/main/settings/change_password/change_password_bloc.dart'
    as _i58;
import 'application/main/settings/change_username/change_username_bloc.dart'
    as _i59;
import 'application/main/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i64;
import 'application/main/settings/settings_bloc.dart' as _i45;
import 'application/main/training/bobs_twenty_seven/bobs_twenty_seven_bloc.dart'
    as _i56;
import 'application/main/training/double_training/double_training_bloc.dart'
    as _i63;
import 'application/main/training/score_training/score_training_bloc.dart'
    as _i44;
import 'application/main/training/single_training/single_training_bloc.dart'
    as _i49;
import 'application/main/training/training_bloc.dart' as _i54;
import 'application/shared/auth/auth_bloc.dart' as _i55;
import 'domain/auth/i_auth_service.dart' as _i12;
import 'domain/connectivity/i_connectivity_service.dart' as _i16;
import 'domain/friend/i_friend_service.dart' as _i68;
import 'domain/game_history/i_game_history_service.dart' as _i23;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i25;
import 'domain/play/abstract_game_snapshot.dart' as _i39;
import 'domain/play/i_dart_utils.dart' as _i19;
import 'domain/play/offline/i_play_offline_service.dart' as _i27;
import 'domain/play/online/i_play_online_service.dart' as _i71;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i14;
import 'domain/training/double/i_double_training_service.dart' as _i21;
import 'domain/training/score/i_score_training_service.dart' as _i29;
import 'domain/training/single/i_single_training_service.dart' as _i31;
import 'domain/user/i_user_service.dart' as _i33;
import 'infrastructure/auth/firebase_auth_service.dart' as _i67;
import 'infrastructure/auth/mocked_auth_service.dart' as _i13;
import 'infrastructure/connectivity/connectivity_service.dart' as _i17;
import 'infrastructure/connectivity/mocked_connectivity_service.dart' as _i18;
import 'infrastructure/core/firebase_injectable_module.dart' as _i87;
import 'infrastructure/core/jtd_injectable_module.dart' as _i86;
import 'infrastructure/friend/friend_service.dart' as _i83;
import 'infrastructure/friend/mocked_friend_service.dart' as _i69;
import 'infrastructure/game_history/game_history_service.dart' as _i84;
import 'infrastructure/game_history/mocked_game_history_service.dart' as _i24;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i70;
import 'infrastructure/game_invitation/mocked_game_invitation_service.dart'
    as _i26;
import 'infrastructure/play/dart_utils.dart' as _i20;
import 'infrastructure/play/offline/play_offline_service.dart' as _i28;
import 'infrastructure/play/online/mocked_play_online_service.dart' as _i72;
import 'infrastructure/play/online/play_online_service.dart' as _i85;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i15;
import 'infrastructure/training/double/double_training_service.dart' as _i22;
import 'infrastructure/training/score/score_training_service.dart' as _i30;
import 'infrastructure/training/single/single_training_service.dart' as _i32;
import 'infrastructure/user/mocked_user_service.dart' as _i34;
import 'infrastructure/user/user_service.dart' as _i73;

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
  gh.lazySingleton<_i6.FacebookAuth>(() => jtdInjectableModule.facebookAuth);
  gh.lazySingleton<_i7.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i8.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i9.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i10.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i11.GoogleSignIn>(() => jtdInjectableModule.googleSignIn);
  gh.lazySingleton<_i12.IAuthService>(() => _i13.MockedAuthService(),
      registerFor: {_dev});
  gh.lazySingleton<_i14.IBobsTwentySevenService>(
      () => _i15.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i16.IConnectivityService>(
      () => _i17.ConnectivityService(get<_i4.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i16.IConnectivityService>(
      () => _i18.MockedConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i19.IDartUtils>(() => _i20.DartUtils());
  gh.lazySingleton<_i21.IDoubleTrainingService>(
      () => _i22.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i23.IGameHistoryService>(
      () => _i24.MockedGameHistoryService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i25.IGameInvitationService>(
      () => _i26.MockedGameInvitationService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i27.IPlayOfflineService>(() => _i28.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i29.IScoreTrainingService>(
      () => _i30.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i31.ISingleTrainingService>(
      () => _i32.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i33.IUserService>(
      () => _i34.MockedUserService(get<_i12.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i35.InOfflineGameBloc>(
      () => _i35.InOfflineGameBloc(get<_i27.IPlayOfflineService>()));
  gh.lazySingleton<_i36.InputCubit>(() => _i36.InputCubit());
  gh.factoryParam<
          _i37.OpticalInputAreaBloc,
          _i38.Cubit<_i39.AbstractGameSnapshot>?,
          _i38.Bloc<_i40.InGameEvent, _i41.InGameState>?>(
      (playWatcherCubit, inGameBloc) => _i37.OpticalInputAreaBloc(
          playWatcherCubit, inGameBloc, get<_i36.InputCubit>()));
  gh.lazySingleton<_i42.PlayOfflineWatcherCubit>(() =>
      _i42.PlayOfflineWatcherCubit(
          get<_i27.IPlayOfflineService>(), get<_i33.IUserService>()));
  gh.lazySingleton<_i43.ProfileBloc>(
      () => _i43.ProfileBloc(get<_i33.IUserService>()));
  gh.lazySingleton<_i44.ScoreTrainingBloc>(
      () => _i44.ScoreTrainingBloc(get<_i29.IScoreTrainingService>()));
  gh.lazySingleton<_i45.SettingsBloc>(() =>
      _i45.SettingsBloc(get<_i12.IAuthService>(), get<_i33.IUserService>()));
  gh.lazySingleton<_i46.ShowCheckoutDetailsCubit>(
      () => _i46.ShowCheckoutDetailsCubit());
  gh.lazySingleton<_i47.SignInBloc>(
      () => _i47.SignInBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i48.SignUpBloc>(
      () => _i48.SignUpBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i49.SingleTrainingBloc>(
      () => _i49.SingleTrainingBloc(get<_i31.ISingleTrainingService>()));
  gh.lazySingleton<_i50.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factoryParam<
          _i51.SpeechInputAreaBloc,
          _i38.Cubit<_i39.AbstractGameSnapshot>?,
          _i38.Bloc<_i40.InGameEvent, _i41.InGameState>?>(
      (playWatcherCubit, inGameBloc) =>
          _i51.SpeechInputAreaBloc(playWatcherCubit, inGameBloc));
  gh.factoryParam<_i52.StandardInputAreaBloc, _i53.PointsLeftCubit?,
          _i38.Bloc<_i40.InGameEvent, _i41.InGameState>?>(
      (pointsLeftCubit, inGameBloc) => _i52.StandardInputAreaBloc(
          pointsLeftCubit,
          inGameBloc,
          get<_i36.InputCubit>(),
          get<_i46.ShowCheckoutDetailsCubit>(),
          get<_i19.IDartUtils>()));
  gh.lazySingleton<_i54.TrainingBloc>(() => _i54.TrainingBloc(
      get<_i31.ISingleTrainingService>(),
      get<_i21.IDoubleTrainingService>(),
      get<_i29.IScoreTrainingService>(),
      get<_i14.IBobsTwentySevenService>(),
      get<_i33.IUserService>()));
  gh.lazySingleton<_i55.AuthBloc>(
      () => _i55.AuthBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i56.BobsTwentySevenBloc>(
      () => _i56.BobsTwentySevenBloc(get<_i14.IBobsTwentySevenService>()));
  gh.lazySingleton<_i57.ChangeEmailBloc>(
      () => _i57.ChangeEmailBloc(get<_i33.IUserService>()));
  gh.lazySingleton<_i58.ChangePasswordBloc>(
      () => _i58.ChangePasswordBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i59.ChangeUsernameBloc>(
      () => _i59.ChangeUsernameBloc(get<_i33.IUserService>()));
  gh.factoryParam<_i60.CheckoutDetailsBloc, _i53.PointsLeftCubit?,
          _i38.Bloc<_i40.InGameEvent, _i41.InGameState>?>(
      (pointsLeftCubit, inGameBloc) => _i60.CheckoutDetailsBloc(pointsLeftCubit,
          inGameBloc, get<_i36.InputCubit>(), get<_i19.IDartUtils>()));
  gh.lazySingleton<_i61.CreateOfflineGameBloc>(
      () => _i61.CreateOfflineGameBloc(get<_i27.IPlayOfflineService>()));
  gh.factoryParam<_i62.DetailedInputAreaBloc, _i53.PointsLeftCubit?,
          _i38.Bloc<_i40.InGameEvent, _i41.InGameState>?>(
      (pointsLeftCubit, inGameBloc) => _i62.DetailedInputAreaBloc(
          pointsLeftCubit,
          inGameBloc,
          get<_i36.InputCubit>(),
          get<_i46.ShowCheckoutDetailsCubit>(),
          get<_i19.IDartUtils>()));
  gh.lazySingleton<_i63.DoubleTrainingBloc>(
      () => _i63.DoubleTrainingBloc(get<_i21.IDoubleTrainingService>()));
  gh.lazySingleton<_i64.EditProfileImageBloc>(
      () => _i64.EditProfileImageBloc(get<_i33.IUserService>()));
  gh.lazySingleton<_i65.ForgotPasswordBloc>(
      () => _i65.ForgotPasswordBloc(get<_i12.IAuthService>()));
  gh.lazySingleton<_i66.GameHistoryBloc>(() => _i66.GameHistoryBloc(
      get<_i33.IUserService>(), get<_i23.IGameHistoryService>()));
  gh.lazySingleton<_i12.IAuthService>(
      () => _i67.FirebaseAuthService(
          get<_i7.FirebaseAuth>(),
          get<_i11.GoogleSignIn>(),
          get<_i6.FacebookAuth>(),
          get<_i50.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i68.IFriendService>(
      () => _i69.MockedFriendService(
          get<_i12.IAuthService>(), get<_i33.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i25.IGameInvitationService>(
      () => _i70.GameInvitationService(
          get<_i12.IAuthService>(),
          get<_i8.FirebaseFirestore>(),
          get<_i50.SocialClient>(),
          get<_i5.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i71.IPlayOnlineService>(
      () => _i72.MockedPlayOnlineService(get<_i33.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i33.IUserService>(
      () => _i73.UserService(
          get<_i8.FirebaseFirestore>(),
          get<_i10.FirebaseStorage>(),
          get<_i12.IAuthService>(),
          get<_i50.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i74.InOnlineGameBloc>(
      () => _i74.InOnlineGameBloc(get<_i71.IPlayOnlineService>()));
  gh.lazySingleton<_i75.MoreBloc>(
      () => _i75.MoreBloc(get<_i68.IFriendService>()));
  gh.lazySingleton<_i76.PlayOnlineWatcherCubit>(
      () => _i76.PlayOnlineWatcherCubit(get<_i71.IPlayOnlineService>()));
  gh.lazySingleton<_i77.SearchUserBloc>(
      () => _i77.SearchUserBloc(get<_i68.IFriendService>()));
  gh.lazySingleton<_i78.CreateOnlineGameBloc>(
      () => _i78.CreateOnlineGameBloc(get<_i71.IPlayOnlineService>()));
  gh.lazySingleton<_i79.CreateOnlineGameCubit>(
      () => _i79.CreateOnlineGameCubit(get<_i71.IPlayOnlineService>()));
  gh.lazySingleton<_i80.FriendsBloc>(
      () => _i80.FriendsBloc(get<_i68.IFriendService>()));
  gh.lazySingleton<_i81.GameInvitationsBloc>(() => _i81.GameInvitationsBloc(
      get<_i71.IPlayOnlineService>(), get<_i25.IGameInvitationService>()));
  gh.lazySingleton<_i82.HomeBloc>(() => _i82.HomeBloc(get<_i33.IUserService>(),
      get<_i25.IGameInvitationService>(), get<_i68.IFriendService>()));
  gh.lazySingleton<_i68.IFriendService>(
      () => _i83.FriendService(
          get<_i12.IAuthService>(),
          get<_i33.IUserService>(),
          get<_i8.FirebaseFirestore>(),
          get<_i50.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i23.IGameHistoryService>(
      () => _i84.GameHistoryService(get<_i8.FirebaseFirestore>(),
          get<_i33.IUserService>(), get<_i68.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i71.IPlayOnlineService>(
      () => _i85.PlayOnlineService(get<_i5.DartClient>(),
          get<_i33.IUserService>(), get<_i68.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i86.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i87.FireBaseInjectableModule {}
