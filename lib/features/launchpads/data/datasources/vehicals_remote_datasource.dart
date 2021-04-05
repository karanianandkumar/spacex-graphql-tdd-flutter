import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/util/gql_query.dart';
import '../models/launchpad_model.dart';
import '../models/vehical_model.dart';

abstract class IVehicalsRemoteDataSource {
  Future<List<VehicalModel>> getVehicals(String launchpadID);
}

@LazySingleton(as: IVehicalsRemoteDataSource)
class VehicalsRemoteDataSource implements IVehicalsRemoteDataSource {
  VehicalsRemoteDataSource(this._client);

  final GraphQLClient _client;

  @override
  Future<List<VehicalModel>> getVehicals(String launchpadID) async {
    try {
      final result = await _client.query(QueryOptions(
        documentNode: gql(GqlQuery.vehicalsQuery),
        variables: {"id": launchpadID},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data['launchpad']['vehicles_launched']
          .map((e) => LaunchPadModel.fromJson(e))
          .cast<LaunchPadModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }
}
