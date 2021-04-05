import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/util/gql_query.dart';
import '../models/launchpad_model.dart';

abstract class ILaunchPadsRemoteDataSource {
  Future<List<LaunchPadModel>> getLaunchPads(int page);
}

@LazySingleton(as: ILaunchPadsRemoteDataSource)
class LaunchPadsRemoteDataSource implements ILaunchPadsRemoteDataSource {
  LaunchPadsRemoteDataSource(this._client);

  final GraphQLClient _client;

  @override
  Future<List<LaunchPadModel>> getLaunchPads(int page) async {
    try {
      final result = await _client.query(QueryOptions(
        documentNode: gql(GqlQuery.launchpadsQuery),
        variables: {"offset": page},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data['launchpads']
          .map((e) => LaunchPadModel.fromJson(e))
          .cast<LaunchPadModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }
}
