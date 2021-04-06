import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();

  @lazySingleton
  GraphQLClient get gqlClient => GraphQLClient(
        cache: InMemoryCache(),
        link: HttpLink(uri: 'https://api.spacex.land/graphql/'),
      );
}
