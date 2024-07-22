enum CreatePostType {
  image,
  textFile,
  text,
}

// creatrePostType extension
extension CreatePostTypeExtension on CreatePostType {
  String get name {
    switch (this) {
      case CreatePostType.textFile:
        return "Textdatei";
      case CreatePostType.text:
        return "Text";
      case CreatePostType.image:
        return "Foto";
    }
  }
}
