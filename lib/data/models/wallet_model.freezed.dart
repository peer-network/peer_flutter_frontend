// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
mixin _$WalletModel {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get totalCredits => throw _privateConstructorUsedError;
  int get creditsCollectedToday => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res, WalletModel>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int totalCredits,
      int creditsCollectedToday,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res, $Val extends WalletModel>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? totalCredits = null,
    Object? creditsCollectedToday = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      totalCredits: null == totalCredits
          ? _value.totalCredits
          : totalCredits // ignore: cast_nullable_to_non_nullable
              as int,
      creditsCollectedToday: null == creditsCollectedToday
          ? _value.creditsCollectedToday
          : creditsCollectedToday // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletModelImplCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$$WalletModelImplCopyWith(
          _$WalletModelImpl value, $Res Function(_$WalletModelImpl) then) =
      __$$WalletModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int totalCredits,
      int creditsCollectedToday,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$WalletModelImplCopyWithImpl<$Res>
    extends _$WalletModelCopyWithImpl<$Res, _$WalletModelImpl>
    implements _$$WalletModelImplCopyWith<$Res> {
  __$$WalletModelImplCopyWithImpl(
      _$WalletModelImpl _value, $Res Function(_$WalletModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? totalCredits = null,
    Object? creditsCollectedToday = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WalletModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      totalCredits: null == totalCredits
          ? _value.totalCredits
          : totalCredits // ignore: cast_nullable_to_non_nullable
              as int,
      creditsCollectedToday: null == creditsCollectedToday
          ? _value.creditsCollectedToday
          : creditsCollectedToday // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletModelImpl with DiagnosticableTreeMixin implements _WalletModel {
  const _$WalletModelImpl(
      {required this.id,
      required this.userId,
      required this.totalCredits,
      required this.creditsCollectedToday,
      this.createdAt,
      this.updatedAt});

  factory _$WalletModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletModelImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int totalCredits;
  @override
  final int creditsCollectedToday;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletModel(id: $id, userId: $userId, totalCredits: $totalCredits, creditsCollectedToday: $creditsCollectedToday, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WalletModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('totalCredits', totalCredits))
      ..add(DiagnosticsProperty('creditsCollectedToday', creditsCollectedToday))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalCredits, totalCredits) ||
                other.totalCredits == totalCredits) &&
            (identical(other.creditsCollectedToday, creditsCollectedToday) ||
                other.creditsCollectedToday == creditsCollectedToday) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, totalCredits,
      creditsCollectedToday, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      __$$WalletModelImplCopyWithImpl<_$WalletModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletModelImplToJson(
      this,
    );
  }
}

