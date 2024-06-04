import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/fragments.dart';

class Queries {
  static final posts = gql("""
query GetAllPosts {
    getAllPosts {
        id
        contentType
        title
        content
        media
        mediaDescription
        createdAt
        updatedAt
        amountLikes
        amountViews
        amountComments
        amountTrending
        isLiked
        isViewed
        isReported
        isDisliked
        isSaved
        user {
            id
            username
            email
            img
            biograph
            isPrivate
            amountPosts
            amountFollowed
            amountFollower
            isFollowed
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
