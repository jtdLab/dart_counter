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
import 'package:social_client/social_client.dart' as _i20;

import 'application/auth/auth_bloc.dart' as _i21;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i18;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i19;
import 'application/home/home_bloc.dart' as _i25;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i22;
import 'application/profile/profile_bloc.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/friend/i_friend_facade.dart' as _i23;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i11;
import 'domain/play/i_play_facade.dart' as _i13;
import 'domain/user/i_user_facade.dart' as _i15;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i27;
import 'infrastructure/core/jtd_injectable_module.dart' as _i26;
import 'infrastructure/friend/friend_facade.dart' as _i24;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i12;
import 'infrastructure/play/play_facade.dart' as _i14;
import 'infrastructure/user/user_facade.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i8.GoogleSignIn>(),
      get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IGameInvitationFacade>(
      () => _i12.GameInvitationFacade(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IPlayFacade>(() => _i14.PlayFacade());
  gh.lazySingleton<_i15.IUserFacade>(() => _i16.UserFacade(
      get<_i5.FirebaseFirestore>(),
      get<_i7.FirebaseStorage>(),
      get<_i9.IAuthFacade>(),
      get<_i6.FirebaseFunctions>()));
  gh.factory<_i17.ProfileBloc>(() => _i17.ProfileBloc(get<_i15.IUserFacade>()));
  gh.factory<_i18.SignInFormBloc>(
      () => _i18.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i19.SignUpFormBloc>(
      () => _i19.SignUpFormBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i20.SocialClient>(() => jtdInjectableModule.socialClient);
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i22.EditProfileBloc>(
      () => _i22.EditProfileBloc(get<_i15.IUserFacade>()));
  gh.lazySingleton<_i23.IFriendFacade>(() => _i24.FriendFacade(
      get<_i5.FirebaseFirestore>(), get<_i20.SocialClient>()));
  gh.factory<_i25.HomeBloc>(() => _i25.HomeBloc(get<_i23.IFriendFacade>(),
      get<_i11.IGameInvitationFacade>(), get<_i15.IUserFacade>()));
  return get;
}

class _$JtdInjectableModule extends _i26.JtdInjectableModule {}

class _$FireBaseInjectableModule extends _i27.FireBaseInjectableModule {}
