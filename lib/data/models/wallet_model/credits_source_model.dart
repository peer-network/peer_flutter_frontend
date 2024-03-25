import 'package:peer_app/data/models/wallet_model/credit_source_item_model.dart';

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
