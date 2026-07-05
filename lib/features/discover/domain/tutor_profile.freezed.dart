// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutor_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SubjectDetailRef _$SubjectDetailRefFromJson(Map<String, dynamic> json) {
  return _SubjectDetailRef.fromJson(json);
}

/// @nodoc
mixin _$SubjectDetailRef {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get faculty => throw _privateConstructorUsedError;

  /// Serializes this SubjectDetailRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectDetailRefCopyWith<SubjectDetailRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectDetailRefCopyWith<$Res> {
  factory $SubjectDetailRefCopyWith(
    SubjectDetailRef value,
    $Res Function(SubjectDetailRef) then,
  ) = _$SubjectDetailRefCopyWithImpl<$Res, SubjectDetailRef>;
  @useResult
  $Res call({int id, String name, String? code, String? faculty});
}

/// @nodoc
class _$SubjectDetailRefCopyWithImpl<$Res, $Val extends SubjectDetailRef>
    implements $SubjectDetailRefCopyWith<$Res> {
  _$SubjectDetailRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = freezed,
    Object? faculty = freezed,
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
            code:
                freezed == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String?,
            faculty:
                freezed == faculty
                    ? _value.faculty
                    : faculty // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubjectDetailRefImplCopyWith<$Res>
    implements $SubjectDetailRefCopyWith<$Res> {
  factory _$$SubjectDetailRefImplCopyWith(
    _$SubjectDetailRefImpl value,
    $Res Function(_$SubjectDetailRefImpl) then,
  ) = __$$SubjectDetailRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? code, String? faculty});
}

