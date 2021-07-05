// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:cloud_functions/cloud_functions.dart' as _i8;
import 'package:dart_client/dart_client.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i35;

import 'application/auth/auth_bloc.dart' as _i37;
import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i40;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i33;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i34;
import 'application/create_game/create_game_bloc.dart' as _i38;
import 'application/friends/friends_bloc.dart' as _i41;
import 'application/game_history/game_history_bloc.dart' as _i42;
import 'application/home/home_bloc.dart' as _i43;
import 'application/in_game/checkout_details/checkout_details_bloc.dart' as _i3;
import 'application/in_game/in_game_bloc.dart' as _i25;
import 'application/in_game/input_area/detailed_key_board/detailed_key_board_bloc.dart'
    as _i5;
import 'application/in_game/input_area/input_row/input_row_bloc.dart' as _i26;
import 'application/in_game/input_area/key_board/key_board_bloc.dart' as _i28;
import 'application/in_game/player_displayer/player_displayer_bloc.dart'
    as _i29;
import 'application/invitations/invitations_bloc.dart' as _i27;
import 'application/post_game/post_game_bloc.dart' as _i30;
import 'application/profile/profile_bloc.dart' as _i31;
import 'application/settings/edit_profile/edit_profile_bloc.dart' as _i39;
import 'application/settings/settings_bloc.dart' as _i32;
import 'application/splash/splash_bloc.dart' as _i36;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'domain/friend/i_friend_facade.dart' as _i14;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i16;
import 'domain/play/i_play_facade.dart' as _i19;
import 'domain/user/i_user_facade.dart' as _i22;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i13;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i46;
import 'infrastructure/core/jtd_injectable_module.dart' as _i45;
import 'infrastructure/friend/friend_facade.dart' as _i44;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i15;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i18;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i17;
import 'infrastructure/play/mocked_play_faced.dart' as _i21;
import 'infrastructure/play/play_facade.dart' as _i20;
import 'infrastructure/user/mocked_user_facade.dart' as _i24;
import 'infrastructure/user/user_facade.dart' as _i23;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final jtdInjectableModule = _$JtdInjectableModule();
  final fireBaseInjectableModule = _$FireBaseInjectableModule();
  gh.factory<_i3.CheckoutDetailsBloc>(() => _i3.CheckoutDetailsBloc());
  gh.lazySingleton<_i4.DartClient>(() => jtdInjectableModule.dartClient);
  gh.factory<_i5.DetailedKeyBoardBloc>(() => _i5.DetailedKeyBoardBloc());
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i8.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i9.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i10.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i11.IAuthFacade>(
      () => _i13.FirebaseAuthFacade(get<_i6.FirebaseAuth>(),
          get<_i10.GoogleSignIn>(), get<_i7.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i14.IFriendFacade>(() => _i15.MockedFriendFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i17.MockedGameInvitationFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i16.IGameInvitationFacade>(
      () => _i18.GameInvitationFacade(get<_i7.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i19.IPlayFacade>(() => _i20.PlayFacade(),
      registerFor: {_prod});
  gh.lazySingleton<_i19.IPlayFacade>(() => _i21.MockedPlayFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i22.IUserFacade>(
      () => _i23.UserFacade(
          get<_i7.FirebaseFirestore>(),
          get<_i9.FirebaseStorage>(),
          get<_i11.IAuthFacade>(),
          get<_i8.FirebaseFunctions>()),
      registerFor: {_prod});
  gh.lazySingleton<_i22.IUserFacade>(() => _i24.MockedUserFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i25.InGameBloc>(
      () => _i25.InGameBloc(get<_i19.IPlayFacade>()));
  gh.lazySingleton<_i26.InputRowBloc>(
      () => _i26.InputRowBloc(get<_i19.IPlayFacade>(), get<_i25.InGameBloc>()));
  gh.factory<_i27.InvitationsBloc>(
      () => _i27.InvitationsBloc(get<_i16.IGameInvitationFacade>()));
  gh.factory<_i28.KeyBoardBloc>(() => _i28.KeyBoardBloc(get<_i19.IPlayFacade>(),
      get<_i25.InGameBloc>(), get<_i26.InputRowBloc>()));
  gh.factory<_i29.PlayerDisplayerBloc>(
      () => _i29.PlayerDisplayerBloc(get<_i19.IPlayFacade>()));
  gh.factory<_i30.PostGameBloc>(
      () => _i30.PostGameBloc(get<_i19.IPlayFacade>()));
  gh.factory<_i31.ProfileBloc>(() => _i31.ProfileBloc(get<_i22.IUserFacade>()));
  gh.factory<_i32.SettingsBloc>(
      () => _i32.SettingsBloc(get<_i22.IUserFacade>()));
  gh.factory<_i33.SignInBloc>(() => _i33.SignInBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i34.SignUpBloc>(() => _i34.SignUpBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i35.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i36.SplashBloc>(() => _i36.SplashBloc(
      get<_i16.IGameInvitationFacade>(),
      get<_i14.IFriendFacade>(),
      get<_i22.IUserFacade>()));
  gh.factory<_i37.AuthBloc>(() => _i37.AuthBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i38.CreateGameBloc>(
      () => _i38.CreateGameBloc(get<_i19.IPlayFacade>()));
  gh.factory<_i39.EditProfileBloc>(
      () => _i39.EditProfileBloc(get<_i22.IUserFacade>()));
  gh.factory<_i40.ForgotPasswordBloc>(
      () => _i40.ForgotPasswordBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i41.FriendsBloc>(
      () => _i41.FriendsBloc(get<_i14.IFriendFacade>()));
  gh.factory<_i42.GameHistoryBloc>(
      () => _i42.GameHistoryBloc(get<_i22.IUserFacade>()));
  gh.factory<_i43.HomeBloc>(() => _i43.HomeBloc(
      get<_i16.IGameInvitationFacade>(),
      get<_i14.IFriendFacade>(),
      get<_i22.IUserFacade>(),
      get<_i19.IPlayFacade>()));
  gh.lazySingleton<_i14.IFriendFacade>(
      () => _i44.FriendFacade(
          get<_i7.FirebaseFirestore>(), get<_i35.SocialClient>()),
      registerFor: {_prod});
  return get;
}

class _$JtdInjectableModule extends _i45.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i46.FireBaseInjectableModule {}
