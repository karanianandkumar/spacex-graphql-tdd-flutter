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
  query (\$id: ID!){
    launchpad(id: \$id) {
      vehicles_launched {
      name
      active
      boosters
      id
      success_rate_pct
      cost_per_launch
      country
      description
      stages
    }
    }
  }
  ''';
}
