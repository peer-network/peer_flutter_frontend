import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'credit_source_model.freezed.dart';
part 'credit_source_model.g.dart';

@freezed
class CreditsSourceModel with _$CreditsSourceModel {
  const factory CreditsSourceModel({
    required List<CreditSourceItemModel> items,
  }) = _CreditsSourceModel;

  factory CreditsSourceModel.fromJson(Map<String, dynamic> json) => _$CreditsSourceModelFromJson(json);
}

@freezed
class CreditSourceItemModel with _$CreditSourceItemModel {
  const factory CreditSourceItemModel({
    required String label,
    required int amount,
  }) = _CreditSourceItemModel;

  factory CreditSourceItemModel.fromJson(Map<String, dynamic> json) => _$CreditSourceItemModelFromJson(json);
}
