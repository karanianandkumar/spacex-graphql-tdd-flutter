import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/launchpad.dart';
import '../../domain/repositories/i_launchpads_repository.dart';
import '../datasources/launchpads_local_datasource.dart';
import '../datasources/launchpads_remote_datasource.dart';
import '../models/launchpad_model.dart';

@LazySingleton(as: ILanuchPadsRepository)
class LaunchPadsRepository implements ILanuchPadsRepository {
  LaunchPadsRepository(
      this._networkInfo, this._remoteDataSource, this._localDataSource);

  final ILaunchPadsLocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;
  final ILaunchPadsRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<LaunchPad>>> getLaunchPads(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final models = await _remoteDataSource.getLaunchPads(page);
        final entities = models.map<LaunchPad>((e) => e.toEntity()).toList();
        await _localDataSource.cacheLaunchPads(models, page);
        return Right(entities);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final models = _localDataSource.getLastCharacters(page);
        final entities = models.map<LaunchPad>((e) => e.toEntity()).toList();
        return Right(entities);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
