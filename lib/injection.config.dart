// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:cloud_functions/cloud_functions.dart' as _i7;
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dart_client/dart_client.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i31;

import 'application/core/auth/auth_bloc.dart' as _i33;
import 'application/core/play/play_bloc.dart' as _i47;
import 'application/create_game/create_game_bloc.dart' as _i49;
import 'application/friends/search_user/search_user_bloc.dart' as _i27;
import 'application/game_history/game_history_bloc.dart' as _i39;
import 'application/home/home_bloc.dart' as _i50;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i56;
import 'application/in_game/detailed_input_area/detailed_input_area_bloc.dart'
    as _i57;
import 'application/in_game/in_game_bloc.dart' as _i51;
import 'application/in_game/optical_input_area/optical_input_area_bloc.dart'
    as _i53;
import 'application/in_game/speech_input_area/speech_input_area_bloc.dart'
    as _i54;
import 'application/in_game/standard_input_area/standard_input_area_bloc.dart'
    as _i55;
import 'application/in_game/stats/stats_bloc.dart' as _i32;
import 'application/invitations/invitations_bloc.dart' as _i52;
import 'application/post_game/post_game_bloc.dart' as _i48;
import 'application/profile/profile_bloc.dart' as _i26;
import 'application/settings/change_email/change_email_bloc.dart' as _i34;
import 'application/settings/change_password/change_password_bloc.dart' as _i35;
import 'application/settings/change_username/change_username_bloc.dart' as _i36;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i37;
import 'application/settings/settings_bloc.dart' as _i28;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i38;
import 'application/sign_in/sign_in_bloc.dart' as _i29;
import 'application/sign_up/sign_up_bloc.dart' as _i30;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/connectivity/i_connectivity_facade.dart' as _i12;
import 'domain/friend/i_friend_facade.dart' as _i15;
import 'domain/game_history/i_game_history_facade.dart' as _i17;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i20;
import 'domain/play/i_play_offline_facade.dart' as _i22;
import 'domain/play/i_play_online_facade.dart' as _i43;
import 'domain/user/i_user_facade.dart' as _i24;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i40;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i11;
import 'infrastructure/connectivity/connectivity_facade.dart' as _i13;
import 'infrastructure/connectivity/mocked_connectivity_facade.dart' as _i14;
import 'infrastructure/core/firebase_injectable_module.dart' as _i59;
import 'infrastructure/core/jtd_injectable_module.dart' as _i58;
import 'infrastructure/friend/friend_facade.dart' as _i41;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i16;
import 'infrastructure/game_history/game_history_facade.dart' as _i18;
import 'infrastructure/game_history/mocked_game_history_facade.dart' as _i19;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i42;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i21;
import 'infrastructure/play/mocked_play_online_facade.dart' as _i44;
import 'infrastructure/play/play_offline_facade.dart' as _i23;
import 'infrastructure/play/play_online_facade.dart' as _i45;
import 'infrastructure/user/mocked_user_facade.dart' as _i25;
import 'infrastructure/user/user_facade.dart' as _i46;

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
  gh.lazySingleton<_i3.Connectivity>(() => jtdInjectableModule.connectivity);
  gh.lazySingleton<_i4.DartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i7.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i8.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i9.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i10.IAuthFacade>(() => _i11.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i12.IConnectivityFacade>(
      () => _i13.ConnectivityFacade(get<_i3.Connectivity>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i12.IConnectivityFacade>(
      () => _i14.MockedConnectivityFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i15.IFriendFacade>(
      () => _i16.MockedFriendFacade(get<_i10.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i17.IGameHistoryFacade>(
      () => _i18.GameHistoryFacade(get<_i6.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i17.IGameHistoryFacade>(
      () => _i19.MockedGameHistoryFacade(get<_i10.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i20.IGameInvitationFacade>(
      () => _i21.MockedGameInvitationFacade(get<_i10.IAuthFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i22.IPlayOfflineFacade>(() => _i23.PlayOfflineFacade(),
      registerFor: {_dev, _test, _prod});
  gh.lazySingleton<_i24.IUserFacade>(
      () => _i25.MockedUserFacade(get<_i10.IAuthFacade>()),
      registerFor: {_dev});
  gh.factory<_i26.ProfileBloc>(() => _i26.ProfileBloc(get<_i24.IUserFacade>()));
  gh.lazySingleton<_i27.SearchUserBloc>(
      () => _i27.SearchUserBloc(get<_i15.IFriendFacade>()));
  gh.factory<_i28.SettingsBloc>(() =>
      _i28.SettingsBloc(get<_i10.IAuthFacade>(), get<_i24.IUserFacade>()));
  gh.lazySingleton<_i29.SignInBloc>(
      () => _i29.SignInBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i30.SignUpBloc>(
      () => _i30.SignUpBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i31.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i32.StatsBloc>(() => _i32.StatsBloc());
  gh.lazySingleton<_i33.AuthBloc>(() => _i33.AuthBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i34.ChangeEmailBloc>(
      () => _i34.ChangeEmailBloc(get<_i24.IUserFacade>()));
  gh.lazySingleton<_i35.ChangePasswordBloc>(
      () => _i35.ChangePasswordBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i36.ChangeUsernameBloc>(
      () => _i36.ChangeUsernameBloc(get<_i24.IUserFacade>()));
  gh.lazySingleton<_i37.EditProfileImageBloc>(
      () => _i37.EditProfileImageBloc(get<_i24.IUserFacade>()));
  gh.lazySingleton<_i38.ForgotPasswordBloc>(
      () => _i38.ForgotPasswordBloc(get<_i10.IAuthFacade>()));
  gh.lazySingleton<_i39.GameHistoryBloc>(() => _i39.GameHistoryBloc(
      get<_i24.IUserFacade>(), get<_i17.IGameHistoryFacade>()));
  gh.lazySingleton<_i10.IAuthFacade>(
      () => _i40.FirebaseAuthFacade(get<_i5.FirebaseAuth>(),
          get<_i9.GoogleSignIn>(), get<_i31.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i15.IFriendFacade>(
      () => _i41.FriendFacade(get<_i24.IUserFacade>(),
          get<_i6.FirebaseFirestore>(), get<_i31.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i20.IGameInvitationFacade>(
      () => _i42.GameInvitationFacade(get<_i6.FirebaseFirestore>(),
          get<_i31.SocialClient>(), get<_i4.DartClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i43.IPlayOnlineFacade>(
      () => _i44.MockedPlayOnlineFacade(get<_i24.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i43.IPlayOnlineFacade>(
      () =>
          _i45.PlayOnlineFacade(get<_i4.DartClient>(), get<_i24.IUserFacade>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i24.IUserFacade>(
      () => _i46.UserFacade(
          get<_i6.FirebaseFirestore>(),
          get<_i8.FirebaseStorage>(),
          get<_i10.IAuthFacade>(),
          get<_i31.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i47.PlayBloc>(() => _i47.PlayBloc(
      get<_i22.IPlayOfflineFacade>(), get<_i43.IPlayOnlineFacade>()));
  gh.lazySingleton<_i48.PostGameBloc>(
      () => _i48.PostGameBloc(get<_i47.PlayBloc>()));
  gh.lazySingleton<_i49.CreateGameBloc>(() =>
      _i49.CreateGameBloc(get<_i47.PlayBloc>(), get<_i15.IFriendFacade>()));
  gh.lazySingleton<_i50.HomeBloc>(() => _i50.HomeBloc(
      get<_i24.IUserFacade>(),
      get<_i20.IGameInvitationFacade>(),
      get<_i15.IFriendFacade>(),
      get<_i47.PlayBloc>()));
  gh.lazySingleton<_i51.InGameBloc>(
      () => _i51.InGameBloc(get<_i47.PlayBloc>()));
  gh.factory<_i52.InvitationsBloc>(() => _i52.InvitationsBloc(
      get<_i20.IGameInvitationFacade>(), get<_i47.PlayBloc>()));
  gh.lazySingleton<_i53.OpticalInputAreaBloc>(
      () => _i53.OpticalInputAreaBloc(get<_i51.InGameBloc>()));
  gh.lazySingleton<_i54.SpeechInputAreaBloc>(
      () => _i54.SpeechInputAreaBloc(get<_i51.InGameBloc>()));
  gh.lazySingleton<_i55.StandardInputAreaBloc>(
      () => _i55.StandardInputAreaBloc(get<_i51.InGameBloc>()));
  gh.lazySingleton<_i56.CheckoutDetailsBloc>(
      () => _i56.CheckoutDetailsBloc(get<_i51.InGameBloc>()));
  gh.lazySingleton<_i57.DetailedInputAreaBloc>(
      () => _i57.DetailedInputAreaBloc(get<_i51.InGameBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i58.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i59.FireBaseInjectableModule {}
