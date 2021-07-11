// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:cloud_functions/cloud_functions.dart' as _i7;
import 'package:dart_client/dart_client.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i34;

import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i40;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i32;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i33;
import 'application/create_game/create_game_bloc.dart' as _i38;
import 'application/friends/friends_bloc.dart' as _i41;
import 'application/game_history/game_history_bloc.dart' as _i42;
import 'application/home/home_bloc.dart' as _i43;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i37;
import 'application/in_game/in_game_bloc.dart' as _i24;
import 'application/in_game/input_area/detailed_key_board/detailed_key_board_bloc.dart'
    as _i4;
import 'application/in_game/input_area/input_row/input_row_bloc.dart' as _i25;
import 'application/in_game/input_area/key_board/key_board_bloc.dart' as _i27;
import 'application/in_game/player_displayer/player_displayer_bloc.dart'
    as _i28;
import 'application/in_game/stats/stats_bloc.dart' as _i36;
import 'application/invitations/invitations_bloc.dart' as _i26;
import 'application/post_game/post_game_bloc.dart' as _i29;
import 'application/profile/profile_bloc.dart' as _i30;
import 'application/settings/edit_profile/edit_profile_bloc.dart' as _i39;
import 'application/settings/settings_bloc.dart' as _i31;
import 'application/splash/splash_bloc.dart' as _i35;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/friend/i_friend_facade.dart' as _i13;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i15;
import 'domain/play/i_play_facade.dart' as _i18;
import 'domain/user/i_user_facade.dart' as _i21;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i46;
import 'infrastructure/core/jtd_injectable_module.dart' as _i45;
import 'infrastructure/friend/friend_facade.dart' as _i44;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i14;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i17;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i16;
import 'infrastructure/play/mocked_play_faced.dart' as _i20;
import 'infrastructure/play/play_facade.dart' as _i19;
import 'infrastructure/user/mocked_user_facade.dart' as _i22;
import 'infrastructure/user/user_facade.dart' as _i23;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final jtdInjectableModule = _$JtdInjectableModule();
  final fireBaseInjectableModule = _$FireBaseInjectableModule();
  gh.lazySingleton<_i3.DartClient>(() => jtdInjectableModule.dartClient);
  gh.factory<_i4.DetailedKeyBoardBloc>(() => _i4.DetailedKeyBoardBloc());
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
  gh.lazySingleton<_i10.IAuthFacade>(
      () => _i11.FirebaseAuthFacade(get<_i5.FirebaseAuth>(),
          get<_i9.GoogleSignIn>(), get<_i6.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i10.IAuthFacade>(() => _i12.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i13.IFriendFacade>(() => _i14.MockedFriendFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i15.IGameInvitationFacade>(
      () => _i16.MockedGameInvitationFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i15.IGameInvitationFacade>(
      () => _i17.GameInvitationFacade(get<_i6.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i18.IPlayFacade>(() => _i19.PlayFacade(),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i18.IPlayFacade>(() => _i20.MockedPlayFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i21.IUserFacade>(() => _i22.MockedUserFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i21.IUserFacade>(
      () => _i23.UserFacade(
          get<_i6.FirebaseFirestore>(),
          get<_i8.FirebaseStorage>(),
          get<_i10.IAuthFacade>(),
          get<_i7.FirebaseFunctions>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i24.InGameBloc>(
      () => _i24.InGameBloc(get<_i18.IPlayFacade>()));
  gh.lazySingleton<_i25.InputRowBloc>(
      () => _i25.InputRowBloc(get<_i18.IPlayFacade>(), get<_i24.InGameBloc>()));
  gh.factory<_i26.InvitationsBloc>(
      () => _i26.InvitationsBloc(get<_i15.IGameInvitationFacade>()));
  gh.factory<_i27.KeyBoardBloc>(() => _i27.KeyBoardBloc(get<_i18.IPlayFacade>(),
      get<_i24.InGameBloc>(), get<_i25.InputRowBloc>()));
  gh.factory<_i28.PlayerDisplayerBloc>(
      () => _i28.PlayerDisplayerBloc(get<_i18.IPlayFacade>()));
  gh.factory<_i29.PostGameBloc>(
      () => _i29.PostGameBloc(get<_i18.IPlayFacade>()));
  gh.factory<_i30.ProfileBloc>(() => _i30.ProfileBloc(get<_i21.IUserFacade>()));
  gh.factory<_i31.SettingsBloc>(() =>
      _i31.SettingsBloc(get<_i10.IAuthFacade>(), get<_i21.IUserFacade>()));
  gh.factory<_i32.SignInBloc>(() => _i32.SignInBloc(
      get<_i10.IAuthFacade>(),
      get<_i21.IUserFacade>(),
      get<_i15.IGameInvitationFacade>(),
      get<_i13.IFriendFacade>()));
  gh.factory<_i33.SignUpBloc>(() => _i33.SignUpBloc(
      get<_i10.IAuthFacade>(),
      get<_i21.IUserFacade>(),
      get<_i15.IGameInvitationFacade>(),
      get<_i13.IFriendFacade>()));
  gh.lazySingleton<_i34.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i35.SplashBloc>(() => _i35.SplashBloc(
      get<_i15.IGameInvitationFacade>(),
      get<_i13.IFriendFacade>(),
      get<_i21.IUserFacade>()));
  gh.factory<_i36.StatsBloc>(() => _i36.StatsBloc(get<_i18.IPlayFacade>()));
  gh.factory<_i37.CheckoutDetailsBloc>(() => _i37.CheckoutDetailsBloc(
      get<_i18.IPlayFacade>(), get<_i25.InputRowBloc>()));
  gh.factory<_i38.CreateGameBloc>(
      () => _i38.CreateGameBloc(get<_i18.IPlayFacade>()));
  gh.factory<_i39.EditProfileBloc>(
      () => _i39.EditProfileBloc(get<_i21.IUserFacade>()));
  gh.factory<_i40.ForgotPasswordBloc>(
      () => _i40.ForgotPasswordBloc(get<_i10.IAuthFacade>()));
  gh.factory<_i41.FriendsBloc>(
      () => _i41.FriendsBloc(get<_i13.IFriendFacade>()));
  gh.factory<_i42.GameHistoryBloc>(
      () => _i42.GameHistoryBloc(get<_i21.IUserFacade>()));
  gh.factory<_i43.HomeBloc>(() => _i43.HomeBloc(
      get<_i15.IGameInvitationFacade>(),
      get<_i13.IFriendFacade>(),
      get<_i21.IUserFacade>(),
      get<_i18.IPlayFacade>()));
  gh.lazySingleton<_i13.IFriendFacade>(
      () => _i44.FriendFacade(
          get<_i6.FirebaseFirestore>(), get<_i34.SocialClient>()),
      registerFor: {_test, _prod});
  return get;
}

class _$JtdInjectableModule extends _i45.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i46.FireBaseInjectableModule {}
