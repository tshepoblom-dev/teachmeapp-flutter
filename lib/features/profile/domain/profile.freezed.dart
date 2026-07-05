// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String? get bio => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get languagePreference => throw _privateConstructorUsedError;
  String? get kycStatus => throw _privateConstructorUsedError;
  bool get idVerified => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  List<String>? get subjects => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDoubleOrNull)
  double? get hourlyRate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDoubleOrNull)
  double? get averageRating => throw _privateConstructorUsedError;
  int? get totalReviews => throw _privateConstructorUsedError;
  int? get totalSessionsHosted => throw _privateConstructorUsedError;
  int? get totalSessionsAttended => throw _privateConstructorUsedError;
  List<String>? get teachingSpecializations =>
      throw _privateConstructorUsedError;
  String? get educationLevel => throw _privateConstructorUsedError;
  int? get yearsOfExperience => throw _privateConstructorUsedError;
  String? get tier => throw _privateConstructorUsedError;
  String? get tierColour => throw _privateConstructorUsedError;

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call({
    String? bio,
    String? phoneNumber,
    String? timezone,
    String? languagePreference,
    String? kycStatus,
    bool idVerified,
    bool isAvailable,
    List<String>? subjects,
    @JsonKey(fromJson: _toDoubleOrNull) double? hourlyRate,
    @JsonKey(fromJson: _toDoubleOrNull) double? averageRating,
    int? totalReviews,
    int? totalSessionsHosted,
    int? totalSessionsAttended,
    List<String>? teachingSpecializations,
    String? educationLevel,
    int? yearsOfExperience,
    String? tier,
    String? tierColour,
  });
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bio = freezed,
    Object? phoneNumber = freezed,
    Object? timezone = freezed,
    Object? languagePreference = freezed,
    Object? kycStatus = freezed,
    Object? idVerified = null,
    Object? isAvailable = null,
    Object? subjects = freezed,
    Object? hourlyRate = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? totalSessionsHosted = freezed,
    Object? totalSessionsAttended = freezed,
    Object? teachingSpecializations = freezed,
    Object? educationLevel = freezed,
    Object? yearsOfExperience = freezed,
    Object? tier = freezed,
    Object? tierColour = freezed,
  }) {
    return _then(
      _value.copyWith(
            bio:
                freezed == bio
                    ? _value.bio
                    : bio // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            timezone:
                freezed == timezone
                    ? _value.timezone
                    : timezone // ignore: cast_nullable_to_non_nullable
                        as String?,
            languagePreference:
                freezed == languagePreference
                    ? _value.languagePreference
                    : languagePreference // ignore: cast_nullable_to_non_nullable
                        as String?,
            kycStatus:
                freezed == kycStatus
                    ? _value.kycStatus
                    : kycStatus // ignore: cast_nullable_to_non_nullable
                        as String?,
            idVerified:
                null == idVerified
                    ? _value.idVerified
                    : idVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
            isAvailable:
                null == isAvailable
                    ? _value.isAvailable
                    : isAvailable // ignore: cast_nullable_to_non_nullable
                        as bool,
            subjects:
                freezed == subjects
                    ? _value.subjects
                    : subjects // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            hourlyRate:
                freezed == hourlyRate
                    ? _value.hourlyRate
                    : hourlyRate // ignore: cast_nullable_to_non_nullable
                        as double?,
            averageRating:
                freezed == averageRating
                    ? _value.averageRating
                    : averageRating // ignore: cast_nullable_to_non_nullable
                        as double?,
            totalReviews:
                freezed == totalReviews
                    ? _value.totalReviews
                    : totalReviews // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSessionsHosted:
                freezed == totalSessionsHosted
                    ? _value.totalSessionsHosted
                    : totalSessionsHosted // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSessionsAttended:
                freezed == totalSessionsAttended
                    ? _value.totalSessionsAttended
                    : totalSessionsAttended // ignore: cast_nullable_to_non_nullable
                        as int?,
            teachingSpecializations:
                freezed == teachingSpecializations
                    ? _value.teachingSpecializations
                    : teachingSpecializations // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            educationLevel:
                freezed == educationLevel
                    ? _value.educationLevel
                    : educationLevel // ignore: cast_nullable_to_non_nullable
                        as String?,
            yearsOfExperience:
                freezed == yearsOfExperience
                    ? _value.yearsOfExperience
                    : yearsOfExperience // ignore: cast_nullable_to_non_nullable
                        as int?,
            tier:
                freezed == tier
                    ? _value.tier
                    : tier // ignore: cast_nullable_to_non_nullable
                        as String?,
            tierColour:
                freezed == tierColour
                    ? _value.tierColour
                    : tierColour // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
    _$ProfileImpl value,
    $Res Function(_$ProfileImpl) then,
  ) = __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? bio,
    String? phoneNumber,
    String? timezone,
    String? languagePreference,
    String? kycStatus,
    bool idVerified,
    bool isAvailable,
    List<String>? subjects,
    @JsonKey(fromJson: _toDoubleOrNull) double? hourlyRate,
    @JsonKey(fromJson: _toDoubleOrNull) double? averageRating,
    int? totalReviews,
    int? totalSessionsHosted,
    int? totalSessionsAttended,
    List<String>? teachingSpecializations,
    String? educationLevel,
    int? yearsOfExperience,
    String? tier,
    String? tierColour,
  });
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
    _$ProfileImpl _value,
    $Res Function(_$ProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bio = freezed,
    Object? phoneNumber = freezed,
    Object? timezone = freezed,
    Object? languagePreference = freezed,
    Object? kycStatus = freezed,
    Object? idVerified = null,
    Object? isAvailable = null,
    Object? subjects = freezed,
    Object? hourlyRate = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? totalSessionsHosted = freezed,
    Object? totalSessionsAttended = freezed,
    Object? teachingSpecializations = freezed,
    Object? educationLevel = freezed,
    Object? yearsOfExperience = freezed,
    Object? tier = freezed,
    Object? tierColour = freezed,
  }) {
    return _then(
      _$ProfileImpl(
        bio:
            freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        timezone:
            freezed == timezone
                ? _value.timezone
                : timezone // ignore: cast_nullable_to_non_nullable
                    as String?,
        languagePreference:
            freezed == languagePreference
                ? _value.languagePreference
                : languagePreference // ignore: cast_nullable_to_non_nullable
                    as String?,
        kycStatus:
            freezed == kycStatus
                ? _value.kycStatus
                : kycStatus // ignore: cast_nullable_to_non_nullable
                    as String?,
        idVerified:
            null == idVerified
                ? _value.idVerified
                : idVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
        isAvailable:
            null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                    as bool,
        subjects:
            freezed == subjects
                ? _value._subjects
                : subjects // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        hourlyRate:
            freezed == hourlyRate
                ? _value.hourlyRate
                : hourlyRate // ignore: cast_nullable_to_non_nullable
                    as double?,
        averageRating:
            freezed == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                    as double?,
        totalReviews:
            freezed == totalReviews
                ? _value.totalReviews
                : totalReviews // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSessionsHosted:
            freezed == totalSessionsHosted
                ? _value.totalSessionsHosted
                : totalSessionsHosted // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSessionsAttended:
            freezed == totalSessionsAttended
                ? _value.totalSessionsAttended
                : totalSessionsAttended // ignore: cast_nullable_to_non_nullable
                    as int?,
        teachingSpecializations:
            freezed == teachingSpecializations
                ? _value._teachingSpecializations
                : teachingSpecializations // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        educationLevel:
            freezed == educationLevel
                ? _value.educationLevel
                : educationLevel // ignore: cast_nullable_to_non_nullable
                    as String?,
        yearsOfExperience:
            freezed == yearsOfExperience
                ? _value.yearsOfExperience
                : yearsOfExperience // ignore: cast_nullable_to_non_nullable
                    as int?,
        tier:
            freezed == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                    as String?,
        tierColour:
            freezed == tierColour
                ? _value.tierColour
                : tierColour // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl({
    this.bio,
    this.phoneNumber,
    this.timezone,
    this.languagePreference,
    this.kycStatus,
    this.idVerified = false,
    this.isAvailable = false,
    final List<String>? subjects,
    @JsonKey(fromJson: _toDoubleOrNull) this.hourlyRate,
    @JsonKey(fromJson: _toDoubleOrNull) this.averageRating,
    this.totalReviews,
    this.totalSessionsHosted,
    this.totalSessionsAttended,
    final List<String>? teachingSpecializations,
    this.educationLevel,
    this.yearsOfExperience,
    this.tier,
    this.tierColour,
  }) : _subjects = subjects,
       _teachingSpecializations = teachingSpecializations;

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final String? bio;
  @override
  final String? phoneNumber;
  @override
  final String? timezone;
  @override
  final String? languagePreference;
  @override
  final String? kycStatus;
  @override
  @JsonKey()
  final bool idVerified;
  @override
  @JsonKey()
  final bool isAvailable;
  final List<String>? _subjects;
  @override
  List<String>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: _toDoubleOrNull)
  final double? hourlyRate;
  @override
  @JsonKey(fromJson: _toDoubleOrNull)
  final double? averageRating;
  @override
  final int? totalReviews;
  @override
  final int? totalSessionsHosted;
  @override
  final int? totalSessionsAttended;
  final List<String>? _teachingSpecializations;
  @override
  List<String>? get teachingSpecializations {
    final value = _teachingSpecializations;
    if (value == null) return null;
    if (_teachingSpecializations is EqualUnmodifiableListView)
      return _teachingSpecializations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? educationLevel;
  @override
  final int? yearsOfExperience;
  @override
  final String? tier;
  @override
  final String? tierColour;

  @override
  String toString() {
    return 'Profile(bio: $bio, phoneNumber: $phoneNumber, timezone: $timezone, languagePreference: $languagePreference, kycStatus: $kycStatus, idVerified: $idVerified, isAvailable: $isAvailable, subjects: $subjects, hourlyRate: $hourlyRate, averageRating: $averageRating, totalReviews: $totalReviews, totalSessionsHosted: $totalSessionsHosted, totalSessionsAttended: $totalSessionsAttended, teachingSpecializations: $teachingSpecializations, educationLevel: $educationLevel, yearsOfExperience: $yearsOfExperience, tier: $tier, tierColour: $tierColour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.languagePreference, languagePreference) ||
                other.languagePreference == languagePreference) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            (identical(other.idVerified, idVerified) ||
                other.idVerified == idVerified) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.hourlyRate, hourlyRate) ||
                other.hourlyRate == hourlyRate) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.totalSessionsHosted, totalSessionsHosted) ||
                other.totalSessionsHosted == totalSessionsHosted) &&
            (identical(other.totalSessionsAttended, totalSessionsAttended) ||
                other.totalSessionsAttended == totalSessionsAttended) &&
            const DeepCollectionEquality().equals(
              other._teachingSpecializations,
              _teachingSpecializations,
            ) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.tierColour, tierColour) ||
                other.tierColour == tierColour));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    bio,
    phoneNumber,
    timezone,
    languagePreference,
    kycStatus,
    idVerified,
    isAvailable,
    const DeepCollectionEquality().hash(_subjects),
    hourlyRate,
    averageRating,
    totalReviews,
    totalSessionsHosted,
    totalSessionsAttended,
    const DeepCollectionEquality().hash(_teachingSpecializations),
    educationLevel,
    yearsOfExperience,
    tier,
    tierColour,
  );

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile({
    final String? bio,
    final String? phoneNumber,
    final String? timezone,
    final String? languagePreference,
    final String? kycStatus,
    final bool idVerified,
    final bool isAvailable,
    final List<String>? subjects,
    @JsonKey(fromJson: _toDoubleOrNull) final double? hourlyRate,
    @JsonKey(fromJson: _toDoubleOrNull) final double? averageRating,
    final int? totalReviews,
    final int? totalSessionsHosted,
    final int? totalSessionsAttended,
    final List<String>? teachingSpecializations,
    final String? educationLevel,
    final int? yearsOfExperience,
    final String? tier,
    final String? tierColour,
  }) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  String? get bio;
  @override
  String? get phoneNumber;
  @override
  String? get timezone;
  @override
  String? get languagePreference;
  @override
  String? get kycStatus;
  @override
  bool get idVerified;
  @override
  bool get isAvailable;
  @override
  List<String>? get subjects;
  @override
  @JsonKey(fromJson: _toDoubleOrNull)
  double? get hourlyRate;
  @override
  @JsonKey(fromJson: _toDoubleOrNull)
  double? get averageRating;
  @override
  int? get totalReviews;
  @override
  int? get totalSessionsHosted;
  @override
  int? get totalSessionsAttended;
  @override
  List<String>? get teachingSpecializations;
  @override
  String? get educationLevel;
  @override
  int? get yearsOfExperience;
  @override
  String? get tier;
  @override
  String? get tierColour;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserWallet _$UserWalletFromJson(Map<String, dynamic> json) {
  return _UserWallet.fromJson(json);
}

