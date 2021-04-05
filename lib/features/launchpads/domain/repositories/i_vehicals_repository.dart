import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/vehical.dart';

abstract class IVehicalsRepository {
  Future<Either<Failure, List<Vehical>>> getVehicals(String id);
}
