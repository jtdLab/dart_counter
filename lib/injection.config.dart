// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_functions/cloud_functions.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i22;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i20;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i21;
import 'application/home/friend_button/friend_button_bloc.dart' as _i24;
import 'application/home/game_invitation_button/game_invitation_button_bloc.dart'
    as _i25;
import 'application/home/profile_button/profile_button_bloc.dart' as _i19;
import 'application/profile/edit_profile/edit_profile_bloc.dart' as _i23;
import 'application/profile/profile_bloc.dart' as _i18;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/friend/i_friend_facade.dart' as _i10;
import 'domain/game_invitation/i_game_invitation_facade.dart' as _i12;
import 'domain/play/i_play_facade.dart' as _i14;
import 'domain/user/i_user_facade.dart' as _i16;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i26;
import 'infrastructure/friend/friend_facade.dart' as _i11;
import 'infrastructure/game_invitation/game_invitation_facade.dart' as _i13;
import 'infrastructure/play/play_facade.dart' as _i15;
import 'infrastructure/user/user_facade.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final fireBaseInjectableModule = _$FireBaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => fireBaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.FirebaseFunctions>(
      () => fireBaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => fireBaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i7.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IFriendFacade>(
      () => _i11.FriendFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IGameInvitationFacade>(
      () => _i13.GameInvitationFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IPlayFacade>(() => _i15.PlayFacade());
  gh.lazySingleton<_i16.IUserFacade>(() => _i17.UserFacade(
      get<_i4.FirebaseFirestore>(),
      get<_i6.FirebaseStorage>(),
      get<_i8.IAuthFacade>(),
      get<_i5.FirebaseFunctions>()));
  gh.factory<_i18.ProfileBloc>(() => _i18.ProfileBloc(get<_i16.IUserFacade>()));
  gh.factory<_i19.ProfileButtonBloc>(
      () => _i19.ProfileButtonBloc(get<_i16.IUserFacade>()));
  gh.factory<_i20.SignInFormBloc>(
      () => _i20.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i21.SignUpFormBloc>(
      () => _i21.SignUpFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i23.EditProfileBloc>(
      () => _i23.EditProfileBloc(get<_i16.IUserFacade>()));
  gh.factory<_i24.FriendButtonBloc>(
      () => _i24.FriendButtonBloc(get<_i10.IFriendFacade>()));
  gh.factory<_i25.GameInvitationButtonBloc>(
      () => _i25.GameInvitationButtonBloc(get<_i12.IGameInvitationFacade>()));
  return get;
}

class _$FireBaseInjectableModule extends _i26.FireBaseInjectableModule {}
