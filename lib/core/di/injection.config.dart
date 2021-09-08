// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/cubit/auth_cubit.dart' as _i6;
import '../../features/auth/repo/repo_auth.dart' as _i5;
import '../../features/calculator/cubit/calculator_cubit.dart' as _i3;
import 'external_library_dependencies.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalLibraryDependencies = _$ExternalLibraryDependencies();
  gh.factory<_i3.CalculatorCubit>(() => _i3.CalculatorCubit());
  gh.factory<_i4.FirebaseAuth>(() => externalLibraryDependencies.firAuth);
  gh.lazySingleton<_i5.IAuthRepo>(() => _i5.AuthRepo(get<_i4.FirebaseAuth>()));
  gh.factory<_i6.AuthCubit>(() => _i6.AuthCubit(get<_i5.IAuthRepo>()));
  return get;
}

class _$ExternalLibraryDependencies extends _i7.ExternalLibraryDependencies {}
