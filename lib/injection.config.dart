// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:cloud_functions/cloud_functions.dart' as _i6;
import 'package:dart_client/dart_client.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:social_client/social_client.dart' as _i27;

import 'application/core/auth/auth_bloc.dart' as _i31;
import 'application/core/friends/friends_bloc.dart' as _i37;
import 'application/core/game/game_bloc.dart' as _i38;
import 'application/core/invitations/invitations_bloc.dart' as _i22;
import 'application/core/user/user_bloc.dart' as _i30;
import 'application/create_game/create_game_bloc.dart' as _i52;
import 'application/friends/search_user/search_user_bloc.dart' as _i24;
import 'application/game_history/game_history_bloc.dart' as _i39;
import 'application/home/home_bloc.dart' as _i40;
import 'application/in_game/checkout_details/checkout_details_bloc.dart'
    as _i51;
import 'application/in_game/in_game_bloc.dart' as _i43;
import 'application/in_game/input_area/detailed_key_board/detailed_key_board_bloc.dart'
    as _i53;
import 'application/in_game/input_area/input_row/input_row_bloc.dart' as _i44;
import 'application/in_game/input_area/key_board/key_board_bloc.dart' as _i46;
import 'application/in_game/input_area/optical_key_board/optical_key_board_bloc.dart'
    as _i23;
import 'application/in_game/input_area/speech_key_board/speech_key_board_bloc.dart'
    as _i28;
import 'application/in_game/player_displayer/player_displayer_bloc.dart'
    as _i47;
import 'application/in_game/stats/stats_bloc.dart' as _i29;
import 'application/invitations/invitations_bloc.dart' as _i45;
import 'application/post_game/post_game_bloc.dart' as _i48;
import 'application/profile/profile_bloc.dart' as _i49;
import 'application/settings/change_email/change_email_bloc.dart' as _i32;
import 'application/settings/change_password/change_password_bloc.dart' as _i33;
import 'application/settings/change_username/change_username_bloc.dart' as _i34;
import 'application/settings/edit_profile_image/edit_profile_image_bloc.dart'
    as _i35;
