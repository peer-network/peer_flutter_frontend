class ChatModel {
  final String id;
  final String image; // db enty can be null
  final String name;

  ChatModel({
    required this.id,
    required this.image,
    required this.name,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      id: json['id'].toString(),
      image: json['image'],
      name: json['name'],
    );
  }
}
