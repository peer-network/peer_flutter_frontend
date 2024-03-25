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
