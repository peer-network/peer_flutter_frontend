// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credits_source_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditSourceItemModel _$CreditSourceItemModelFromJson(
    Map<String, dynamic> json) {
  return _CreditSourceItemModel.fromJson(json);
}

/// @nodoc
mixin _$CreditSourceItemModel {
  String get label => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditSourceItemModelCopyWith<CreditSourceItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditSourceItemModelCopyWith<$Res> {
  factory $CreditSourceItemModelCopyWith(CreditSourceItemModel value,
          $Res Function(CreditSourceItemModel) then) =
      _$CreditSourceItemModelCopyWithImpl<$Res, CreditSourceItemModel>;
  @useResult
  $Res call({String label, int amount});
}

/// @nodoc
class _$CreditSourceItemModelCopyWithImpl<$Res,
        $Val extends CreditSourceItemModel>
    implements $CreditSourceItemModelCopyWith<$Res> {
  _$CreditSourceItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditSourceItemModelImplCopyWith<$Res>
    implements $CreditSourceItemModelCopyWith<$Res> {
  factory _$$CreditSourceItemModelImplCopyWith(
          _$CreditSourceItemModelImpl value,
          $Res Function(_$CreditSourceItemModelImpl) then) =
      __$$CreditSourceItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int amount});
}

/// @nodoc
class __$$CreditSourceItemModelImplCopyWithImpl<$Res>
    extends _$CreditSourceItemModelCopyWithImpl<$Res,
        _$CreditSourceItemModelImpl>
    implements _$$CreditSourceItemModelImplCopyWith<$Res> {
  __$$CreditSourceItemModelImplCopyWithImpl(_$CreditSourceItemModelImpl _value,
      $Res Function(_$CreditSourceItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_$CreditSourceItemModelImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditSourceItemModelImpl implements _CreditSourceItemModel {
  const _$CreditSourceItemModelImpl(
      {required this.label, required this.amount});

  factory _$CreditSourceItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditSourceItemModelImplFromJson(json);

  @override
  final String label;
  @override
  final int amount;

  @override
  String toString() {
    return 'CreditSourceItemModel(label: $label, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditSourceItemModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditSourceItemModelImplCopyWith<_$CreditSourceItemModelImpl>
      get copyWith => __$$CreditSourceItemModelImplCopyWithImpl<
          _$CreditSourceItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditSourceItemModelImplToJson(
      this,
    );
  }
}

abstract class _CreditSourceItemModel implements CreditSourceItemModel {
  const factory _CreditSourceItemModel(
      {required final String label,
      required final int amount}) = _$CreditSourceItemModelImpl;

  factory _CreditSourceItemModel.fromJson(Map<String, dynamic> json) =
      _$CreditSourceItemModelImpl.fromJson;

  @override
  String get label;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$CreditSourceItemModelImplCopyWith<_$CreditSourceItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
