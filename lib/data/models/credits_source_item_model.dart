import 'package:freezed_annotation/freezed_annotation.dart';

part 'credits_source_item_model.freezed.dart';
part 'credits_source_item_model.g.dart';

@freezed
class CreditSourceItemModel with _$CreditSourceItemModel {
  const factory CreditSourceItemModel({
    required String label,
    required int amount,
  }) = _CreditSourceItemModel;

  factory CreditSourceItemModel.fromJson(Map<String, dynamic> json) =>
      _$CreditSourceItemModelFromJson(json);
}