/// @nodoc
class __$$SubjectDetailRefImplCopyWithImpl<$Res>
    extends _$SubjectDetailRefCopyWithImpl<$Res, _$SubjectDetailRefImpl>
    implements _$$SubjectDetailRefImplCopyWith<$Res> {
  __$$SubjectDetailRefImplCopyWithImpl(
    _$SubjectDetailRefImpl _value,
    $Res Function(_$SubjectDetailRefImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = freezed,
    Object? faculty = freezed,
  }) {
    return _then(
      _$SubjectDetailRefImpl(
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
        code:
            freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String?,
        faculty:
            freezed == faculty
                ? _value.faculty
                : faculty // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectDetailRefImpl implements _SubjectDetailRef {
  const _$SubjectDetailRefImpl({
    required this.id,
    required this.name,
    this.code,
    this.faculty,
  });

  factory _$SubjectDetailRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectDetailRefImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? code;
  @override
  final String? faculty;

  @override
  String toString() {
    return 'SubjectDetailRef(id: $id, name: $name, code: $code, faculty: $faculty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectDetailRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.faculty, faculty) || other.faculty == faculty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, faculty);

  /// Create a copy of SubjectDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectDetailRefImplCopyWith<_$SubjectDetailRefImpl> get copyWith =>
      __$$SubjectDetailRefImplCopyWithImpl<_$SubjectDetailRefImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectDetailRefImplToJson(this);
  }
}

abstract class _SubjectDetailRef implements SubjectDetailRef {
  const factory _SubjectDetailRef({
    required final int id,
    required final String name,
    final String? code,
    final String? faculty,
  }) = _$SubjectDetailRefImpl;

  factory _SubjectDetailRef.fromJson(Map<String, dynamic> json) =
      _$SubjectDetailRefImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get code;
  @override
  String? get faculty;

  /// Create a copy of SubjectDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectDetailRefImplCopyWith<_$SubjectDetailRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InstitutionDetailRef _$InstitutionDetailRefFromJson(Map<String, dynamic> json) {
  return _InstitutionDetailRef.fromJson(json);
}

/// @nodoc
mixin _$InstitutionDetailRef {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get abbreviation => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this InstitutionDetailRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstitutionDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstitutionDetailRefCopyWith<InstitutionDetailRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionDetailRefCopyWith<$Res> {
  factory $InstitutionDetailRefCopyWith(
    InstitutionDetailRef value,
    $Res Function(InstitutionDetailRef) then,
  ) = _$InstitutionDetailRefCopyWithImpl<$Res, InstitutionDetailRef>;
  @useResult
  $Res call({int id, String name, String? abbreviation, String? type});
}

/// @nodoc
class _$InstitutionDetailRefCopyWithImpl<
  $Res,
  $Val extends InstitutionDetailRef
>
    implements $InstitutionDetailRefCopyWith<$Res> {
  _$InstitutionDetailRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstitutionDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? abbreviation = freezed,
    Object? type = freezed,
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
            abbreviation:
                freezed == abbreviation
                    ? _value.abbreviation
                    : abbreviation // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InstitutionDetailRefImplCopyWith<$Res>
    implements $InstitutionDetailRefCopyWith<$Res> {
  factory _$$InstitutionDetailRefImplCopyWith(
    _$InstitutionDetailRefImpl value,
    $Res Function(_$InstitutionDetailRefImpl) then,
  ) = __$$InstitutionDetailRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? abbreviation, String? type});
}

/// @nodoc
class __$$InstitutionDetailRefImplCopyWithImpl<$Res>
    extends _$InstitutionDetailRefCopyWithImpl<$Res, _$InstitutionDetailRefImpl>
    implements _$$InstitutionDetailRefImplCopyWith<$Res> {
  __$$InstitutionDetailRefImplCopyWithImpl(
    _$InstitutionDetailRefImpl _value,
    $Res Function(_$InstitutionDetailRefImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstitutionDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? abbreviation = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _$InstitutionDetailRefImpl(
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
        abbreviation:
            freezed == abbreviation
                ? _value.abbreviation
                : abbreviation // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutionDetailRefImpl implements _InstitutionDetailRef {
  const _$InstitutionDetailRefImpl({
    required this.id,
    required this.name,
    this.abbreviation,
    this.type,
  });

  factory _$InstitutionDetailRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionDetailRefImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? abbreviation;
  @override
  final String? type;

  @override
  String toString() {
    return 'InstitutionDetailRef(id: $id, name: $name, abbreviation: $abbreviation, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionDetailRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, abbreviation, type);

  /// Create a copy of InstitutionDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutionDetailRefImplCopyWith<_$InstitutionDetailRefImpl>
  get copyWith =>
      __$$InstitutionDetailRefImplCopyWithImpl<_$InstitutionDetailRefImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionDetailRefImplToJson(this);
  }
}

abstract class _InstitutionDetailRef implements InstitutionDetailRef {
  const factory _InstitutionDetailRef({
    required final int id,
    required final String name,
    final String? abbreviation,
    final String? type,
  }) = _$InstitutionDetailRefImpl;

  factory _InstitutionDetailRef.fromJson(Map<String, dynamic> json) =
      _$InstitutionDetailRefImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get abbreviation;
  @override
  String? get type;

  /// Create a copy of InstitutionDetailRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstitutionDetailRefImplCopyWith<_$InstitutionDetailRefImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TutorProfile _$TutorProfileFromJson(Map<String, dynamic> json) {
  return _TutorProfile.fromJson(json);
}

/// @nodoc
mixin _$TutorProfile {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  List<SubjectDetailRef> get subjects => throw _privateConstructorUsedError;
  List<InstitutionDetailRef> get institutions =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get hourlyRate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get averageRating => throw _privateConstructorUsedError;
  int get totalReviews => throw _privateConstructorUsedError;
  int get totalSessions => throw _privateConstructorUsedError;
  String? get educationLevel => throw _privateConstructorUsedError;
  int? get yearsOfExperience => throw _privateConstructorUsedError;
  List<String> get teachingSpecializations =>
      throw _privateConstructorUsedError;
  String? get tier => throw _privateConstructorUsedError;
  String? get tierColour => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this TutorProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TutorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TutorProfileCopyWith<TutorProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorProfileCopyWith<$Res> {
  factory $TutorProfileCopyWith(
    TutorProfile value,
    $Res Function(TutorProfile) then,
  ) = _$TutorProfileCopyWithImpl<$Res, TutorProfile>;
  @useResult
  $Res call({
    int id,
    String name,
    String? bio,
    List<SubjectDetailRef> subjects,
    List<InstitutionDetailRef> institutions,
    @JsonKey(fromJson: _toDouble) double hourlyRate,
    @JsonKey(fromJson: _toDouble) double averageRating,
    int totalReviews,
    int totalSessions,
    String? educationLevel,
    int? yearsOfExperience,
    List<String> teachingSpecializations,
    String? tier,
    String? tierColour,
    bool isAvailable,
    String? avatarUrl,
  });
}

/// @nodoc
class _$TutorProfileCopyWithImpl<$Res, $Val extends TutorProfile>
    implements $TutorProfileCopyWith<$Res> {
  _$TutorProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TutorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bio = freezed,
    Object? subjects = null,
    Object? institutions = null,
    Object? hourlyRate = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? totalSessions = null,
    Object? educationLevel = freezed,
    Object? yearsOfExperience = freezed,
    Object? teachingSpecializations = null,
    Object? tier = freezed,
    Object? tierColour = freezed,
    Object? isAvailable = null,
    Object? avatarUrl = freezed,
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
            bio:
                freezed == bio
                    ? _value.bio
                    : bio // ignore: cast_nullable_to_non_nullable
                        as String?,
            subjects:
                null == subjects
                    ? _value.subjects
                    : subjects // ignore: cast_nullable_to_non_nullable
                        as List<SubjectDetailRef>,
            institutions:
                null == institutions
                    ? _value.institutions
                    : institutions // ignore: cast_nullable_to_non_nullable
                        as List<InstitutionDetailRef>,
            hourlyRate:
                null == hourlyRate
                    ? _value.hourlyRate
                    : hourlyRate // ignore: cast_nullable_to_non_nullable
                        as double,
            averageRating:
                null == averageRating
                    ? _value.averageRating
                    : averageRating // ignore: cast_nullable_to_non_nullable
                        as double,
            totalReviews:
                null == totalReviews
                    ? _value.totalReviews
                    : totalReviews // ignore: cast_nullable_to_non_nullable
                        as int,
            totalSessions:
                null == totalSessions
                    ? _value.totalSessions
                    : totalSessions // ignore: cast_nullable_to_non_nullable
                        as int,
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
            teachingSpecializations:
                null == teachingSpecializations
                    ? _value.teachingSpecializations
                    : teachingSpecializations // ignore: cast_nullable_to_non_nullable
                        as List<String>,
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
            isAvailable:
                null == isAvailable
                    ? _value.isAvailable
                    : isAvailable // ignore: cast_nullable_to_non_nullable
                        as bool,
            avatarUrl:
                freezed == avatarUrl
                    ? _value.avatarUrl
                    : avatarUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TutorProfileImplCopyWith<$Res>
    implements $TutorProfileCopyWith<$Res> {
  factory _$$TutorProfileImplCopyWith(
    _$TutorProfileImpl value,
    $Res Function(_$TutorProfileImpl) then,
  ) = __$$TutorProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? bio,
    List<SubjectDetailRef> subjects,
    List<InstitutionDetailRef> institutions,
    @JsonKey(fromJson: _toDouble) double hourlyRate,
    @JsonKey(fromJson: _toDouble) double averageRating,
    int totalReviews,
    int totalSessions,
    String? educationLevel,
    int? yearsOfExperience,
    List<String> teachingSpecializations,
    String? tier,
    String? tierColour,
    bool isAvailable,
    String? avatarUrl,
  });
}

/// @nodoc
class __$$TutorProfileImplCopyWithImpl<$Res>
    extends _$TutorProfileCopyWithImpl<$Res, _$TutorProfileImpl>
    implements _$$TutorProfileImplCopyWith<$Res> {
  __$$TutorProfileImplCopyWithImpl(
    _$TutorProfileImpl _value,
    $Res Function(_$TutorProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bio = freezed,
    Object? subjects = null,
    Object? institutions = null,
    Object? hourlyRate = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? totalSessions = null,
    Object? educationLevel = freezed,
    Object? yearsOfExperience = freezed,
    Object? teachingSpecializations = null,
    Object? tier = freezed,
    Object? tierColour = freezed,
    Object? isAvailable = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _$TutorProfileImpl(
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
        bio:
            freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                    as String?,
        subjects:
            null == subjects
                ? _value._subjects
                : subjects // ignore: cast_nullable_to_non_nullable
                    as List<SubjectDetailRef>,
        institutions:
            null == institutions
                ? _value._institutions
                : institutions // ignore: cast_nullable_to_non_nullable
                    as List<InstitutionDetailRef>,
        hourlyRate:
            null == hourlyRate
                ? _value.hourlyRate
                : hourlyRate // ignore: cast_nullable_to_non_nullable
                    as double,
        averageRating:
            null == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                    as double,
        totalReviews:
            null == totalReviews
                ? _value.totalReviews
                : totalReviews // ignore: cast_nullable_to_non_nullable
                    as int,
        totalSessions:
            null == totalSessions
                ? _value.totalSessions
                : totalSessions // ignore: cast_nullable_to_non_nullable
                    as int,
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
        teachingSpecializations:
            null == teachingSpecializations
                ? _value._teachingSpecializations
                : teachingSpecializations // ignore: cast_nullable_to_non_nullable
                    as List<String>,
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
        isAvailable:
            null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                    as bool,
        avatarUrl:
            freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorProfileImpl implements _TutorProfile {
  const _$TutorProfileImpl({
    required this.id,
    required this.name,
    this.bio,
    final List<SubjectDetailRef> subjects = const [],
    final List<InstitutionDetailRef> institutions = const [],
    @JsonKey(fromJson: _toDouble) required this.hourlyRate,
    @JsonKey(fromJson: _toDouble) required this.averageRating,
    required this.totalReviews,
    required this.totalSessions,
    this.educationLevel,
    this.yearsOfExperience,
    final List<String> teachingSpecializations = const [],
    this.tier,
    this.tierColour,
    required this.isAvailable,
    this.avatarUrl,
  }) : _subjects = subjects,
       _institutions = institutions,
       _teachingSpecializations = teachingSpecializations;

  factory _$TutorProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorProfileImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? bio;
  final List<SubjectDetailRef> _subjects;
  @override
  @JsonKey()
  List<SubjectDetailRef> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<InstitutionDetailRef> _institutions;
  @override
  @JsonKey()
  List<InstitutionDetailRef> get institutions {
    if (_institutions is EqualUnmodifiableListView) return _institutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institutions);
  }

  @override
  @JsonKey(fromJson: _toDouble)
  final double hourlyRate;
  @override
  @JsonKey(fromJson: _toDouble)
  final double averageRating;
  @override
  final int totalReviews;
  @override
  final int totalSessions;
  @override
  final String? educationLevel;
  @override
  final int? yearsOfExperience;
  final List<String> _teachingSpecializations;
  @override
  @JsonKey()
  List<String> get teachingSpecializations {
    if (_teachingSpecializations is EqualUnmodifiableListView)
      return _teachingSpecializations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachingSpecializations);
  }

  @override
  final String? tier;
  @override
  final String? tierColour;
  @override
  final bool isAvailable;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'TutorProfile(id: $id, name: $name, bio: $bio, subjects: $subjects, institutions: $institutions, hourlyRate: $hourlyRate, averageRating: $averageRating, totalReviews: $totalReviews, totalSessions: $totalSessions, educationLevel: $educationLevel, yearsOfExperience: $yearsOfExperience, teachingSpecializations: $teachingSpecializations, tier: $tier, tierColour: $tierColour, isAvailable: $isAvailable, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality().equals(
              other._institutions,
              _institutions,
            ) &&
            (identical(other.hourlyRate, hourlyRate) ||
                other.hourlyRate == hourlyRate) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.yearsOfExperience, yearsOfExperience) ||
                other.yearsOfExperience == yearsOfExperience) &&
            const DeepCollectionEquality().equals(
              other._teachingSpecializations,
              _teachingSpecializations,
            ) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.tierColour, tierColour) ||
                other.tierColour == tierColour) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    bio,
    const DeepCollectionEquality().hash(_subjects),
    const DeepCollectionEquality().hash(_institutions),
    hourlyRate,
    averageRating,
    totalReviews,
    totalSessions,
    educationLevel,
    yearsOfExperience,
    const DeepCollectionEquality().hash(_teachingSpecializations),
    tier,
    tierColour,
    isAvailable,
    avatarUrl,
  );

  /// Create a copy of TutorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorProfileImplCopyWith<_$TutorProfileImpl> get copyWith =>
      __$$TutorProfileImplCopyWithImpl<_$TutorProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorProfileImplToJson(this);
  }
}

abstract class _TutorProfile implements TutorProfile {
  const factory _TutorProfile({
    required final int id,
    required final String name,
    final String? bio,
    final List<SubjectDetailRef> subjects,
    final List<InstitutionDetailRef> institutions,
    @JsonKey(fromJson: _toDouble) required final double hourlyRate,
    @JsonKey(fromJson: _toDouble) required final double averageRating,
    required final int totalReviews,
    required final int totalSessions,
    final String? educationLevel,
    final int? yearsOfExperience,
    final List<String> teachingSpecializations,
    final String? tier,
    final String? tierColour,
    required final bool isAvailable,
    final String? avatarUrl,
  }) = _$TutorProfileImpl;

  factory _TutorProfile.fromJson(Map<String, dynamic> json) =
      _$TutorProfileImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get bio;
  @override
  List<SubjectDetailRef> get subjects;
  @override
  List<InstitutionDetailRef> get institutions;
  @override
  @JsonKey(fromJson: _toDouble)
  double get hourlyRate;
  @override
  @JsonKey(fromJson: _toDouble)
  double get averageRating;
  @override
  int get totalReviews;
  @override
  int get totalSessions;
  @override
  String? get educationLevel;
  @override
  int? get yearsOfExperience;
  @override
  List<String> get teachingSpecializations;
  @override
  String? get tier;
  @override
  String? get tierColour;
  @override
  bool get isAvailable;
  @override
  String? get avatarUrl;

  /// Create a copy of TutorProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TutorProfileImplCopyWith<_$TutorProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorReviewSummary _$TutorReviewSummaryFromJson(Map<String, dynamic> json) {
  return _TutorReviewSummary.fromJson(json);
}

/// @nodoc
mixin _$TutorReviewSummary {
  String get reviewer => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Serializes this TutorReviewSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TutorReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TutorReviewSummaryCopyWith<TutorReviewSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorReviewSummaryCopyWith<$Res> {
  factory $TutorReviewSummaryCopyWith(
    TutorReviewSummary value,
    $Res Function(TutorReviewSummary) then,
  ) = _$TutorReviewSummaryCopyWithImpl<$Res, TutorReviewSummary>;
  @useResult
  $Res call({
    String reviewer,
    int rating,
    String? comment,
    List<String> tags,
    String date,
  });
}

/// @nodoc
class _$TutorReviewSummaryCopyWithImpl<$Res, $Val extends TutorReviewSummary>
    implements $TutorReviewSummaryCopyWith<$Res> {
  _$TutorReviewSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TutorReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewer = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? tags = null,
    Object? date = null,
  }) {
    return _then(
      _value.copyWith(
            reviewer:
                null == reviewer
                    ? _value.reviewer
                    : reviewer // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as int,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            tags:
                null == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TutorReviewSummaryImplCopyWith<$Res>
    implements $TutorReviewSummaryCopyWith<$Res> {
  factory _$$TutorReviewSummaryImplCopyWith(
    _$TutorReviewSummaryImpl value,
    $Res Function(_$TutorReviewSummaryImpl) then,
  ) = __$$TutorReviewSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String reviewer,
    int rating,
    String? comment,
    List<String> tags,
    String date,
  });
}

/// @nodoc
class __$$TutorReviewSummaryImplCopyWithImpl<$Res>
    extends _$TutorReviewSummaryCopyWithImpl<$Res, _$TutorReviewSummaryImpl>
    implements _$$TutorReviewSummaryImplCopyWith<$Res> {
  __$$TutorReviewSummaryImplCopyWithImpl(
    _$TutorReviewSummaryImpl _value,
    $Res Function(_$TutorReviewSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewer = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? tags = null,
    Object? date = null,
  }) {
    return _then(
      _$TutorReviewSummaryImpl(
        reviewer:
            null == reviewer
                ? _value.reviewer
                : reviewer // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as int,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        tags:
            null == tags
                ? _value._tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorReviewSummaryImpl implements _TutorReviewSummary {
  const _$TutorReviewSummaryImpl({
    required this.reviewer,
    required this.rating,
    this.comment,
    final List<String> tags = const [],
    required this.date,
  }) : _tags = tags;

  factory _$TutorReviewSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorReviewSummaryImplFromJson(json);

  @override
  final String reviewer;
  @override
  final int rating;
  @override
  final String? comment;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String date;

  @override
  String toString() {
    return 'TutorReviewSummary(reviewer: $reviewer, rating: $rating, comment: $comment, tags: $tags, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorReviewSummaryImpl &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    reviewer,
    rating,
    comment,
    const DeepCollectionEquality().hash(_tags),
    date,
  );

  /// Create a copy of TutorReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorReviewSummaryImplCopyWith<_$TutorReviewSummaryImpl> get copyWith =>
      __$$TutorReviewSummaryImplCopyWithImpl<_$TutorReviewSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorReviewSummaryImplToJson(this);
  }
}

abstract class _TutorReviewSummary implements TutorReviewSummary {
  const factory _TutorReviewSummary({
    required final String reviewer,
    required final int rating,
    final String? comment,
    final List<String> tags,
    required final String date,
  }) = _$TutorReviewSummaryImpl;

  factory _TutorReviewSummary.fromJson(Map<String, dynamic> json) =
      _$TutorReviewSummaryImpl.fromJson;

  @override
  String get reviewer;
  @override
  int get rating;
  @override
  String? get comment;
  @override
  List<String> get tags;
  @override
  String get date;

  /// Create a copy of TutorReviewSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TutorReviewSummaryImplCopyWith<_$TutorReviewSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorProfileDetail _$TutorProfileDetailFromJson(Map<String, dynamic> json) {
  return _TutorProfileDetail.fromJson(json);
}

/// @nodoc
mixin _$TutorProfileDetail {
  TutorProfile get tutor => throw _privateConstructorUsedError;
  List<AvailabilityWindow> get availability =>
      throw _privateConstructorUsedError;
  List<TutorReviewSummary> get reviews => throw _privateConstructorUsedError;

  /// Serializes this TutorProfileDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TutorProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TutorProfileDetailCopyWith<TutorProfileDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorProfileDetailCopyWith<$Res> {
  factory $TutorProfileDetailCopyWith(
    TutorProfileDetail value,
    $Res Function(TutorProfileDetail) then,
  ) = _$TutorProfileDetailCopyWithImpl<$Res, TutorProfileDetail>;
  @useResult
  $Res call({
    TutorProfile tutor,
    List<AvailabilityWindow> availability,
    List<TutorReviewSummary> reviews,
  });

  $TutorProfileCopyWith<$Res> get tutor;
}

/// @nodoc
class _$TutorProfileDetailCopyWithImpl<$Res, $Val extends TutorProfileDetail>
    implements $TutorProfileDetailCopyWith<$Res> {
  _$TutorProfileDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TutorProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutor = null,
    Object? availability = null,
    Object? reviews = null,
  }) {
    return _then(
      _value.copyWith(
            tutor:
                null == tutor
                    ? _value.tutor
                    : tutor // ignore: cast_nullable_to_non_nullable
                        as TutorProfile,
            availability:
                null == availability
                    ? _value.availability
                    : availability // ignore: cast_nullable_to_non_nullable
                        as List<AvailabilityWindow>,
            reviews:
                null == reviews
                    ? _value.reviews
                    : reviews // ignore: cast_nullable_to_non_nullable
                        as List<TutorReviewSummary>,
          )
          as $Val,
    );
  }

  /// Create a copy of TutorProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TutorProfileCopyWith<$Res> get tutor {
    return $TutorProfileCopyWith<$Res>(_value.tutor, (value) {
      return _then(_value.copyWith(tutor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TutorProfileDetailImplCopyWith<$Res>
    implements $TutorProfileDetailCopyWith<$Res> {
  factory _$$TutorProfileDetailImplCopyWith(
    _$TutorProfileDetailImpl value,
    $Res Function(_$TutorProfileDetailImpl) then,
  ) = __$$TutorProfileDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TutorProfile tutor,
    List<AvailabilityWindow> availability,
    List<TutorReviewSummary> reviews,
  });

  @override
  $TutorProfileCopyWith<$Res> get tutor;
}

/// @nodoc
class __$$TutorProfileDetailImplCopyWithImpl<$Res>
    extends _$TutorProfileDetailCopyWithImpl<$Res, _$TutorProfileDetailImpl>
    implements _$$TutorProfileDetailImplCopyWith<$Res> {
  __$$TutorProfileDetailImplCopyWithImpl(
    _$TutorProfileDetailImpl _value,
    $Res Function(_$TutorProfileDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutor = null,
    Object? availability = null,
    Object? reviews = null,
  }) {
    return _then(
      _$TutorProfileDetailImpl(
        tutor:
            null == tutor
                ? _value.tutor
                : tutor // ignore: cast_nullable_to_non_nullable
                    as TutorProfile,
        availability:
            null == availability
                ? _value._availability
                : availability // ignore: cast_nullable_to_non_nullable
                    as List<AvailabilityWindow>,
        reviews:
            null == reviews
                ? _value._reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                    as List<TutorReviewSummary>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorProfileDetailImpl implements _TutorProfileDetail {
  const _$TutorProfileDetailImpl({
    required this.tutor,
    final List<AvailabilityWindow> availability = const [],
    final List<TutorReviewSummary> reviews = const [],
  }) : _availability = availability,
       _reviews = reviews;

  factory _$TutorProfileDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorProfileDetailImplFromJson(json);

  @override
  final TutorProfile tutor;
  final List<AvailabilityWindow> _availability;
  @override
  @JsonKey()
  List<AvailabilityWindow> get availability {
    if (_availability is EqualUnmodifiableListView) return _availability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availability);
  }

  final List<TutorReviewSummary> _reviews;
  @override
  @JsonKey()
  List<TutorReviewSummary> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'TutorProfileDetail(tutor: $tutor, availability: $availability, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorProfileDetailImpl &&
            (identical(other.tutor, tutor) || other.tutor == tutor) &&
            const DeepCollectionEquality().equals(
              other._availability,
              _availability,
            ) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tutor,
    const DeepCollectionEquality().hash(_availability),
    const DeepCollectionEquality().hash(_reviews),
  );

  /// Create a copy of TutorProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorProfileDetailImplCopyWith<_$TutorProfileDetailImpl> get copyWith =>
      __$$TutorProfileDetailImplCopyWithImpl<_$TutorProfileDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorProfileDetailImplToJson(this);
  }
}

abstract class _TutorProfileDetail implements TutorProfileDetail {
  const factory _TutorProfileDetail({
    required final TutorProfile tutor,
    final List<AvailabilityWindow> availability,
    final List<TutorReviewSummary> reviews,
  }) = _$TutorProfileDetailImpl;

  factory _TutorProfileDetail.fromJson(Map<String, dynamic> json) =
      _$TutorProfileDetailImpl.fromJson;

  @override
  TutorProfile get tutor;
  @override
  List<AvailabilityWindow> get availability;
  @override
  List<TutorReviewSummary> get reviews;

  /// Create a copy of TutorProfileDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TutorProfileDetailImplCopyWith<_$TutorProfileDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
