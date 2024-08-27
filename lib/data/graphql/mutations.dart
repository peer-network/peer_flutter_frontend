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

  static final createChatMessage = gql("""
mutation createChatMessage(\$chatId: uuid!, \$content: String!, \$senderId: uuid!){
  insert_peer2_chat_messages_one(object: {chat_id: \$chatId, content: \$content, sender_id: \$senderId}) {
    chat_id
    content
    id
    sender_id
    created_at
  }
}
  """);

  static final loginWithCredentials = gql("""
mutation Login(\$email: String!, \$password: String!) {
  login(email: \$email, password: \$password) {
    accessToken
    refreshToken
  }
}
  """);
}
