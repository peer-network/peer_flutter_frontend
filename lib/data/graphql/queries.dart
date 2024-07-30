import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/fragments.dart';

class Queries {
  //! posts are not fetched in user in getAllPosts
  //? should comments be pulled when fetching posts? comments {} are excluded for now
  //? verficationToken - is this necessary in the user model whne pulling posts?

  static final posts = gql("""
query GetAllPosts {
    getAllPosts {
        id
        contentType
        title
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
            imgUrl
            biograph
            verified
            verificationToken
            amountPosts
            amountFollowed
            amountFollower
            isFollowing
        }
        gemsTotal
        gemsToday
        gemsAllTimeHigh
        gemsLikes
        gemsViews
        gemsShares
        likesPerDay{
          date
          amount
        }
        
    }
}
""");

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

  //? verificationToken - is this necessary in the user model?
  //? should comments be pulled when fetching posts when pulling user? comments {} in posts {}, comments {} are excluded for now

  static final getUserById = gql("""
query GetUserById(\$id: String!) {
    getUserById(id: \$id) {
        id
        username
        email
        imgUrl
        verified
        biograph
        isPrivate
        amountPosts
        amountFollowed
        amountFollower
        isFollowing
        createdAt
        updatedAt
        verificationToken
        posts {
            id
            contentType
            title
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

// query GetPost(\$postId: String!) { ----- changed to "ID!"
const String getPostById = """
query GetPost(\$postId: ID!) {
  getPost(id: \$postId) {
        comments {
            id
            content
            createdAt
            user {
                id
                username
                img
            }
            postId
            userId
        }
    }
}
""";