/// @nodoc
mixin _$UserWallet {
  @JsonKey(fromJson: _toDouble)
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get escrowBalance => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this UserWallet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWalletCopyWith<UserWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletCopyWith<$Res> {
  factory $UserWalletCopyWith(
    UserWallet value,
    $Res Function(UserWallet) then,
  ) = _$UserWalletCopyWithImpl<$Res, UserWallet>;
  @useResult
  $Res call({
    @JsonKey(fromJson: _toDouble) double balance,
    @JsonKey(fromJson: _toDouble) double escrowBalance,
    String currency,
  });
}

/// @nodoc
class _$UserWalletCopyWithImpl<$Res, $Val extends UserWallet>
    implements $UserWalletCopyWith<$Res> {
  _$UserWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? escrowBalance = null,
    Object? currency = null,
  }) {
    return _then(
      _value.copyWith(
            balance:
                null == balance
                    ? _value.balance
                    : balance // ignore: cast_nullable_to_non_nullable
                        as double,
            escrowBalance:
                null == escrowBalance
                    ? _value.escrowBalance
                    : escrowBalance // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserWalletImplCopyWith<$Res>
    implements $UserWalletCopyWith<$Res> {
  factory _$$UserWalletImplCopyWith(
    _$UserWalletImpl value,
    $Res Function(_$UserWalletImpl) then,
  ) = __$$UserWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(fromJson: _toDouble) double balance,
    @JsonKey(fromJson: _toDouble) double escrowBalance,
    String currency,
  });
}

/// @nodoc
class __$$UserWalletImplCopyWithImpl<$Res>
    extends _$UserWalletCopyWithImpl<$Res, _$UserWalletImpl>
    implements _$$UserWalletImplCopyWith<$Res> {
  __$$UserWalletImplCopyWithImpl(
    _$UserWalletImpl _value,
    $Res Function(_$UserWalletImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserWallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? escrowBalance = null,
    Object? currency = null,
  }) {
    return _then(
      _$UserWalletImpl(
        balance:
            null == balance
                ? _value.balance
                : balance // ignore: cast_nullable_to_non_nullable
                    as double,
        escrowBalance:
            null == escrowBalance
                ? _value.escrowBalance
                : escrowBalance // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserWalletImpl implements _UserWallet {
  const _$UserWalletImpl({
    @JsonKey(fromJson: _toDouble) required this.balance,
    @JsonKey(fromJson: _toDouble) required this.escrowBalance,
    required this.currency,
  });

  factory _$UserWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWalletImplFromJson(json);

  @override
  @JsonKey(fromJson: _toDouble)
  final double balance;
  @override
  @JsonKey(fromJson: _toDouble)
  final double escrowBalance;
  @override
  final String currency;

  @override
  String toString() {
    return 'UserWallet(balance: $balance, escrowBalance: $escrowBalance, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWalletImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.escrowBalance, escrowBalance) ||
                other.escrowBalance == escrowBalance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, balance, escrowBalance, currency);

  /// Create a copy of UserWallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWalletImplCopyWith<_$UserWalletImpl> get copyWith =>
      __$$UserWalletImplCopyWithImpl<_$UserWalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWalletImplToJson(this);
  }
}

abstract class _UserWallet implements UserWallet {
  const factory _UserWallet({
    @JsonKey(fromJson: _toDouble) required final double balance,
    @JsonKey(fromJson: _toDouble) required final double escrowBalance,
    required final String currency,
  }) = _$UserWalletImpl;

  factory _UserWallet.fromJson(Map<String, dynamic> json) =
      _$UserWalletImpl.fromJson;

  @override
  @JsonKey(fromJson: _toDouble)
  double get balance;
  @override
  @JsonKey(fromJson: _toDouble)
  double get escrowBalance;
  @override
  String get currency;

  /// Create a copy of UserWallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWalletImplCopyWith<_$UserWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
