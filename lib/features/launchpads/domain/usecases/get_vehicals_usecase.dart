import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/vehical.dart';
import '../repositories/i_vehicals_repository.dart';

@lazySingleton
class GetVehicalsUseCase extends UseCase<List<Vehical>, VehicalParams> {
  GetVehicalsUseCase(this.repository);

  final IVehicalsRepository repository;

  @override
  Future<Either<Failure, List<Vehical>>> call(VehicalParams params) {
    return repository.getVehicals(params.id);
  }
}

class VehicalParams {
  VehicalParams(this.id);

  final String id;
}
