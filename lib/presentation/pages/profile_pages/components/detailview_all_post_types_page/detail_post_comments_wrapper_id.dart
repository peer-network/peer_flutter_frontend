import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/feed_comment_model.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_logic/first_layer_comment.dart';
import 'package:peer_app/presentation/whitelabel/components/wrapper/generic_future_builder.dart';

class FirstLayerCommentWrapper extends StatelessWidget {
  final GraphQLClient client;
  final String postId;
  final String? name;

  const FirstLayerCommentWrapper({
    super.key,
    required this.client,
    required this.postId,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GenericFutureBuilder<List<CommentModel>>(
      futureFunction: fetchComments(client, "1"), // Das muss dynamisch werden
      dataBuilder: (context, comments) {
        return FirstLayerComment(comments: comments);
      },
      name: name ?? "comments",
    );
  }
}

Future<List<CommentModel>> fetchComments(
    GraphQLClient client, String postId) async {
  final QueryOptions options = QueryOptions(
    document: gql(getPostById),
    variables: {'postId': postId},
  );

  final QueryResult result = await client.query(options);

  if (result.hasException) {
    print('GraphQL Exception: ${result.exception.toString()}');
    throw Exception(result.exception.toString());
  }

  print('GraphQL Response Data: ${result.data}');

  final List<dynamic> commentsJson = result.data!['getPost']['comments'];
  return commentsJson.map((json) => CommentModel.fromJson(json)).toList();
}
