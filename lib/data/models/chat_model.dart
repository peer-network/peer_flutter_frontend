class ChatModel {
  final String id;
  final String image;

  ChatModel({
    required this.id,
    required this.image,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      id: json['id'].toString(),
      image: json['image'],
    );
  }
}
