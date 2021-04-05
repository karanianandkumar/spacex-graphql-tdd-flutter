import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/launchpad.dart';

abstract class ILanuchPadsRepository {
  Future<Either<Failure, List<LaunchPad>>> getLaunchPads(int page);
}
