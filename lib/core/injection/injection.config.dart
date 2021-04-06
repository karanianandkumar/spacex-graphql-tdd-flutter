// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/launchpads/data/datasources/launchpads_remote_datasource.dart'
    as _i5;
import '../../features/launchpads/data/datasources/vehicals_remote_datasource.dart'
    as _i6;
import '../../features/launchpads/data/repositories/launchpads_repository.dart'
    as _i12;
import '../../features/launchpads/data/repositories/vehicals_repository.dart'
    as _i8;
import '../../features/launchpads/domain/repositories/i_launchpads_repository.dart'
    as _i11;
import '../../features/launchpads/domain/repositories/i_vehicals_repository.dart'
    as _i7;
import '../../features/launchpads/domain/usecases/get_launchpads_usecase.dart'
    as _i14;
import '../../features/launchpads/domain/usecases/get_vehicals_usecase.dart'
    as _i10;
import '../../features/launchpads/presentation/bloc/launchpads/launchpads_bloc.dart'
    as _i15;
import '../../features/launchpads/presentation/bloc/vehicals/vehicals_bloc.dart'
    as _i13;
import '../network/network_info.dart' as _i9;
import 'register_module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.DataConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i4.GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<_i5.ILaunchPadsRemoteDataSource>(
      () => _i5.LaunchPadsRemoteDataSource(get<_i4.GraphQLClient>()));
  gh.lazySingleton<_i6.IVehicalsRemoteDataSource>(
      () => _i6.VehicalsRemoteDataSource(get<_i4.GraphQLClient>()));
  gh.lazySingleton<_i7.IVehicalsRepository>(
      () => _i8.VehicalsRepository(get<_i6.IVehicalsRemoteDataSource>()));
  gh.lazySingleton<_i9.NetworkInfo>(
      () => _i9.NetworkInfo(get<_i3.DataConnectionChecker>()));
  gh.lazySingleton<_i10.GetVehicalsUseCase>(
      () => _i10.GetVehicalsUseCase(get<_i7.IVehicalsRepository>()));
  gh.lazySingleton<_i11.ILanuchPadsRepository>(
      () => _i12.LaunchPadsRepository(get<_i5.ILaunchPadsRemoteDataSource>()));
  gh.factory<_i13.VehicalsBloc>(
      () => _i13.VehicalsBloc(get<_i10.GetVehicalsUseCase>()));
  gh.lazySingleton<_i14.GetLaunchPadsUseCase>(
      () => _i14.GetLaunchPadsUseCase(get<_i11.ILanuchPadsRepository>()));
  gh.factory<_i15.LaunchpadsBloc>(
      () => _i15.LaunchpadsBloc(get<_i14.GetLaunchPadsUseCase>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
