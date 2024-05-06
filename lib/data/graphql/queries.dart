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
query MyQuery(\$userId: uuid!) {
  peer2_chats(where: {chat_participants: {user_id: {_eq: \$userId }}}) {
    id
    image
    name
    amount_unseen_messages
    chat_messages {
      chat_id
      content
      id
      sender_id
      created_at
    }
    chat_participants {
      user {
        id
        name
      }
    }

  }
}
""");

  // erste Zeile: welche Variablen (+ datentyp) brauchst du um zu bekommen was du willst
  // zweite Zeile: was bekommst du zurück (was willst du genau haben aus welchem table)
  static final wallet = gql("""
query Wallet(\$user_id: Int) {
  wallet(where: {user_id: {_eq: \$user_id}}) {
    ${Fragments.walletFragment}
  }
}
""");
}
