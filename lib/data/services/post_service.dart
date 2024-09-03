import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/data/graphql/mutations.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/services/gql_client_service.dart';

class PostService {
  final gqlClient = GraphQLClientSingleton();

  Future<List<PostModel>> fetchPosts() async {
    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

      if (queryResult.hasException) {
        throw CustomException(
            queryResult.exception.toString(), StackTrace.current);
      }

      if (queryResult.data == null) {
        throw CustomException("No data found", StackTrace.current);
      }

      final responseFeed = queryResult.data!;
      return await parsePosts(responseFeed);
    } catch (e) {
      throw CustomException(e.toString(), StackTrace.current);
    }
  }

  Future<void> likePost(String postId) async {
    try {
      final MutationOptions options = MutationOptions(
        document: Mutations.likePost,
        variables: {
          'postid': postId,
        },
      );

      final QueryResult result = await gqlClient.mutate(options);

      if (result.hasException) {
        throw CustomException(result.exception.toString(), StackTrace.current);
      }
    } catch (e) {
      throw CustomException(e.toString(), StackTrace.current);
    }
  }

  Future<void> dislikePost(String postId) async {
    try {
      final MutationOptions options = MutationOptions(
        document: Mutations.dislikePost,
        variables: {
          'postid': postId,
        },
      );

      final QueryResult result = await gqlClient.mutate(options);

      if (result.hasException) {
        throw CustomException(result.exception.toString(), StackTrace.current);
      }
    } catch (e) {
      throw CustomException(e.toString(), StackTrace.current);
    }
  }

  Future<void> viewPost(String postId) async {
    final MutationOptions options = MutationOptions(
      document: Mutations.viewPost,
      variables: {
        'postid': postId,
      },
    );

    final QueryResult result = await gqlClient.mutate(options);

    if (result.hasException) {
      throw CustomException(result.exception.toString(), StackTrace.current);
    }
  }

  Future<List<PostModel>> parsePosts(Map<String, dynamic> jsonResponse) async {
    final List<dynamic> postsJson = jsonResponse['getallposts'];

    final List<Future<PostModel>> futures =
        postsJson.map<Future<PostModel>>((postJson) async {
      postJson['runtimeType'] = postJson['contenttype'];
      postJson['createdAt'] = postJson['createdat'];
      postJson['isLiked'] = postJson['isliked'];
      postJson['isViewed'] = postJson['isviewed'];
      postJson['isReported'] = postJson['isreported'];
      postJson['isSaved'] = postJson['issaved'];
      postJson['amountComments'] = postJson['amountcomments'];
      postJson['amountLikes'] = postJson['amountlikes'];
      postJson['amountViews'] = postJson['amountviews'];
      postJson['isDisliked'] = postJson['isdisliked'];

      postJson.remove('contenttype');
      postJson.remove('createdat');
      postJson.remove('isliked');
      postJson.remove('isviewed');
      postJson.remove('isreported');
      postJson.remove('issaved');
      postJson.remove('amountcomments');
      postJson.remove('amountlikes');
      postJson.remove('amountviews');
      postJson.remove('isdisliked');
      postJson.remove('__typename');

      String imgUrl = postJson['user']['img'];
      postJson['user']['img'] = 'http://10.10.121.78:8888/runtime-data$imgUrl';

      if (postJson['runtimeType'] == 'image') {
        postJson['mediaDescription'] = postJson['mediadescription'];
        postJson.remove('mediadescription');

        List<dynamic> mediaList = json.decode(postJson['media']).split(',');
        postJson['media'] = mediaList
            .map((mediaPath) =>
                'http://10.10.121.78:8888/runtime-data$mediaPath')
            .toList();

        return PostModel.fromJson(postJson);
      } else {
        postJson.remove('mediadescription');

        Uri textPostUri = Uri.parse(
            'http://10.10.121.78:8888/runtime-data${json.decode(postJson['media'])}');

        try {
          final response = await http.get(textPostUri);
          if (response.statusCode == 200) {
            postJson['media'] = response.body;
          } else {
            throw Exception('Failed to load text file');
          }
        } catch (e) {
          print('Error loading text file: $e');
        }

        return PostModel.fromJson(postJson);
      }
    }).toList();

    return await Future.wait(futures);
  }

  Future<void> createPost({
    required int userId,
    required CreatePostType postType,
    required String title,
    List<XFile>? imageFiles,
    XFile? textFile,
    String? text,
    String? mediaDescription,
  }) async {}

  Future<PostModel?> fetchPostByIdFromAPI(String id) async {
    final queryOption = QueryOptions(
      document: Queries.getPostById,
      variables: {
        'postId': id,
      },
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

      if (queryResult.hasException) {
        throw CustomException(
            queryResult.exception.toString(), StackTrace.current);
      }

      if (queryResult.data == null) {
        throw CustomException("No data found", StackTrace.current);
      }

      final responseFeed = queryResult.data!;
      return await parsePosts(responseFeed).then((posts) => posts.first);
    } catch (e) {
      throw CustomException(e.toString(), StackTrace.current);
    }
  }
}
