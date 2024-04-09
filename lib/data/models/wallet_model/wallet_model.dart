class WalletModel {
  //final UserModel user;
  final int totalCredits;
  final int creditsCollectedToday;
  final double percentageOfTotalTokens;

  WalletModel({
    //required this.user,
    required this.totalCredits,
    required this.creditsCollectedToday,
    required this.percentageOfTotalTokens,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
      //user: json['user'],
      totalCredits: json['totalCredits'],
      creditsCollectedToday: json['creditsCollectedToday'],
      percentageOfTotalTokens: json['percentageOfTotalTokens'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      //'user': user,
      'totalCredits': totalCredits,
      'creditsCollectedToday': creditsCollectedToday,
      'percentageOfTotalTokens': percentageOfTotalTokens,
    };
  }
}
