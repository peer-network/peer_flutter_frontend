class CurrencyExchangeModel {
  final double creditValue;
  final int totalCreditsInSystem;

  CurrencyExchangeModel({
    required this.creditValue,
    required this.totalCreditsInSystem,
  });

  factory CurrencyExchangeModel.fromJson(Map<String, dynamic> json) {
    return CurrencyExchangeModel(
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