abstract class _WalletModel implements WalletModel {
  const factory _WalletModel(
      {required final int id,
      required final int userId,
      required final int totalCredits,
      required final int creditsCollectedToday,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$WalletModelImpl;

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$WalletModelImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get totalCredits;
  @override
  int get creditsCollectedToday;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrencyExchangeModel _$CurrencyExchangeModelFromJson(
    Map<String, dynamic> json) {
  return _CurrencyExchangeModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyExchangeModel {
  double get creditValue => throw _privateConstructorUsedError;
  int get totalCreditsInSystem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyExchangeModelCopyWith<CurrencyExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyExchangeModelCopyWith<$Res> {
  factory $CurrencyExchangeModelCopyWith(CurrencyExchangeModel value,
          $Res Function(CurrencyExchangeModel) then) =
      _$CurrencyExchangeModelCopyWithImpl<$Res, CurrencyExchangeModel>;
  @useResult
  $Res call({double creditValue, int totalCreditsInSystem});
}

/// @nodoc
class _$CurrencyExchangeModelCopyWithImpl<$Res,
        $Val extends CurrencyExchangeModel>
    implements $CurrencyExchangeModelCopyWith<$Res> {
  _$CurrencyExchangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditValue = null,
    Object? totalCreditsInSystem = null,
  }) {
    return _then(_value.copyWith(
      creditValue: null == creditValue
          ? _value.creditValue
          : creditValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalCreditsInSystem: null == totalCreditsInSystem
          ? _value.totalCreditsInSystem
          : totalCreditsInSystem // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyExchangeModelImplCopyWith<$Res>
    implements $CurrencyExchangeModelCopyWith<$Res> {
  factory _$$CurrencyExchangeModelImplCopyWith(
          _$CurrencyExchangeModelImpl value,
          $Res Function(_$CurrencyExchangeModelImpl) then) =
      __$$CurrencyExchangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double creditValue, int totalCreditsInSystem});
}

/// @nodoc
class __$$CurrencyExchangeModelImplCopyWithImpl<$Res>
    extends _$CurrencyExchangeModelCopyWithImpl<$Res,
        _$CurrencyExchangeModelImpl>
    implements _$$CurrencyExchangeModelImplCopyWith<$Res> {
  __$$CurrencyExchangeModelImplCopyWithImpl(_$CurrencyExchangeModelImpl _value,
      $Res Function(_$CurrencyExchangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditValue = null,
    Object? totalCreditsInSystem = null,
  }) {
    return _then(_$CurrencyExchangeModelImpl(
      creditValue: null == creditValue
          ? _value.creditValue
          : creditValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalCreditsInSystem: null == totalCreditsInSystem
          ? _value.totalCreditsInSystem
          : totalCreditsInSystem // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyExchangeModelImpl
    with DiagnosticableTreeMixin
    implements _CurrencyExchangeModel {
  const _$CurrencyExchangeModelImpl(
      {required this.creditValue, required this.totalCreditsInSystem});

  factory _$CurrencyExchangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyExchangeModelImplFromJson(json);

  @override
  final double creditValue;
  @override
  final int totalCreditsInSystem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyExchangeModel(creditValue: $creditValue, totalCreditsInSystem: $totalCreditsInSystem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyExchangeModel'))
      ..add(DiagnosticsProperty('creditValue', creditValue))
      ..add(DiagnosticsProperty('totalCreditsInSystem', totalCreditsInSystem));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyExchangeModelImpl &&
            (identical(other.creditValue, creditValue) ||
                other.creditValue == creditValue) &&
            (identical(other.totalCreditsInSystem, totalCreditsInSystem) ||
                other.totalCreditsInSystem == totalCreditsInSystem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, creditValue, totalCreditsInSystem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyExchangeModelImplCopyWith<_$CurrencyExchangeModelImpl>
      get copyWith => __$$CurrencyExchangeModelImplCopyWithImpl<
          _$CurrencyExchangeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyExchangeModelImplToJson(
      this,
    );
  }
}

abstract class _CurrencyExchangeModel implements CurrencyExchangeModel {
  const factory _CurrencyExchangeModel(
      {required final double creditValue,
      required final int totalCreditsInSystem}) = _$CurrencyExchangeModelImpl;

  factory _CurrencyExchangeModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyExchangeModelImpl.fromJson;

  @override
  double get creditValue;
  @override
  int get totalCreditsInSystem;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyExchangeModelImplCopyWith<_$CurrencyExchangeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
class _$CreditsSourceModelImpl
    with DiagnosticableTreeMixin
    implements _CreditsSourceModel {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreditsSourceModel(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreditsSourceModel'))
      ..add(DiagnosticsProperty('items', items));
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
class _$CreditSourceItemModelImpl
    with DiagnosticableTreeMixin
    implements _CreditSourceItemModel {
  const _$CreditSourceItemModelImpl(
      {required this.label, required this.amount});

  factory _$CreditSourceItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditSourceItemModelImplFromJson(json);

  @override
  final String label;
  @override
  final int amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreditSourceItemModel(label: $label, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreditSourceItemModel'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('amount', amount));
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

AccountDevelopmentModel _$AccountDevelopmentModelFromJson(
    Map<String, dynamic> json) {
  return _AccountDevelopmentModel.fromJson(json);
}

/// @nodoc
mixin _$AccountDevelopmentModel {
  List<double> get values => throw _privateConstructorUsedError;
  List<DateTime> get timestamps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDevelopmentModelCopyWith<AccountDevelopmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDevelopmentModelCopyWith<$Res> {
  factory $AccountDevelopmentModelCopyWith(AccountDevelopmentModel value,
          $Res Function(AccountDevelopmentModel) then) =
      _$AccountDevelopmentModelCopyWithImpl<$Res, AccountDevelopmentModel>;
  @useResult
  $Res call({List<double> values, List<DateTime> timestamps});
}

/// @nodoc
class _$AccountDevelopmentModelCopyWithImpl<$Res,
        $Val extends AccountDevelopmentModel>
    implements $AccountDevelopmentModelCopyWith<$Res> {
  _$AccountDevelopmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? timestamps = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
      timestamps: null == timestamps
          ? _value.timestamps
          : timestamps // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDevelopmentModelImplCopyWith<$Res>
    implements $AccountDevelopmentModelCopyWith<$Res> {
  factory _$$AccountDevelopmentModelImplCopyWith(
          _$AccountDevelopmentModelImpl value,
          $Res Function(_$AccountDevelopmentModelImpl) then) =
      __$$AccountDevelopmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> values, List<DateTime> timestamps});
}

/// @nodoc
class __$$AccountDevelopmentModelImplCopyWithImpl<$Res>
    extends _$AccountDevelopmentModelCopyWithImpl<$Res,
        _$AccountDevelopmentModelImpl>
    implements _$$AccountDevelopmentModelImplCopyWith<$Res> {
  __$$AccountDevelopmentModelImplCopyWithImpl(
      _$AccountDevelopmentModelImpl _value,
      $Res Function(_$AccountDevelopmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? timestamps = null,
  }) {
    return _then(_$AccountDevelopmentModelImpl(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<double>,
      timestamps: null == timestamps
          ? _value._timestamps
          : timestamps // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDevelopmentModelImpl
    with DiagnosticableTreeMixin
    implements _AccountDevelopmentModel {
  const _$AccountDevelopmentModelImpl(
      {required final List<double> values,
      required final List<DateTime> timestamps})
      : _values = values,
        _timestamps = timestamps;

  factory _$AccountDevelopmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDevelopmentModelImplFromJson(json);

  final List<double> _values;
  @override
  List<double> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<DateTime> _timestamps;
  @override
  List<DateTime> get timestamps {
    if (_timestamps is EqualUnmodifiableListView) return _timestamps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timestamps);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDevelopmentModel(values: $values, timestamps: $timestamps)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountDevelopmentModel'))
      ..add(DiagnosticsProperty('values', values))
      ..add(DiagnosticsProperty('timestamps', timestamps));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDevelopmentModelImpl &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality()
                .equals(other._timestamps, _timestamps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_timestamps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDevelopmentModelImplCopyWith<_$AccountDevelopmentModelImpl>
      get copyWith => __$$AccountDevelopmentModelImplCopyWithImpl<
          _$AccountDevelopmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDevelopmentModelImplToJson(
      this,
    );
  }
}

abstract class _AccountDevelopmentModel implements AccountDevelopmentModel {
  const factory _AccountDevelopmentModel(
          {required final List<double> values,
          required final List<DateTime> timestamps}) =
      _$AccountDevelopmentModelImpl;

  factory _AccountDevelopmentModel.fromJson(Map<String, dynamic> json) =
      _$AccountDevelopmentModelImpl.fromJson;

  @override
  List<double> get values;
  @override
  List<DateTime> get timestamps;
  @override
  @JsonKey(ignore: true)
  _$$AccountDevelopmentModelImplCopyWith<_$AccountDevelopmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
