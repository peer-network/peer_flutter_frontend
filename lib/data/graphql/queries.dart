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

  static final chat = gql("""
query MyQuery {
  peer2_users(where: {id: {_eq: "c05a6e6e-5365-40ca-b2d5-29af9f1cb1c6"}}) {
    chat_participants {
      chat {
        id
        image
        name
        chat_messages {
          content
          id
        }
        chat_participants {
          user {
            id
            name
          }
        }
      }
    }
  }
}
""");
}
