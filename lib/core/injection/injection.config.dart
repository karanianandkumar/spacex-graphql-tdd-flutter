// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i5;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/launchpads/data/datasources/launchpads_local_datasource.dart'
    as _i6;
import '../../features/launchpads/data/datasources/launchpads_remote_datasource.dart'
    as _i7;
import '../../features/launchpads/data/datasources/vehicals_remote_datasource.dart'
    as _i8;
import '../../features/launchpads/data/repositories/launchpads_repository.dart'
    as _i14;
import '../../features/launchpads/data/repositories/vehicals_repository.dart'
    as _i10;
import '../../features/launchpads/domain/repositories/i_launchpads_repository.dart'
    as _i13;
import '../../features/launchpads/domain/repositories/i_vehicals_repository.dart'
    as _i9;
import '../../features/launchpads/domain/usecases/get_launchpads_usecase.dart'
    as _i16;
import '../../features/launchpads/domain/usecases/get_vehicals_usecase.dart'
    as _i12;
import '../../features/launchpads/presentation/bloc/launchpads/launchpads_bloc.dart'
    as _i17;
import '../../features/launchpads/presentation/bloc/vehicals/vehicals_bloc.dart'
    as _i15;
import '../network/network_info.dart' as _i11;
import 'register_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.lazySingletonAsync<_i3.Box<dynamic>>(() => registerModule.openBox,
      preResolve: true);
  gh.lazySingleton<_i4.DataConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i5.GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<_i6.ILaunchPadsLocalDataSource>(
      () => _i6.LaunchPadsLocalDataSource(get<_i3.Box<dynamic>>()));
  gh.lazySingleton<_i7.ILaunchPadsRemoteDataSource>(
      () => _i7.LaunchPadsRemoteDataSource(get<_i5.GraphQLClient>()));
  gh.lazySingleton<_i8.IVehicalsRemoteDataSource>(
      () => _i8.VehicalsRemoteDataSource(get<_i5.GraphQLClient>()));
  gh.lazySingleton<_i9.IVehicalsRepository>(
      () => _i10.VehicalsRepository(get<_i8.IVehicalsRemoteDataSource>()));
  gh.lazySingleton<_i11.NetworkInfo>(
      () => _i11.NetworkInfo(get<_i4.DataConnectionChecker>()));
  gh.lazySingleton<_i12.GetVehicalsUseCase>(
      () => _i12.GetVehicalsUseCase(get<_i9.IVehicalsRepository>()));
  gh.lazySingleton<_i13.ILanuchPadsRepository>(() => _i14.LaunchPadsRepository(
      get<_i11.NetworkInfo>(),
      get<_i7.ILaunchPadsRemoteDataSource>(),
      get<_i6.ILaunchPadsLocalDataSource>()));
  gh.factory<_i15.VehicalsBloc>(
      () => _i15.VehicalsBloc(get<_i12.GetVehicalsUseCase>()));
  gh.lazySingleton<_i16.GetLaunchPadsUseCase>(
      () => _i16.GetLaunchPadsUseCase(get<_i13.ILanuchPadsRepository>()));
  gh.factory<_i17.LaunchpadsBloc>(
      () => _i17.LaunchpadsBloc(get<_i16.GetLaunchPadsUseCase>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
