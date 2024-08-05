import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/post_comment_model.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/provider/post_provider.dart';
import 'package:peer_app/presentation/pages/profile_pages/components/detailview_all_post_types_page/components/comments/comments_logic/first_layer_comment.dart';
import 'package:peer_app/presentation/whitelabel/components/wrapper/generic_future_builder.dart';
import 'package:provider/provider.dart';

class DetailedPostCommentsWrapperId extends StatelessWidget {
  final GraphQLClient client;
  final String postId;
  final String? name;

  const DetailedPostCommentsWrapperId({
    super.key,
    required this.client,
    required this.postId,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GenericFutureBuilder<List<PostCommentModel>?>(
      futureFunction:
          fetchComments(postId, context), // Das muss dynamisch werden
      dataBuilder: (context, comments) {
        return FirstLayerComment(comments: comments!);
      },
      name: name ?? "comments",
    );
  }
}

Future<List<PostCommentModel>> fetchComments(
    /*GraphQLClient client,*/ String postId, BuildContext context) async {
  PostProvider postProvider = Provider.of<PostProvider>(context, listen: false);

  PostModel? post = postProvider.getPostById(postId);

  return (post != null && post.comments != null) ? post.comments! : [];

  /*
  if (postId != "post123") {
    try {
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

      commentsJson = result.data!['getPost']['comments'];
    } catch (e) {
      CustomException(e.toString(), StackTrace.current).handleError();
      return [];
    }
  } else {
    commentsJson = postWithComments['comments'];
  }

  return commentsJson.map((json) => PostCommentModel.fromJson(json)).toList();
  */
}
