import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/vehical.dart';
import '../../domain/repositories/i_vehicals_repository.dart';
import '../datasources/vehicals_remote_datasource.dart';
import '../models/vehical_model.dart';

@LazySingleton(as: IVehicalsRepository)
class VehicalsRepository implements IVehicalsRepository {
  VehicalsRepository(this._remoteDataSource);

  final IVehicalsRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Vehical>>> getVehicals(String launchpadID) async {
    try {
      final models = await _remoteDataSource.getVehicals(launchpadID);
      final entities = models.map<Vehical>((e) => e.toEntity()).toList();
      return Right(entities);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
