import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/launchpad.dart';
import '../repositories/i_launchpads_repository.dart';

@lazySingleton
class GetLaunchPadsUseCase extends UseCase<List<LaunchPad>, LaunchPadParams> {
  GetLaunchPadsUseCase(this.repository);

  final ILanuchPadsRepository repository;

  @override
  Future<Either<Failure, List<LaunchPad>>> call(LaunchPadParams params) {
    return repository.getLaunchPads(params.page);
  }
}

class LaunchPadParams {
  LaunchPadParams(this.page);

  final int page;
}
