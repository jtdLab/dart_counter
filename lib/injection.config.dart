// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i10;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/auth/i_user_repository.dart' as _i5;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/auth/user_repository.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final fireBaseInjectableModule = _$FireBaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => fireBaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i5.IUserRepository>(
      () => _i6.UserRepository(get<_i7.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i4.GoogleSignIn>(),
      get<_i5.IUserRepository>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i11.SignUpFormBloc>(
      () => _i11.SignUpFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i8.IAuthFacade>()));
  return get;
}

class _$FireBaseInjectableModule extends _i13.FireBaseInjectableModule {}
