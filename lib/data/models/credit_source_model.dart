import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peer_app/data/models/credits_source_item_model.dart';

part 'credit_source_model.freezed.dart';
part 'credit_source_model.g.dart';

@freezed
class CreditsSourceModel with _$CreditsSourceModel {
  const factory CreditsSourceModel({
    required List<CreditSourceItemModel> items,
  }) = _CreditsSourceModel;

  factory CreditsSourceModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsSourceModelFromJson(json);

  factory CreditsSourceModel.fromJsonWithLabels(Map<String, dynamic> json) {
    return CreditsSourceModel(
      items: <CreditSourceItemModel>[
        CreditSourceItemModel(label: 'Comments', amount: json['comments']),
        CreditSourceItemModel(label: 'Views', amount: json['views']),
        CreditSourceItemModel(label: 'Shares', amount: json['shares']),
        CreditSourceItemModel(label: 'Likes', amount: json['likes']),
      ],
    );
  }
}
