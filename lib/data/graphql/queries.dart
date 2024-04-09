import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/fragments.dart';

class Queries {
  static final posts = gql("""
query Posts(\$offset: Int, \$limit: Int) {
  posts(offset: \$offset, limit: \$limit) {
    ${Fragments.postFragment}
  }
}
""");
}
