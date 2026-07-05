// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get accountStatus => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String? get profilePhotoUrl => throw _privateConstructorUsedError;
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;
  UserWallet? get wallet => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    int id,
    String name,
    String email,
    String role,
    String accountStatus,
    bool emailVerified,
    String? profilePhotoUrl,
    DateTime? lastLoginAt,
    DateTime? createdAt,
    Profile? profile,
    UserWallet? wallet,
  });

  $ProfileCopyWith<$Res>? get profile;
  $UserWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? accountStatus = null,
    Object? emailVerified = null,
    Object? profilePhotoUrl = freezed,
    Object? lastLoginAt = freezed,
    Object? createdAt = freezed,
    Object? profile = freezed,
    Object? wallet = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as String,
            accountStatus:
                null == accountStatus
                    ? _value.accountStatus
                    : accountStatus // ignore: cast_nullable_to_non_nullable
                        as String,
            emailVerified:
                null == emailVerified
                    ? _value.emailVerified
                    : emailVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
            profilePhotoUrl:
                freezed == profilePhotoUrl
                    ? _value.profilePhotoUrl
                    : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastLoginAt:
                freezed == lastLoginAt
                    ? _value.lastLoginAt
                    : lastLoginAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            profile:
                freezed == profile
                    ? _value.profile
                    : profile // ignore: cast_nullable_to_non_nullable
                        as Profile?,
            wallet:
                freezed == wallet
                    ? _value.wallet
                    : wallet // ignore: cast_nullable_to_non_nullable
                        as UserWallet?,
          )
          as $Val,
    );
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $UserWalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String email,
    String role,
    String accountStatus,
    bool emailVerified,
    String? profilePhotoUrl,
    DateTime? lastLoginAt,
    DateTime? createdAt,
    Profile? profile,
    UserWallet? wallet,
  });

  @override
  $ProfileCopyWith<$Res>? get profile;
  @override
  $UserWalletCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? accountStatus = null,
    Object? emailVerified = null,
    Object? profilePhotoUrl = freezed,
    Object? lastLoginAt = freezed,
    Object? createdAt = freezed,
    Object? profile = freezed,
    Object? wallet = freezed,
  }) {
    return _then(
      _$UserImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as String,
        accountStatus:
            null == accountStatus
                ? _value.accountStatus
                : accountStatus // ignore: cast_nullable_to_non_nullable
                    as String,
        emailVerified:
            null == emailVerified
                ? _value.emailVerified
                : emailVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
        profilePhotoUrl:
            freezed == profilePhotoUrl
                ? _value.profilePhotoUrl
                : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastLoginAt:
            freezed == lastLoginAt
                ? _value.lastLoginAt
                : lastLoginAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        profile:
            freezed == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                    as Profile?,
        wallet:
            freezed == wallet
                ? _value.wallet
                : wallet // ignore: cast_nullable_to_non_nullable
                    as UserWallet?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.accountStatus,
    required this.emailVerified,
    this.profilePhotoUrl,
    this.lastLoginAt,
    this.createdAt,
    this.profile,
    this.wallet,
  });

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String role;
  @override
  final String accountStatus;
  @override
  final bool emailVerified;
  @override
  final String? profilePhotoUrl;
  @override
  final DateTime? lastLoginAt;
  @override
  final DateTime? createdAt;
  @override
  final Profile? profile;
  @override
  final UserWallet? wallet;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, role: $role, accountStatus: $accountStatus, emailVerified: $emailVerified, profilePhotoUrl: $profilePhotoUrl, lastLoginAt: $lastLoginAt, createdAt: $createdAt, profile: $profile, wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    email,
    role,
    accountStatus,
    emailVerified,
    profilePhotoUrl,
    lastLoginAt,
    createdAt,
    profile,
    wallet,
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final int id,
    required final String name,
    required final String email,
    required final String role,
    required final String accountStatus,
    required final bool emailVerified,
    final String? profilePhotoUrl,
    final DateTime? lastLoginAt,
    final DateTime? createdAt,
    final Profile? profile,
    final UserWallet? wallet,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get role;
  @override
  String get accountStatus;
  @override
  bool get emailVerified;
  @override
  String? get profilePhotoUrl;
  @override
  DateTime? get lastLoginAt;
  @override
  DateTime? get createdAt;
  @override
  Profile? get profile;
  @override
  UserWallet? get wallet;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
