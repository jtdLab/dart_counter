// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_functions/cloud_functions.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i24;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i21;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i22;
import 'application/career_stats/career_stats_watcher/career_stats_watcher_bloc.dart'
    as _i16;
import 'application/game_history/game_history_watcher/game_history_watcher_bloc.dart'
    as _i7;
import 'application/profile/edit_profile_bloc.dart' as _i25;
import 'application/user/user_actor/user_actor_bloc.dart' as _i15;
import 'application/user/user_watcher/user_watcher_bloc.dart' as _i23;
import 'domain/auth/i_auth_facade.dart' as _i17;
import 'domain/careerStats/i_career_stats_repository.dart' as _i9;
import 'domain/friends/i_friends_repository.dart' as _i11;
import 'domain/user/i_profile_image_repository.dart' as _i19;
import 'domain/user/i_user_repository.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i18;
import 'infrastructure/auth/profile_image_repository.dart' as _i20;
import 'infrastructure/auth/user_repository.dart' as _i14;
import 'infrastructure/career_stats/career_stats_repository.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i26;
import 'infrastructure/friends/friends_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i7.GameHistoryWatcherBloc>(() => _i7.GameHistoryWatcherBloc());
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => fireBaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.ICareerStatsRepository>(
      () => _i10.CareerStatsRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IFriendsRepository>(() => _i12.FriendsRepository());
  gh.lazySingleton<_i13.IUserRepository>(
      () => _i14.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i15.UserActorBloc>(() => _i15.UserActorBloc());
  gh.factory<_i16.CareerStatsWatcherBloc>(
      () => _i16.CareerStatsWatcherBloc(get<_i9.ICareerStatsRepository>()));
  gh.lazySingleton<_i17.IAuthFacade>(() => _i18.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i8.GoogleSignIn>(),
      get<_i13.IUserRepository>()));
  gh.lazySingleton<_i19.IProfileImageRepository>(() =>
      _i20.ProfileImageRepository(
          get<_i17.IAuthFacade>(), get<_i6.FirebaseStorage>()));
  gh.factory<_i21.SignInFormBloc>(
      () => _i21.SignInFormBloc(get<_i17.IAuthFacade>()));
  gh.factory<_i22.SignUpFormBloc>(
      () => _i22.SignUpFormBloc(get<_i17.IAuthFacade>()));
  gh.factory<_i23.UserWatcherBloc>(() => _i23.UserWatcherBloc(
      get<_i13.IUserRepository>(), get<_i17.IAuthFacade>()));
  gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(get<_i17.IAuthFacade>()));
  gh.factory<_i25.EditProfileBloc>(() => _i25.EditProfileBloc(
      get<_i13.IUserRepository>(), get<_i19.IProfileImageRepository>()));
  return get;
}

class _$FireBaseInjectableModule extends _i26.FireBaseInjectableModule {}
