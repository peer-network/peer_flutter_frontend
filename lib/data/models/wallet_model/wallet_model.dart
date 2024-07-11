class WalletModel {
  //final UserModel user;
  final dynamic id;
  final int userId;
  final int totalCredits;
  final int creditsCollectedToday;
  final double percentageOfTotalTokens;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  WalletModel({
    required this.percentageOfTotalTokens,
    //required this.user,
    required this.userId,
    this.createdAt,
    this.updatedAt,
    required this.id,
    required this.totalCredits,
    required this.creditsCollectedToday,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
        percentageOfTotalTokens: json['percentageOfTotalTokens'],
        totalCredits: json['totalCredits'],
        creditsCollectedToday: json['creditsCollectedToday'],
        userId: json['userId'],
        createdAt: json['created_at'] != null
            ? DateTime.parse(json['created_at'])
            : null,
        updatedAt: json['created_at'] != null
            ? DateTime.parse(json['updated_at'])
            : null,
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
