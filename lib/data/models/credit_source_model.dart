class CreditSourceItemModel {
  final String label;
  final int amount;

  CreditSourceItemModel({
    required this.label,
    required this.amount,
  });

  factory CreditSourceItemModel.fromJson(String label, int amount) {
    return CreditSourceItemModel(
      label: label,
      amount: amount,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'source': label,
      'amount': amount,
    };
  }
}

class CreditsSourceModel {
  final List<CreditSourceItemModel> items;

  CreditsSourceModel({required this.items});

  factory CreditsSourceModel.fromJson(Map<String, dynamic> json) {
    return CreditsSourceModel(
      items: <CreditSourceItemModel>[
        CreditSourceItemModel.fromJson('Comments', json['comments']),
        CreditSourceItemModel.fromJson('Views', json['views']),
        CreditSourceItemModel.fromJson('Shares', json['shares']),
        CreditSourceItemModel.fromJson('Likes', json['likes']),
      ],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'comments': items[0].toJson(),
      'views': items[1].toJson(),
      'shares': items[2].toJson(),
      'likes': items[3].toJson(),
    };
  }
}
