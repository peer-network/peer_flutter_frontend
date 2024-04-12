class WalletModel {
  //final UserModel user;
  final dynamic id;
  final int userId;
  final int totalCredits;
  final int creditsCollectedToday;
  final DateTime createdAt;
  final DateTime updatedAt;

  WalletModel({
    //required this.user,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.totalCredits,
    required this.creditsCollectedToday,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
        //user: json['user'],
        totalCredits: json['total_credits'],
        creditsCollectedToday: json['credits_collected_today'],
        userId: json['user_id'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        id: json['id']);
  }

  Map<String, dynamic> toJson() {
    return {
      //'user': user,
      'totalCredits': totalCredits,
      'creditsCollectedToday': creditsCollectedToday,
    };
  }
}
