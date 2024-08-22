// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_source_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditsSourceModel _$CreditsSourceModelFromJson(Map<String, dynamic> json) {
  return _CreditsSourceModel.fromJson(json);
}

/// @nodoc
mixin _$CreditsSourceModel {
  List<CreditSourceItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsSourceModelCopyWith<CreditsSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsSourceModelCopyWith<$Res> {
  factory $CreditsSourceModelCopyWith(
          CreditsSourceModel value, $Res Function(CreditsSourceModel) then) =
      _$CreditsSourceModelCopyWithImpl<$Res, CreditsSourceModel>;
  @useResult
  $Res call({List<CreditSourceItemModel> items});
}

/// @nodoc
class _$CreditsSourceModelCopyWithImpl<$Res, $Val extends CreditsSourceModel>
    implements $CreditsSourceModelCopyWith<$Res> {
  _$CreditsSourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreditSourceItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditsSourceModelImplCopyWith<$Res>
    implements $CreditsSourceModelCopyWith<$Res> {
  factory _$$CreditsSourceModelImplCopyWith(_$CreditsSourceModelImpl value,
          $Res Function(_$CreditsSourceModelImpl) then) =
      __$$CreditsSourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CreditSourceItemModel> items});
}

/// @nodoc
class __$$CreditsSourceModelImplCopyWithImpl<$Res>
    extends _$CreditsSourceModelCopyWithImpl<$Res, _$CreditsSourceModelImpl>
    implements _$$CreditsSourceModelImplCopyWith<$Res> {
  __$$CreditsSourceModelImplCopyWithImpl(_$CreditsSourceModelImpl _value,
      $Res Function(_$CreditsSourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$CreditsSourceModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreditSourceItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditsSourceModelImpl implements _CreditsSourceModel {
  const _$CreditsSourceModelImpl(
      {required final List<CreditSourceItemModel> items})
      : _items = items;

  factory _$CreditsSourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditsSourceModelImplFromJson(json);

  final List<CreditSourceItemModel> _items;
  @override
  List<CreditSourceItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CreditsSourceModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditsSourceModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditsSourceModelImplCopyWith<_$CreditsSourceModelImpl> get copyWith =>
      __$$CreditsSourceModelImplCopyWithImpl<_$CreditsSourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditsSourceModelImplToJson(
      this,
    );
  }
}

abstract class _CreditsSourceModel implements CreditsSourceModel {
  const factory _CreditsSourceModel(
          {required final List<CreditSourceItemModel> items}) =
      _$CreditsSourceModelImpl;

  factory _CreditsSourceModel.fromJson(Map<String, dynamic> json) =
      _$CreditsSourceModelImpl.fromJson;

  @override
  List<CreditSourceItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$CreditsSourceModelImplCopyWith<_$CreditsSourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
