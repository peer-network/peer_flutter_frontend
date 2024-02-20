class Contact {
  final String name;
  final String message;
  final String imageUrl;
  final String time;
  final int notificationCount;

  Contact({
    required this.name,
    required this.message,
    required this.imageUrl,
    required this.time,
    required this.notificationCount,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      name: json['name'],
      message: json['message'],
      imageUrl: json['imageUrl'],
      time: json['time'],
      notificationCount: json['notificationCount'],
    );
  }
}