import 'application/settings/settings_bloc.dart' as _i50;
import 'application/sign_in/forgot_password/forgot_password_bloc.dart' as _i36;
import 'application/sign_in/sign_in_bloc.dart' as _i25;
import 'application/sign_up/sign_up_bloc.dart' as _i26;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/friend/i_friend_facade.dart' as _i12;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i14;
import 'domain/play/i_play_facade.dart' as _i17;
import 'domain/user/i_user_facade.dart' as _i19;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i55;
import 'infrastructure/core/jtd_injectable_module.dart' as _i54;
import 'infrastructure/friend/friend_facade.dart' as _i41;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i13;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i15;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i16;
import 'infrastructure/play/mocked_play_faced.dart' as _i42;
import 'infrastructure/play/play_facade.dart' as _i18;
import 'infrastructure/user/mocked_user_facade.dart' as _i21;
import 'infrastructure/user/user_facade.dart' as _i20;

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
  gh.lazySingleton<_i3.DartClient>(() => jtdInjectableModule.dartClient);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i6.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i7.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i11.FirebaseAuthFacade(get<_i4.FirebaseAuth>(),
          get<_i8.GoogleSignIn>(), get<_i5.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i12.IFriendFacade>(() => _i13.MockedFriendFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i14.IGameInvitationFacade>(
      () => _i15.GameInvitationFacade(get<_i5.FirebaseFirestore>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i14.IGameInvitationFacade>(
      () => _i16.MockedGameInvitationFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i17.IPlayFacade>(() => _i18.PlayFacade(),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i19.IUserFacade>(
      () => _i20.UserFacade(
          get<_i5.FirebaseFirestore>(),
          get<_i7.FirebaseStorage>(),
          get<_i9.IAuthFacade>(),
          get<_i6.FirebaseFunctions>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i19.IUserFacade>(() => _i21.MockedUserFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i22.InvitationsBloc>(
      () => _i22.InvitationsBloc(get<_i14.IGameInvitationFacade>()));
  gh.lazySingleton<_i23.OpticalKeyBoardBloc>(() => _i23.OpticalKeyBoardBloc());
  gh.lazySingleton<_i24.SearchUserBloc>(
      () => _i24.SearchUserBloc(get<_i12.IFriendFacade>()));
  gh.lazySingleton<_i25.SignInBloc>(
      () => _i25.SignInBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i26.SignUpBloc>(
      () => _i26.SignUpBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i27.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.lazySingleton<_i28.SpeechKeyBoardBloc>(() => _i28.SpeechKeyBoardBloc());
  gh.lazySingleton<_i29.StatsBloc>(
      () => _i29.StatsBloc(get<_i17.IPlayFacade>()));
  gh.lazySingleton<_i30.UserBloc>(() => _i30.UserBloc(get<_i19.IUserFacade>()));
  gh.lazySingleton<_i31.AuthBloc>(() => _i31.AuthBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i32.ChangeEmailBloc>(
      () => _i32.ChangeEmailBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i33.ChangePasswordBloc>(
      () => _i33.ChangePasswordBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i34.ChangeUsernameBloc>(
      () => _i34.ChangeUsernameBloc(get<_i19.IUserFacade>()));
  gh.lazySingleton<_i35.EditProfileImageBloc>(
      () => _i35.EditProfileImageBloc(get<_i19.IUserFacade>()));
  gh.lazySingleton<_i36.ForgotPasswordBloc>(
      () => _i36.ForgotPasswordBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i37.FriendsBloc>(
      () => _i37.FriendsBloc(get<_i12.IFriendFacade>()));
  gh.lazySingleton<_i38.GameBloc>(() => _i38.GameBloc(get<_i17.IPlayFacade>()));
  gh.lazySingleton<_i39.GameHistoryBloc>(
      () => _i39.GameHistoryBloc(get<_i30.UserBloc>()));
  gh.lazySingleton<_i40.HomeBloc>(() => _i40.HomeBloc(
      get<_i14.IGameInvitationFacade>(),
      get<_i12.IFriendFacade>(),
      get<_i17.IPlayFacade>(),
      get<_i30.UserBloc>(),
      get<_i38.GameBloc>(),
      get<_i22.InvitationsBloc>(),
      get<_i37.FriendsBloc>()));
  gh.lazySingleton<_i12.IFriendFacade>(
      () => _i41.FriendFacade(
          get<_i5.FirebaseFirestore>(), get<_i27.SocialClient>()),
      registerFor: {_test, _prod});
  gh.lazySingleton<_i17.IPlayFacade>(
      () => _i42.MockedPlayFacade(get<_i19.IUserFacade>()),
      registerFor: {_dev});
  gh.lazySingleton<_i43.InGameBloc>(
      () => _i43.InGameBloc(get<_i17.IPlayFacade>(), get<_i38.GameBloc>()));
  gh.lazySingleton<_i44.InputRowBloc>(
      () => _i44.InputRowBloc(get<_i17.IPlayFacade>(), get<_i43.InGameBloc>()));
  gh.factory<_i45.InvitationsBloc>(() => _i45.InvitationsBloc(
      get<_i14.IGameInvitationFacade>(), get<_i22.InvitationsBloc>()));
  gh.lazySingleton<_i46.KeyBoardBloc>(() => _i46.KeyBoardBloc(
      get<_i17.IPlayFacade>(),
      get<_i43.InGameBloc>(),
      get<_i44.InputRowBloc>()));
  gh.lazySingleton<_i47.PlayerDisplayerBloc>(
      () => _i47.PlayerDisplayerBloc(get<_i43.InGameBloc>()));
  gh.lazySingleton<_i48.PostGameBloc>(
      () => _i48.PostGameBloc(get<_i38.GameBloc>()));
  gh.factory<_i49.ProfileBloc>(() => _i49.ProfileBloc(get<_i30.UserBloc>()));
  gh.factory<_i50.SettingsBloc>(
      () => _i50.SettingsBloc(get<_i9.IAuthFacade>(), get<_i30.UserBloc>()));
  gh.lazySingleton<_i51.CheckoutDetailsBloc>(() => _i51.CheckoutDetailsBloc(
      get<_i17.IPlayFacade>(),
      get<_i44.InputRowBloc>(),
      get<_i43.InGameBloc>()));
  gh.lazySingleton<_i52.CreateGameBloc>(
      () => _i52.CreateGameBloc(get<_i17.IPlayFacade>(), get<_i38.GameBloc>()));
  gh.lazySingleton<_i53.DetailedKeyBoardBloc>(() => _i53.DetailedKeyBoardBloc(
      get<_i17.IPlayFacade>(),
      get<_i43.InGameBloc>(),
      get<_i44.InputRowBloc>()));
  return get;
}

class _$JtdInjectableModule extends _i54.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i55.FireBaseInjectableModule {}
