mixin GqlQuery {
  static int LAUNCHPADS_LIMIT = 20;
  static String launchpadsQuery = '''
  query (\$offset: Int!){
    launchpads(limit: 20, offset: \$offset) {
      attempted_launches
      details
      id
      location {
        latitude
        longitude
        name
        region
      }
      name
      status
      successful_launches
    }
  }
  ''';

  static String vehicalsQuery = '''
  query (\$id: String!){
    launchpad(id: \$id) {
      vehicles_launched {
      active
      boosters
      cost_per_launch
      country
      description
      stages
    }
    }
  }
  ''';
}
