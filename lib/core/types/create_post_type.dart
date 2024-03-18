enum CreatePostType {
  image,
  text,
}

// creatrePostType extension
extension CreatePostTypeExtension on CreatePostType {
  String get name {
    switch (this) {
      case CreatePostType.text:
        return "Text";
      case CreatePostType.image:
        return "Foto";
    }
  }
}
