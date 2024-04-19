import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/fragments.dart';

class Mutations {
  static final createPost = gql("""
mutation CreatePosts(\$content: String, \$userId: Int) {
  insert_posts_one(object: {title: "", content: \$content, userId: \$userId}) {
    
        ${Fragments.postFragment}
   }
}
  """);
}
