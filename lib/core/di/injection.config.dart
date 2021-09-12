// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:location/location.dart' as _i9;

import '../../features/auth/cubit/auth_cubit.dart' as _i11;
import '../../features/auth/repo/repo_auth.dart' as _i7;
import '../../features/calculator/cubit/calculator_cubit.dart' as _i3;
import '../../features/map/bloc/map_bloc.dart' as _i13;
import '../../features/map/repo/repo_maps.dart' as _i12;
import '../../features/news/cubit/news_cubit.dart' as _i10;
import '../../features/news/repo/repo_news.dart' as _i8;
import '../api/dio_api.dart' as _i5;
import 'external_library_dependencies.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalLibraryDependencies = _$ExternalLibraryDependencies();
  gh.factory<_i3.CalculatorCubit>(() => _i3.CalculatorCubit());
  gh.lazySingleton<_i4.Dio>(() => externalLibraryDependencies.dioInstance);
  gh.lazySingleton<_i5.DioApi>(() => _i5.DioApi(get<_i4.Dio>()));
  gh.factory<_i6.FirebaseAuth>(() => externalLibraryDependencies.firAuth);
  gh.lazySingleton<_i7.IAuthRepo>(() => _i7.AuthRepo(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i8.INewsRepo>(() => _i8.NewsRepo(get<_i5.DioApi>()));
  gh.lazySingleton<_i9.Location>(() => externalLibraryDependencies.location);
  gh.factory<_i10.NewsCubit>(() => _i10.NewsCubit(get<_i8.INewsRepo>()));
  gh.factory<_i11.AuthCubit>(() => _i11.AuthCubit(get<_i7.IAuthRepo>()));
  gh.lazySingleton<_i12.IMapsRepo>(
      () => _i12.MapsRepo(get<_i5.DioApi>(), get<_i9.Location>()));
  gh.factory<_i13.MapBloc>(() => _i13.MapBloc(get<_i12.IMapsRepo>()));
  return get;
}

class _$ExternalLibraryDependencies extends _i14.ExternalLibraryDependencies {}
