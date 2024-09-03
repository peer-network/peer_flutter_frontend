import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/fragments.dart';

class Queries {
  static final posts = gql("""
query Getallposts {
    getallposts {
        id
        contenttype
        title
        media
        mediadescription
        createdat
        amountlikes
        amountviews
        amountcomments
        isliked
        isviewed
        isreported
        isdisliked
        issaved
        user {
            id
            username
            img
            isfollowed
        }
    }
}
""");
  static final getPostById = gql("""
query Post(\$id: ID!) {
    getallposts(where: { id: \$id }) {
      id
      contenttype
      title
      media
      mediadescription
      createdat
      amountlikes
      amountviews
      amountcomments
      isliked
      isviewed
      isreported
      isdisliked
      issaved
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

  /// query to handshake with server and get user id
  static final hello = gql("""
query Hello {
    hello {
        currentuserid
    }
}
""");

  static final getUsers = gql("""
  query Users {
    users {
      id
      username
      email
      biography
      img
      isprivate
      isfollowed
      isfollowing
      createdat
      updatedat
    }
  }
  """);

  static final getProfile = gql("""
query Profile(\$userid: String!) {
    profile(userid: \$userid) {
        id
        username
        img
        biography
        isprivate
        amountfollower
        amountfollowed
        amountposts
        isfollowed
        isfollowing
    }
}
""");
}
