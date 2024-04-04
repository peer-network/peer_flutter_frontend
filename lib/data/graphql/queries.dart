import 'package:graphql_flutter/graphql_flutter.dart';

class Queries {
  static final posts = gql("""
{
  posts {
    active
    catId
    categorie
    content
    created_at
    eigenschaft
    gelesen
    id
    image
    partner
    rahmen
    sprache
    title
    updated_at
    userId
    user {
      created_at
      email
      id
      password
      updated_at
      username
      verification_token
      verified
    }
  }
}
""");
}
