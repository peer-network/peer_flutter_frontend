import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/data/graphql/queries.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/new_dummy_response/post_with_performance_dummy_data.dart';
import 'package:peer_app/data/services/gql_client_service.dart';
import 'package:peer_app/data/services/user_service.dart';

class PostProvider with ChangeNotifier {
  final gqlClient = GraphQLClientSingleton();
  List<PostModel> _posts = [];
  bool isLoading = false;
  String? error;

  List<PostModel> get newsFeed => List.unmodifiable(_posts);

  PostProvider() {
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    isLoading = true;
    notifyListeners();

    final queryOption = QueryOptions(
      document: Queries.posts,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      QueryResult<Object?> queryResult = await gqlClient.query(queryOption);

      if (queryResult.hasException) {
        error = queryResult.exception.toString();
        CustomException(queryResult.exception.toString(), StackTrace.current)
            .handleError();
      }

      if (queryResult.data == null) {
        error = "No data found";
        CustomException(queryResult.toString(), StackTrace.current)
            .handleError();
      }

      final responseFeed = queryResult.data!;

      print(responseFeed.toString());
      try {
        final responseFeedJson = responseFeed["getallposts"] as List<dynamic>;

        _posts = responseFeedJson
            .map((post) {
              // Handle nested user object first
              final user = Map<String, dynamic>.from(
                  post['user'] as Map<String, dynamic>)
                ..['imgUrl'] = post['user']['img']
                ..['isFollowing'] = post['user']['isfollowed']
                ..remove('img')
                ..remove('isfollowed');

              // Clone the main post map and rename fields
              final modifiedPost = Map<String, dynamic>.from(post)
                ..['runtimeType'] = post['contenttype']
                ..['createdAt'] = post['createdat']
                ..['isLiked'] = post['isliked']
                ..['isViewed'] = post['isviewed']
                ..['isReported'] = post['isreported']
                ..['isSaved'] = post['issaved']
                ..['amountComments'] = post['amountcomments']
                ..['amountLikes'] = post['amountlikes']
                ..['amountViews'] = post['amountviews']
                ..['isDisliked'] = post['isdisliked']
                ..remove('contenttype')
                ..remove('createdat')
                ..remove('isliked')
                ..remove('isviewed')
                ..remove('isreported')
                ..remove('issaved')
                ..remove('amountcomments')
                ..remove('amountlikes')
                ..remove('amountviews')
                ..remove('isdisliked');

              if (post['contenttype'] == "text") {
                modifiedPost['media'] = post['media'];
              } else {
                modifiedPost['mediaDescription'] = post['mediadescription'];

                modifiedPost['media'] = post['media']
                    .toString()
                    .replaceAll('[', '')
                    .replaceAll(']', '')
                    .replaceAll('\\', '')
                    .replaceAll('"', '')
                    .split(",");

                List<String> urls = modifiedPost["media"];

                for (int i = 0; i < urls.length; i++) {
                  modifiedPost['media'][i] =
                      "http://10.10.121.78:8888/runtime-data${urls[i]}";
                }
              }

              // Convert the modified json to PostModel
              return PostModel.fromJson(modifiedPost);
            })
            .where((post) => post.runtimeType != VideoPost)
            .toList();
      } catch (e, s) {
        error = e.toString();
        CustomException(e.toString(), s).handleError();
      }
    } catch (e) {
      error = e.toString();
      CustomException(e.toString(), StackTrace.current).handleError();
    }
    isLoading = false;

    notifyListeners();
  }

  List<String> _processTextMedia(dynamic media) {
    // Use json.decode to decode the media string into a List<String>
    return List<String>.from(json.decode(media));
  }

  List<String> _processImageMedia(dynamic media) {
    // Decode the JSON-encoded media string
    List<String> urls = List<String>.from(json.decode(media));

    // Prefix each URL with the base URL
    return urls
        .map((url) => "http://10.10.121.78:8888/runtime-data$url")
        .toList();
  }

  PostModel? getPostById(String id) {
    try {
      return _posts.firstWhere((post) => post.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<void> createPost({
    required int userId,
    required CreatePostType postType,
    required String title,
    List<XFile>? imageFiles,
    XFile? textFile,
    String? text,
    String? mediaDescription,
  }) async {
    await Future.delayed(const Duration(seconds: 3));
    //TODO: get userId from userService in order to obtain bearer token
    Map<String, dynamic> post = {
      "header": {"user_token": userId},
      "body": {
        "content_type": "",
        "title": "",
        "media": [],
        "media_description": "",
      }
    };
    switch (postType) {
      case CreatePostType.image:
        post["body"]["content_type"] = "1";
        post["body"]["title"] = title;
        post["body"]["media_description"] = mediaDescription;

        for (var imageFile in imageFiles!) {
          final base64Image = base64Encode(await imageFile.readAsBytes());
          post["body"]["media"].add(base64Image);
        }

        break;
      /*case CreatePostType.textFile:
        post["body"]["content_type"] = "0";
        post["body"]["title"] = title;

        final textFromFile = await textFile!.readAsString();
        final base64File = base64Encode(utf8.encode(textFromFile));

        post["body"]["media"] = [base64File];
        break;*/
      case CreatePostType.text:
        post["body"]["content_type"] = "0";
        post["body"]["title"] = title;

        final base64Text = base64Encode(utf8.encode(text!));

        post["body"]["media"] = [base64Text];
        break;
      default:
        break;
    }
  }
}
