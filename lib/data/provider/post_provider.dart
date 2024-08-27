import 'dart:convert';
import 'package:http/http.dart' as http;

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

      try {
        _posts = await parsePosts(responseFeed)!;
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

  /// Parses the json response from the server and returns a list of PostModel. May return null due to the post being video but only text and image are possible, this will be resolved soon.
  Future<List<PostModel>>? parsePosts(Map<String, dynamic> jsonResponse) async {
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

      if (postJson['runtimeType'] == 'image') {
        // image post parsing

        postJson['mediaDescription'] = postJson['mediadescription'];
        postJson.remove('mediadescription');

        // Decode media field from JSON string to List
        List<dynamic> mediaList = json.decode(postJson['media']);
        postJson['media'] = mediaList
            .map((mediaPath) =>
                'http://10.10.121.78:8888/runtime-data$mediaPath')
            .toList();

        return PostModel.fromJson(postJson);
      } else {
        // text post parsing
        postJson.remove('mediadescription');

        Uri textPostUri = Uri.parse(
            'http://10.10.121.78:8888/runtime-data${json.decode(postJson['media'])[0]}');

        try {
          final response = await http.get(textPostUri);
          if (response.statusCode == 200) {
            print(response.body);
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

    // Wait for all futures to complete
    return await Future.wait(futures);
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
