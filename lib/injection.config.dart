// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:bloc/bloc.dart' as _i37;
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:cloud_functions/cloud_functions.dart' as _i10;
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dart_client/dart_client.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i11;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i49;

import 'application/friends/friends_bloc.dart' as _i77;
import 'application/friends/more/more_bloc.dart' as _i73;
import 'application/friends/search_user/search_user_bloc.dart' as _i75;
import 'application/game_history/game_history_bloc.dart' as _i64;
import 'application/game_invitations/game_invitations_bloc.dart' as _i78;
import 'application/home/home_bloc.dart' as _i79;
import 'application/play/offline/create_game/create_offline_game_bloc.dart'
    as _i59;
import 'application/play/offline/in_game/in_offline_game_bloc.dart' as _i34;
import 'application/play/offline/watcher/play_offline_watcher_cubit.dart'
    as _i41;
import 'application/play/online/create_game/add_player/add_player_bloc.dart'
    as _i3;
import 'application/play/online/create_game/create_online_game_bloc.dart'
    as _i76;
import 'application/play/online/in_game/in_online_game_bloc.dart' as _i72;
import 'application/play/online/watcher/play_online_watcher_cubit.dart' as _i74;
import 'application/play/shared/checkout_details/checkout_details_bloc.dart'
    as _i58;
import 'application/play/shared/detailed_input_area/detailed_input_area_bloc.dart'
    as _i60;
import 'application/play/shared/in_game_event.dart' as _i39;
import 'application/play/shared/in_game_state.dart' as _i40;
import 'application/play/shared/input/input_cubit.dart' as _i35;
import 'application/play/shared/optical_input_area/optical_input_area_bloc.dart'
    as _i36;
import 'application/play/shared/show_checkout_details/show_checkout_details_cubit.dart'
    as _i45;
import 'application/play/shared/speech_input_area/speech_input_area_bloc.dart'
    as _i50;
import 'application/play/shared/standard_input_area/standard_input_area_bloc.dart'
    as _i51;
import 'application/profile/profile_bloc.dart' as _i42;
import 'application/settings/change_email/change_email_bloc.dart' as _i55;
import 'application/settings/change_password/change_password_bloc.dart' as _i56;
import 'application/settings/change_username/change_username_bloc.dart' as _i57;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i62;
import 'application/settings/settings_bloc.dart' as _i44;
import 'application/shared/auth/auth_bloc.dart' as _i53;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i63;
import 'application/sign_in/sign_in_bloc.dart' as _i46;
import 'application/sign_up/sign_up_bloc.dart' as _i47;
import 'application/test.dart' as _i4;
import 'application/training/bobs_twenty_seven/bobs_twenty_seven_bloc.dart'
    as _i54;
import 'application/training/double_training/double_training_bloc.dart' as _i61;
import 'application/training/score_training/score_training_bloc.dart' as _i43;
import 'application/training/single_training/single_training_bloc.dart' as _i48;
import 'application/training/training_bloc.dart' as _i52;
import 'domain/auth/i_auth_service.dart' as _i13;
import 'domain/connectivity/i_connectivity_service.dart' as _i17;
import 'domain/friend/i_friend_service.dart' as _i66;
import 'domain/game_history/i_game_history_service.dart' as _i22;
import 'domain/game_invitation/i_game_invitation_service.dart' as _i24;
import 'domain/play/abstract_game_snapshot.dart' as _i38;
import 'domain/play/offline/i_play_offline_service.dart' as _i26;
import 'domain/play/online/i_play_online_service.dart' as _i69;
import 'domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart'
    as _i15;
import 'domain/training/double/i_double_training_service.dart' as _i20;
import 'domain/training/score/i_score_training_service.dart' as _i28;
import 'domain/training/single/i_single_training_service.dart' as _i30;
import 'domain/user/i_user_service.dart' as _i32;
import 'infrastructure/auth/firebase_auth_service.dart' as _i65;
import 'infrastructure/auth/mocked_auth_service.dart' as _i14;
import 'infrastructure/connectivity/connectivity_service.dart' as _i18;
import 'infrastructure/connectivity/mocked_connectivity_service.dart' as _i19;
import 'infrastructure/core/firebase_injectable_module.dart' as _i84;
import 'infrastructure/core/jtd_injectable_module.dart' as _i83;
import 'infrastructure/friend/friend_service.dart' as _i80;
import 'infrastructure/friend/mocked_friend_service.dart' as _i67;
import 'infrastructure/game_history/game_history_service.dart' as _i81;
import 'infrastructure/game_history/mocked_game_history_service.dart' as _i23;
import 'infrastructure/game_invitation/game_invitation_service.dart' as _i68;
import 'infrastructure/game_invitation/mocked_game_invitation_service.dart'
    as _i25;
import 'infrastructure/play/offline/play_offline_service.dart' as _i27;
import 'infrastructure/play/online/mocked_play_online_service.dart' as _i70;
import 'infrastructure/play/online/play_online_service.dart' as _i82;
import 'infrastructure/training/bobs_twenty_seven/bobs_twenty_seven_service.dart'
    as _i16;
