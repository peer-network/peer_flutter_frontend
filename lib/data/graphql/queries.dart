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
        gemsTotal
        gemsToday
        gemsAllTimeHigh
        gemsLikes
        gemsViews
        gemsShares
        likesPerDay{
          Date
          amount
        }
        
    }
}
""");//add postPerformance fields in this query

// query GetUserById {
//     getUserById(id: "0c4762a8-0a39-11ef-b7f2-e89c25791d89") {
//         id
//         username
//         email
//         img
//         biograph
//         isPrivate
//         amountPosts
//         amountFollowed
//         amountFollower
//         isFollowed
//     }
// }

  static final getUserById = gql("""
query GetUserById(\$id: String!) {
    getUserById(id: \$id) {
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
        posts {
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
        }
    }
}
""");

  // first line: which variables (+ data type) do you need to get what you want
  // second line: what do you get back (what exactly do you want from which table)
  static final wallet = gql("""
  query Wallet(\$user_id: Int) {
    wallet(where: {user_id: {_eq: \$user_id}}) {
      ${Fragments.walletFragment}
    }
  }
  """);
}
