import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_development_model.freezed.dart';
part 'account_development_model.g.dart';

@freezed
class AccountDevelopmentModel with _$AccountDevelopmentModel {
  const factory AccountDevelopmentModel({
    required List<double> values,
    required List<DateTime> timestamps,
  }) = _AccountDevelopmentModel;

  factory AccountDevelopmentModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDevelopmentModelFromJson(json);
}
