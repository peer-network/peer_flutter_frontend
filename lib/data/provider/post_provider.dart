import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/core/types/create_post_type.dart';
import 'package:peer_app/data/models/post_model.dart';
import 'package:peer_app/data/services/post_service.dart';

class PostProvider with ChangeNotifier {
  final PostService _postService = PostService();
  List<PostModel> _posts = [];
  bool isLoading = false;
  String? error;

  List<PostModel> get post => List.unmodifiable(_posts);

  PostProvider() {
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    isLoading = true;
    notifyListeners();

    try {
      _posts = await _postService.fetchPosts();
      error = null;
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  PostModel? getPostByIdFromCache(String id) {
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
    try {
      await _postService.createPost(
        userId: userId,
        postType: postType,
        title: title,
        imageFiles: imageFiles,
        textFile: textFile,
        text: text,
        mediaDescription: mediaDescription,
      );
      await fetchPosts(); // Refresh the post list after creating a new post
    } catch (e) {
      error = e.toString();
      notifyListeners();
    }
  }
}
