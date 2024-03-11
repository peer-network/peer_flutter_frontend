import 'user.dart';

class Wallet {
  //final UserModel user;
  final int totalCredits;
  final int creditsCollectedToday;
  final double percentageOfTotalTokens;

  Wallet({
    //required this.user,
    required this.totalCredits,
    required this.creditsCollectedToday,
    required this.percentageOfTotalTokens,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
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

class CreditsSource {
  final int interactions;
  final int posts;
  final int likes;

  CreditsSource({
    required this.interactions,
    required this.posts,
    required this.likes,
  });

  factory CreditsSource.fromJson(Map<String, dynamic> json) {
    return CreditsSource(
      interactions: json['interactions'],
      posts: json['posts'],
      likes: json['likes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'interactions': interactions,
      'posts': posts,
      'likes': likes,
    };
  }
}

class AccountDevelopment {
  final List<double> values;
  final List<DateTime> timestamps;

  AccountDevelopment({
    required this.values,
    required this.timestamps,
  });

  factory AccountDevelopment.fromJson(Map<String, dynamic> json) {
    var valuesList = List<double>.from(json['values']);
    var timestampList = List<String>.from(json['timestamps']);

    return AccountDevelopment(
      values: valuesList,
      timestamps:
          timestampList.map((timestamp) => DateTime.parse(timestamp)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'values': values,
      'timestamps':
          timestamps.map((timestamp) => timestamp.toIso8601String()).toList(),
    };
  }
}

class CurrencyExchange {
  final double creditValue;
  final int totalCreditsInSystem;

  CurrencyExchange({
    required this.creditValue,
    required this.totalCreditsInSystem,
  });

  factory CurrencyExchange.fromJson(Map<String, dynamic> json) {
    return CurrencyExchange(
      creditValue: json['creditValue'],
      totalCreditsInSystem: json['totalCreditsInSystem'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'creditValue': creditValue,
      'totalCreditsInSystem': totalCreditsInSystem,
    };
  }
}
