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
  CreditsSourceModel get creditsSource => throw _privateConstructorUsedError;
  CurrencyExchangeModel get currencyExchange =>
      throw _privateConstructorUsedError;
  AccountDevelopmentModel get accountDevelopment =>
      throw _privateConstructorUsedError;

  /// Serializes this WalletModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      DateTime? updatedAt,
      CreditsSourceModel creditsSource,
      CurrencyExchangeModel currencyExchange,
      AccountDevelopmentModel accountDevelopment});
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res, $Val extends WalletModel>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? totalCredits = null,
    Object? creditsCollectedToday = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? creditsSource = freezed,
    Object? currencyExchange = freezed,
    Object? accountDevelopment = freezed,
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
      creditsSource: freezed == creditsSource
          ? _value.creditsSource
          : creditsSource // ignore: cast_nullable_to_non_nullable
              as CreditsSourceModel,
      currencyExchange: freezed == currencyExchange
          ? _value.currencyExchange
          : currencyExchange // ignore: cast_nullable_to_non_nullable
              as CurrencyExchangeModel,
      accountDevelopment: freezed == accountDevelopment
          ? _value.accountDevelopment
          : accountDevelopment // ignore: cast_nullable_to_non_nullable
              as AccountDevelopmentModel,
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
      DateTime? updatedAt,
      CreditsSourceModel creditsSource,
      CurrencyExchangeModel currencyExchange,
      AccountDevelopmentModel accountDevelopment});
}

/// @nodoc
class __$$WalletModelImplCopyWithImpl<$Res>
    extends _$WalletModelCopyWithImpl<$Res, _$WalletModelImpl>
    implements _$$WalletModelImplCopyWith<$Res> {
  __$$WalletModelImplCopyWithImpl(
      _$WalletModelImpl _value, $Res Function(_$WalletModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? totalCredits = null,
    Object? creditsCollectedToday = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? creditsSource = freezed,
    Object? currencyExchange = freezed,
    Object? accountDevelopment = freezed,
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
      creditsSource: freezed == creditsSource
          ? _value.creditsSource
          : creditsSource // ignore: cast_nullable_to_non_nullable
              as CreditsSourceModel,
      currencyExchange: freezed == currencyExchange
          ? _value.currencyExchange
          : currencyExchange // ignore: cast_nullable_to_non_nullable
              as CurrencyExchangeModel,
      accountDevelopment: freezed == accountDevelopment
          ? _value.accountDevelopment
          : accountDevelopment // ignore: cast_nullable_to_non_nullable
              as AccountDevelopmentModel,
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
      this.updatedAt,
      required this.creditsSource,
      required this.currencyExchange,
      required this.accountDevelopment});

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
  final CreditsSourceModel creditsSource;
  @override
  final CurrencyExchangeModel currencyExchange;
  @override
  final AccountDevelopmentModel accountDevelopment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WalletModel(id: $id, userId: $userId, totalCredits: $totalCredits, creditsCollectedToday: $creditsCollectedToday, createdAt: $createdAt, updatedAt: $updatedAt, creditsSource: $creditsSource, currencyExchange: $currencyExchange, accountDevelopment: $accountDevelopment)';
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
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('creditsSource', creditsSource))
      ..add(DiagnosticsProperty('currencyExchange', currencyExchange))
      ..add(DiagnosticsProperty('accountDevelopment', accountDevelopment));
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
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.creditsSource, creditsSource) &&
            const DeepCollectionEquality()
                .equals(other.currencyExchange, currencyExchange) &&
            const DeepCollectionEquality()
                .equals(other.accountDevelopment, accountDevelopment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      totalCredits,
      creditsCollectedToday,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(creditsSource),
      const DeepCollectionEquality().hash(currencyExchange),
      const DeepCollectionEquality().hash(accountDevelopment));

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
          final DateTime? updatedAt,
          required final CreditsSourceModel creditsSource,
          required final CurrencyExchangeModel currencyExchange,
          required final AccountDevelopmentModel accountDevelopment}) =
      _$WalletModelImpl;

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
  CreditsSourceModel get creditsSource;
  @override
  CurrencyExchangeModel get currencyExchange;
  @override
  AccountDevelopmentModel get accountDevelopment;

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
