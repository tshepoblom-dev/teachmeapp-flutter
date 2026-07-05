// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PayoutAccount _$PayoutAccountFromJson(Map<String, dynamic> json) {
  return _PayoutAccount.fromJson(json);
}

/// @nodoc
mixin _$PayoutAccount {
  int get id => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;
  String get holderName => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get branchCode => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String? get verifiedAt => throw _privateConstructorUsedError;

  /// Serializes this PayoutAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayoutAccountCopyWith<PayoutAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutAccountCopyWith<$Res> {
  factory $PayoutAccountCopyWith(
    PayoutAccount value,
    $Res Function(PayoutAccount) then,
  ) = _$PayoutAccountCopyWithImpl<$Res, PayoutAccount>;
  @useResult
  $Res call({
    int id,
    String accountType,
    String holderName,
    String? bankName,
    String? branchCode,
    bool isDefault,
    bool isVerified,
    String? verifiedAt,
  });
}

/// @nodoc
class _$PayoutAccountCopyWithImpl<$Res, $Val extends PayoutAccount>
    implements $PayoutAccountCopyWith<$Res> {
  _$PayoutAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountType = null,
    Object? holderName = null,
    Object? bankName = freezed,
    Object? branchCode = freezed,
    Object? isDefault = null,
    Object? isVerified = null,
    Object? verifiedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            accountType:
                null == accountType
                    ? _value.accountType
                    : accountType // ignore: cast_nullable_to_non_nullable
                        as String,
            holderName:
                null == holderName
                    ? _value.holderName
                    : holderName // ignore: cast_nullable_to_non_nullable
                        as String,
            bankName:
                freezed == bankName
                    ? _value.bankName
                    : bankName // ignore: cast_nullable_to_non_nullable
                        as String?,
            branchCode:
                freezed == branchCode
                    ? _value.branchCode
                    : branchCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            isDefault:
                null == isDefault
                    ? _value.isDefault
                    : isDefault // ignore: cast_nullable_to_non_nullable
                        as bool,
            isVerified:
                null == isVerified
                    ? _value.isVerified
                    : isVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
            verifiedAt:
                freezed == verifiedAt
                    ? _value.verifiedAt
                    : verifiedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PayoutAccountImplCopyWith<$Res>
    implements $PayoutAccountCopyWith<$Res> {
  factory _$$PayoutAccountImplCopyWith(
    _$PayoutAccountImpl value,
    $Res Function(_$PayoutAccountImpl) then,
  ) = __$$PayoutAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String accountType,
    String holderName,
    String? bankName,
    String? branchCode,
    bool isDefault,
    bool isVerified,
    String? verifiedAt,
  });
}

/// @nodoc
class __$$PayoutAccountImplCopyWithImpl<$Res>
    extends _$PayoutAccountCopyWithImpl<$Res, _$PayoutAccountImpl>
    implements _$$PayoutAccountImplCopyWith<$Res> {
  __$$PayoutAccountImplCopyWithImpl(
    _$PayoutAccountImpl _value,
    $Res Function(_$PayoutAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountType = null,
    Object? holderName = null,
    Object? bankName = freezed,
    Object? branchCode = freezed,
    Object? isDefault = null,
    Object? isVerified = null,
    Object? verifiedAt = freezed,
  }) {
    return _then(
      _$PayoutAccountImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        accountType:
            null == accountType
                ? _value.accountType
                : accountType // ignore: cast_nullable_to_non_nullable
                    as String,
        holderName:
            null == holderName
                ? _value.holderName
                : holderName // ignore: cast_nullable_to_non_nullable
                    as String,
        bankName:
            freezed == bankName
                ? _value.bankName
                : bankName // ignore: cast_nullable_to_non_nullable
                    as String?,
        branchCode:
            freezed == branchCode
                ? _value.branchCode
                : branchCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        isDefault:
            null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                    as bool,
        isVerified:
            null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
        verifiedAt:
            freezed == verifiedAt
                ? _value.verifiedAt
                : verifiedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutAccountImpl implements _PayoutAccount {
  const _$PayoutAccountImpl({
    required this.id,
    required this.accountType,
    required this.holderName,
    this.bankName,
    this.branchCode,
    required this.isDefault,
    required this.isVerified,
    this.verifiedAt,
  });

  factory _$PayoutAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutAccountImplFromJson(json);

  @override
  final int id;
  @override
  final String accountType;
  @override
  final String holderName;
  @override
  final String? bankName;
  @override
  final String? branchCode;
  @override
  final bool isDefault;
  @override
  final bool isVerified;
  @override
  final String? verifiedAt;

  @override
  String toString() {
    return 'PayoutAccount(id: $id, accountType: $accountType, holderName: $holderName, bankName: $bankName, branchCode: $branchCode, isDefault: $isDefault, isVerified: $isVerified, verifiedAt: $verifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.holderName, holderName) ||
                other.holderName == holderName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.branchCode, branchCode) ||
                other.branchCode == branchCode) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    accountType,
    holderName,
    bankName,
    branchCode,
    isDefault,
    isVerified,
    verifiedAt,
  );

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutAccountImplCopyWith<_$PayoutAccountImpl> get copyWith =>
      __$$PayoutAccountImplCopyWithImpl<_$PayoutAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutAccountImplToJson(this);
  }
}

abstract class _PayoutAccount implements PayoutAccount {
  const factory _PayoutAccount({
    required final int id,
    required final String accountType,
    required final String holderName,
    final String? bankName,
    final String? branchCode,
    required final bool isDefault,
    required final bool isVerified,
    final String? verifiedAt,
  }) = _$PayoutAccountImpl;

  factory _PayoutAccount.fromJson(Map<String, dynamic> json) =
      _$PayoutAccountImpl.fromJson;

  @override
  int get id;
  @override
  String get accountType;
  @override
  String get holderName;
  @override
  String? get bankName;
  @override
  String? get branchCode;
  @override
  bool get isDefault;
  @override
  bool get isVerified;
  @override
  String? get verifiedAt;

  /// Create a copy of PayoutAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutAccountImplCopyWith<_$PayoutAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
