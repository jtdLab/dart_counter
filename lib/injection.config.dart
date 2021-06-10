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
import 'package:social_client/social_client.dart' as _i26;

import 'application/auth/auth_bloc.dart' as _i27;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i24;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i25;
import 'application/create_game/create_game_bloc.dart' as _i28;
import 'application/home/home_bloc.dart' as _i30;
import 'application/loading/loading_bloc.dart' as _i32;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i29;
import 'application/profile/profile_bloc.dart' as _i23;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/friend/i_friend_facade.dart' as _i12;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i14;
import 'domain/play/i_play_facade.dart' as _i17;
import 'domain/user/i_user_facade.dart' as _i20;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/auth/mocked_auth_facade.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i34;
import 'infrastructure/core/jtd_injectable_module.dart' as _i33;
import 'infrastructure/friend/friend_facade.dart' as _i31;
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
  gh.factory<_i23.ProfileBloc>(() => _i23.ProfileBloc(get<_i20.IUserFacade>()));
  gh.factory<_i24.SignInBloc>(() => _i24.SignInBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i25.SignUpBloc>(() => _i25.SignUpBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i26.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i28.CreateGameBloc>(
      () => _i28.CreateGameBloc(get<_i17.IPlayFacade>()));
  gh.factory<_i29.EditProfileBloc>(
      () => _i29.EditProfileBloc(get<_i20.IUserFacade>()));
  gh.factory<_i30.HomeBloc>(() => _i30.HomeBloc(get<_i12.IFriendFacade>(),
      get<_i14.IGameInvitationFacade>(), get<_i20.IUserFacade>()));
  gh.lazySingleton<_i12.IFriendFacade>(
      () => _i31.FriendFacade(
          get<_i5.FirebaseFirestore>(), get<_i26.SocialClient>()),
      registerFor: {_prod});
  gh.singleton<_i32.LoadingBloc>(_i32.LoadingBloc());
  return get;
}

class _$JtdInjectableModule extends _i33.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i34.FireBaseInjectableModule {}
