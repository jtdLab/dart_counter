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
import 'package:social_client/social_client.dart' as _i31;

import 'application/auth/auth_bloc.dart' as _i33;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i29;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i30;
import 'application/core/friend_request/friend_request_bloc.dart' as _i35;
import 'application/core/invitation/invitation_bloc.dart' as _i24;
import 'application/core/loading/loading_bloc.dart' as _i25;
import 'application/core/play/play_bloc.dart' as _i26;
import 'application/core/profile/edit_profile/edit_profile_bloc.dart' as _i34;
import 'application/core/profile/profile_bloc.dart' as _i28;
import 'application/core/user/user_bloc.dart' as _i32;
import 'application/in_game/input_area/input_area_bloc.dart' as _i23;
import 'application/in_game/player_displayer/player_displayer_bloc.dart'
    as _i27;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/friend/i_friend_facade.dart' as _i12;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i14;
import 'domain/play/i_play_facade.dart' as _i17;
import 'domain/user/i_user_facade.dart' as _i20;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i38;
import 'infrastructure/core/jtd_injectable_module.dart' as _i37;
import 'infrastructure/friend/friend_facade.dart' as _i36;
import 'infrastructure/friend/mocked_friend_facade.dart' as _i13;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i15;
import 'infrastructure/game_invitation/mocked_game_invitation_facade.dart'
    as _i16;
import 'infrastructure/play/mocked_play_faced.dart' as _i19;
import 'infrastructure/play/play_facade.dart' as _i18;
import 'infrastructure/user/mocked_user_facade.dart' as _i22;
import 'infrastructure/user/user_facade.dart' as _i21;

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
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.FirebaseAuthFacade(get<_i4.FirebaseAuth>(),
          get<_i8.GoogleSignIn>(), get<_i5.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i9.IAuthFacade>(() => _i11.MockedAuthFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i12.IFriendFacade>(() => _i13.MockedFriendFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i14.IGameInvitationFacade>(
      () => _i15.GameInvitationFacade(get<_i5.FirebaseFirestore>()),
      registerFor: {_prod});
  gh.lazySingleton<_i14.IGameInvitationFacade>(
      () => _i16.MockedGameInvitationFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i17.IPlayFacade>(() => _i18.PlayFacade(),
      registerFor: {_prod});
  gh.lazySingleton<_i17.IPlayFacade>(() => _i19.MockedPlayFacade(),
      registerFor: {_dev});
  gh.lazySingleton<_i20.IUserFacade>(
      () => _i21.UserFacade(
          get<_i5.FirebaseFirestore>(),
          get<_i7.FirebaseStorage>(),
          get<_i9.IAuthFacade>(),
          get<_i6.FirebaseFunctions>()),
      registerFor: {_prod});
  gh.lazySingleton<_i20.IUserFacade>(() => _i22.MockedUserFacade(),
      registerFor: {_dev});
  gh.factory<_i23.InputAreaBloc>(
      () => _i23.InputAreaBloc(get<_i17.IPlayFacade>()));
  gh.factory<_i24.InvitationBloc>(
      () => _i24.InvitationBloc(get<_i14.IGameInvitationFacade>()));
  gh.factory<_i25.LoadingBloc>(() => _i25.LoadingBloc());
  gh.factory<_i26.PlayBloc>(() => _i26.PlayBloc(get<_i17.IPlayFacade>()));
  gh.factory<_i27.PlayerDisplayerBloc>(
      () => _i27.PlayerDisplayerBloc(get<_i17.IPlayFacade>()));
  gh.factory<_i28.ProfileBloc>(() => _i28.ProfileBloc(get<_i20.IUserFacade>()));
  gh.factory<_i29.SignInBloc>(() => _i29.SignInBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i30.SignUpBloc>(() => _i30.SignUpBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i31.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i32.UserBloc>(() => _i32.UserBloc(get<_i20.IUserFacade>()));
  gh.factory<_i33.AuthBloc>(() => _i33.AuthBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i34.EditProfileBloc>(
      () => _i34.EditProfileBloc(get<_i20.IUserFacade>()));
  gh.factory<_i35.FriendRequestBloc>(
      () => _i35.FriendRequestBloc(get<_i12.IFriendFacade>()));
  gh.lazySingleton<_i12.IFriendFacade>(
      () => _i36.FriendFacade(
          get<_i5.FirebaseFirestore>(), get<_i31.SocialClient>()),
      registerFor: {_prod});
  return get;
}

class _$JtdInjectableModule extends _i37.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i38.FireBaseInjectableModule {}