import 'infrastructure/training/double/double_training_service.dart' as _i21;
import 'infrastructure/training/score/score_training_service.dart' as _i29;
import 'infrastructure/training/single/single_training_service.dart' as _i31;
import 'infrastructure/user/mocked_user_service.dart' as _i33;
import 'infrastructure/user/user_service.dart' as _i71;

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
  gh.factoryParam<_i4.BackendService, String?, dynamic>(
      (url, _) => _i4.BackendService(url));
  gh.lazySingleton<_i5.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i6.DartClient>(() => jtdInjectableModule.dartClient);
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
  gh.lazySingleton<_i13.IAuthService>(() => _i14.MockedAuthService(),
      registerFor: {_dev});
  gh.lazySingleton<_i15.IBobsTwentySevenService>(
      () => _i16.BobsTwentySevenService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i17.IConnectivityService>(
      () => _i18.ConnectivityService(get<_i5.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i17.IConnectivityService>(
      () => _i19.MockedConnectivityService(),
      registerFor: {_dev});
  gh.lazySingleton<_i20.IDoubleTrainingService>(
      () => _i21.DoubleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i22.IGameHistoryService>(
      () => _i23.MockedGameHistoryService(get<_i13.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i24.IGameInvitationService>(
      () => _i25.MockedGameInvitationService(get<_i13.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i26.IPlayOfflineService>(() => _i27.PlayOfflineService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i28.IScoreTrainingService>(
      () => _i29.ScoreTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i30.ISingleTrainingService>(
      () => _i31.SingleTrainingService(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i32.IUserService>(
      () => _i33.MockedUserService(get<_i13.IAuthService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i34.InOfflineGameBloc>(
      () => _i34.InOfflineGameBloc(get<_i26.IPlayOfflineService>()));
  gh.lazySingleton<_i35.InputCubit>(() => _i35.InputCubit());
  gh.factoryParam<
          _i36.OpticalInputAreaBloc,
          _i37.Cubit<_i38.AbstractGameSnapshot>?,
          _i37.Bloc<_i39.InGameEvent, _i40.InGameState>?>(
      (playWatcherCubit, inGameBloc) => _i36.OpticalInputAreaBloc(
          playWatcherCubit, inGameBloc, get<_i35.InputCubit>()));
  gh.lazySingleton<_i41.PlayOfflineWatcherCubit>(
      () => _i41.PlayOfflineWatcherCubit(get<_i26.IPlayOfflineService>()));
  gh.lazySingleton<_i42.ProfileBloc>(
      () => _i42.ProfileBloc(get<_i32.IUserService>()));
  gh.lazySingleton<_i43.ScoreTrainingBloc>(
      () => _i43.ScoreTrainingBloc(get<_i28.IScoreTrainingService>()));
  gh.lazySingleton<_i44.SettingsBloc>(() =>
      _i44.SettingsBloc(get<_i13.IAuthService>(), get<_i32.IUserService>()));
  gh.lazySingleton<_i45.ShowCheckoutDetailsCubit>(
      () => _i45.ShowCheckoutDetailsCubit());
  gh.lazySingleton<_i46.SignInBloc>(
      () => _i46.SignInBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i47.SignUpBloc>(
      () => _i47.SignUpBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i48.SingleTrainingBloc>(
      () => _i48.SingleTrainingBloc(get<_i30.ISingleTrainingService>()));
  gh.lazySingleton<_i49.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factoryParam<
          _i50.SpeechInputAreaBloc,
          _i37.Cubit<_i38.AbstractGameSnapshot>?,
          _i37.Bloc<_i39.InGameEvent, _i40.InGameState>?>(
      (playWatcherCubit, inGameBloc) =>
          _i50.SpeechInputAreaBloc(playWatcherCubit, inGameBloc));
  gh.factoryParam<
          _i51.StandardInputAreaBloc,
          _i37.Cubit<_i38.AbstractGameSnapshot>?,
          _i37.Bloc<_i39.InGameEvent, _i40.InGameState>?>(
      (playWatcherCubit, inGameBloc) => _i51.StandardInputAreaBloc(
          playWatcherCubit,
          inGameBloc,
          get<_i35.InputCubit>(),
          get<_i45.ShowCheckoutDetailsCubit>()));
  gh.lazySingleton<_i52.TrainingBloc>(() => _i52.TrainingBloc(
      get<_i30.ISingleTrainingService>(),
      get<_i20.IDoubleTrainingService>(),
      get<_i28.IScoreTrainingService>(),
      get<_i15.IBobsTwentySevenService>(),
      get<_i32.IUserService>()));
  gh.lazySingleton<_i53.AuthBloc>(
      () => _i53.AuthBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i54.BobsTwentySevenBloc>(
      () => _i54.BobsTwentySevenBloc(get<_i15.IBobsTwentySevenService>()));
  gh.lazySingleton<_i55.ChangeEmailBloc>(
      () => _i55.ChangeEmailBloc(get<_i32.IUserService>()));
  gh.lazySingleton<_i56.ChangePasswordBloc>(
      () => _i56.ChangePasswordBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i57.ChangeUsernameBloc>(
      () => _i57.ChangeUsernameBloc(get<_i32.IUserService>()));
  gh.factoryParam<
          _i58.CheckoutDetailsBloc,
          _i37.Cubit<_i38.AbstractGameSnapshot>?,
          _i37.Bloc<_i39.InGameEvent, _i40.InGameState>?>(
      (playWatcherCubit, inGameBloc) => _i58.CheckoutDetailsBloc(
          playWatcherCubit, inGameBloc, get<_i35.InputCubit>()));
  gh.lazySingleton<_i59.CreateOfflineGameBloc>(
      () => _i59.CreateOfflineGameBloc(get<_i26.IPlayOfflineService>()));
  gh.factoryParam<
          _i60.DetailedInputAreaBloc,
          _i37.Cubit<_i38.AbstractGameSnapshot>?,
          _i37.Bloc<_i39.InGameEvent, _i40.InGameState>?>(
      (playWatcherCubit, inGameBloc) => _i60.DetailedInputAreaBloc(
          playWatcherCubit,
          inGameBloc,
          get<_i35.InputCubit>(),
          get<_i45.ShowCheckoutDetailsCubit>()));
  gh.lazySingleton<_i61.DoubleTrainingBloc>(
      () => _i61.DoubleTrainingBloc(get<_i20.IDoubleTrainingService>()));
  gh.lazySingleton<_i62.EditProfileImageBloc>(
      () => _i62.EditProfileImageBloc(get<_i32.IUserService>()));
  gh.lazySingleton<_i63.ForgotPasswordBloc>(
      () => _i63.ForgotPasswordBloc(get<_i13.IAuthService>()));
  gh.lazySingleton<_i64.GameHistoryBloc>(() => _i64.GameHistoryBloc(
      get<_i32.IUserService>(), get<_i22.IGameHistoryService>()));
  gh.lazySingleton<_i13.IAuthService>(
      () => _i65.FirebaseAuthService(
          get<_i8.FirebaseAuth>(),
          get<_i12.GoogleSignIn>(),
          get<_i7.FacebookAuth>(),
          get<_i49.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i66.IFriendService>(
      () => _i67.MockedFriendService(
          get<_i13.IAuthService>(), get<_i32.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i24.IGameInvitationService>(
      () => _i68.GameInvitationService(
          get<_i13.IAuthService>(),
          get<_i9.FirebaseFirestore>(),
          get<_i49.SocialClient>(),
          get<_i6.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i69.IPlayOnlineService>(
      () => _i70.MockedPlayOnlineService(get<_i32.IUserService>()),
      registerFor: {_dev});
  gh.lazySingleton<_i32.IUserService>(
      () => _i71.UserService(
          get<_i9.FirebaseFirestore>(),
          get<_i11.FirebaseStorage>(),
          get<_i13.IAuthService>(),
          get<_i49.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i72.InOnlineGameBloc>(
      () => _i72.InOnlineGameBloc(get<_i69.IPlayOnlineService>()));
  gh.lazySingleton<_i73.MoreBloc>(
      () => _i73.MoreBloc(get<_i66.IFriendService>()));
  gh.lazySingleton<_i74.PlayOnlineWatcherCubit>(
      () => _i74.PlayOnlineWatcherCubit(get<_i69.IPlayOnlineService>()));
  gh.lazySingleton<_i75.SearchUserBloc>(
      () => _i75.SearchUserBloc(get<_i66.IFriendService>()));
  gh.lazySingleton<_i76.CreateOnlineGameBloc>(
      () => _i76.CreateOnlineGameBloc(get<_i69.IPlayOnlineService>()));
  gh.lazySingleton<_i77.FriendsBloc>(
      () => _i77.FriendsBloc(get<_i66.IFriendService>()));
  gh.lazySingleton<_i78.GameInvitationsBloc>(() => _i78.GameInvitationsBloc(
      get<_i69.IPlayOnlineService>(), get<_i24.IGameInvitationService>()));
  gh.lazySingleton<_i79.HomeBloc>(() => _i79.HomeBloc(
      get<_i26.IPlayOfflineService>(),
      get<_i69.IPlayOnlineService>(),
      get<_i32.IUserService>(),
      get<_i24.IGameInvitationService>(),
      get<_i66.IFriendService>()));
  gh.lazySingleton<_i66.IFriendService>(
      () => _i80.FriendService(
          get<_i13.IAuthService>(),
          get<_i32.IUserService>(),
          get<_i9.FirebaseFirestore>(),
          get<_i49.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i22.IGameHistoryService>(
      () => _i81.GameHistoryService(get<_i9.FirebaseFirestore>(),
          get<_i32.IUserService>(), get<_i66.IFriendService>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i69.IPlayOnlineService>(
      () => _i82.PlayOnlineService(get<_i6.DartClient>(),
          get<_i32.IUserService>(), get<_i66.IFriendService>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i83.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i84.FireBaseInjectableModule {}
