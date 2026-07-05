// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutor_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SubjectRef _$SubjectRefFromJson(Map<String, dynamic> json) {
  return _SubjectRef.fromJson(json);
}

/// @nodoc
mixin _$SubjectRef {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  /// Serializes this SubjectRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectRefCopyWith<SubjectRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectRefCopyWith<$Res> {
  factory $SubjectRefCopyWith(
    SubjectRef value,
    $Res Function(SubjectRef) then,
  ) = _$SubjectRefCopyWithImpl<$Res, SubjectRef>;
  @useResult
  $Res call({int id, String name, String? code});
}

/// @nodoc
class _$SubjectRefCopyWithImpl<$Res, $Val extends SubjectRef>
    implements $SubjectRefCopyWith<$Res> {
  _$SubjectRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? code = freezed}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubjectRefImplCopyWith<$Res>
    implements $SubjectRefCopyWith<$Res> {
  factory _$$SubjectRefImplCopyWith(
    _$SubjectRefImpl value,
    $Res Function(_$SubjectRefImpl) then,
  ) = __$$SubjectRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? code});
}

/// @nodoc
class __$$SubjectRefImplCopyWithImpl<$Res>
    extends _$SubjectRefCopyWithImpl<$Res, _$SubjectRefImpl>
    implements _$$SubjectRefImplCopyWith<$Res> {
  __$$SubjectRefImplCopyWithImpl(
    _$SubjectRefImpl _value,
    $Res Function(_$SubjectRefImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? code = freezed}) {
    return _then(
      _$SubjectRefImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectRefImpl implements _SubjectRef {
  const _$SubjectRefImpl({required this.id, required this.name, this.code});

  factory _$SubjectRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectRefImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? code;

  @override
  String toString() {
    return 'SubjectRef(id: $id, name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code);

  /// Create a copy of SubjectRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectRefImplCopyWith<_$SubjectRefImpl> get copyWith =>
      __$$SubjectRefImplCopyWithImpl<_$SubjectRefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectRefImplToJson(this);
  }
}

abstract class _SubjectRef implements SubjectRef {
  const factory _SubjectRef({
    required final int id,
    required final String name,
    final String? code,
  }) = _$SubjectRefImpl;

  factory _SubjectRef.fromJson(Map<String, dynamic> json) =
      _$SubjectRefImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get code;

  /// Create a copy of SubjectRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectRefImplCopyWith<_$SubjectRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InstitutionRef _$InstitutionRefFromJson(Map<String, dynamic> json) {
  return _InstitutionRef.fromJson(json);
}

/// @nodoc
mixin _$InstitutionRef {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get abbreviation => throw _privateConstructorUsedError;

  /// Serializes this InstitutionRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstitutionRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstitutionRefCopyWith<InstitutionRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitutionRefCopyWith<$Res> {
  factory $InstitutionRefCopyWith(
    InstitutionRef value,
    $Res Function(InstitutionRef) then,
  ) = _$InstitutionRefCopyWithImpl<$Res, InstitutionRef>;
  @useResult
  $Res call({int id, String name, String? abbreviation});
}

/// @nodoc
class _$InstitutionRefCopyWithImpl<$Res, $Val extends InstitutionRef>
    implements $InstitutionRefCopyWith<$Res> {
  _$InstitutionRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstitutionRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? abbreviation = freezed,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InstitutionRefImplCopyWith<$Res>
    implements $InstitutionRefCopyWith<$Res> {
  factory _$$InstitutionRefImplCopyWith(
    _$InstitutionRefImpl value,
    $Res Function(_$InstitutionRefImpl) then,
  ) = __$$InstitutionRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? abbreviation});
}

/// @nodoc
class __$$InstitutionRefImplCopyWithImpl<$Res>
    extends _$InstitutionRefCopyWithImpl<$Res, _$InstitutionRefImpl>
    implements _$$InstitutionRefImplCopyWith<$Res> {
  __$$InstitutionRefImplCopyWithImpl(
    _$InstitutionRefImpl _value,
    $Res Function(_$InstitutionRefImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InstitutionRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? abbreviation = freezed,
  }) {
    return _then(
      _$InstitutionRefImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitutionRefImpl implements _InstitutionRef {
  const _$InstitutionRefImpl({
    required this.id,
    required this.name,
    this.abbreviation,
  });

  factory _$InstitutionRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstitutionRefImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? abbreviation;

  @override
  String toString() {
    return 'InstitutionRef(id: $id, name: $name, abbreviation: $abbreviation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitutionRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, abbreviation);

  /// Create a copy of InstitutionRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitutionRefImplCopyWith<_$InstitutionRefImpl> get copyWith =>
      __$$InstitutionRefImplCopyWithImpl<_$InstitutionRefImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitutionRefImplToJson(this);
  }
}

abstract class _InstitutionRef implements InstitutionRef {
  const factory _InstitutionRef({
    required final int id,
    required final String name,
    final String? abbreviation,
  }) = _$InstitutionRefImpl;

  factory _InstitutionRef.fromJson(Map<String, dynamic> json) =
      _$InstitutionRefImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get abbreviation;

  /// Create a copy of InstitutionRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstitutionRefImplCopyWith<_$InstitutionRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TutorSummary _$TutorSummaryFromJson(Map<String, dynamic> json) {
  return _TutorSummary.fromJson(json);
}

/// @nodoc
mixin _$TutorSummary {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  List<SubjectRef> get subjects => throw _privateConstructorUsedError;
  List<InstitutionRef> get institutions => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get hourlyRate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get averageRating => throw _privateConstructorUsedError;
  int get totalReviews => throw _privateConstructorUsedError;
  String? get tier => throw _privateConstructorUsedError;
  String? get tierColour => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this TutorSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TutorSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TutorSummaryCopyWith<TutorSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorSummaryCopyWith<$Res> {
  factory $TutorSummaryCopyWith(
    TutorSummary value,
    $Res Function(TutorSummary) then,
  ) = _$TutorSummaryCopyWithImpl<$Res, TutorSummary>;
  @useResult
  $Res call({
    int id,
    String name,
    String? bio,
    List<SubjectRef> subjects,
    List<InstitutionRef> institutions,
    @JsonKey(fromJson: _toDouble) double hourlyRate,
    @JsonKey(fromJson: _toDouble) double averageRating,
    int totalReviews,
    String? tier,
    String? tierColour,
    String? avatarUrl,
  });
}

/// @nodoc
class _$TutorSummaryCopyWithImpl<$Res, $Val extends TutorSummary>
    implements $TutorSummaryCopyWith<$Res> {
  _$TutorSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TutorSummary
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
    Object? tier = freezed,
    Object? tierColour = freezed,
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
                        as List<SubjectRef>,
            institutions:
                null == institutions
                    ? _value.institutions
                    : institutions // ignore: cast_nullable_to_non_nullable
                        as List<InstitutionRef>,
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
abstract class _$$TutorSummaryImplCopyWith<$Res>
    implements $TutorSummaryCopyWith<$Res> {
  factory _$$TutorSummaryImplCopyWith(
    _$TutorSummaryImpl value,
    $Res Function(_$TutorSummaryImpl) then,
  ) = __$$TutorSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? bio,
    List<SubjectRef> subjects,
    List<InstitutionRef> institutions,
    @JsonKey(fromJson: _toDouble) double hourlyRate,
    @JsonKey(fromJson: _toDouble) double averageRating,
    int totalReviews,
    String? tier,
    String? tierColour,
    String? avatarUrl,
  });
}

/// @nodoc
class __$$TutorSummaryImplCopyWithImpl<$Res>
    extends _$TutorSummaryCopyWithImpl<$Res, _$TutorSummaryImpl>
    implements _$$TutorSummaryImplCopyWith<$Res> {
  __$$TutorSummaryImplCopyWithImpl(
    _$TutorSummaryImpl _value,
    $Res Function(_$TutorSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TutorSummary
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
    Object? tier = freezed,
    Object? tierColour = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _$TutorSummaryImpl(
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
                    as List<SubjectRef>,
        institutions:
            null == institutions
                ? _value._institutions
                : institutions // ignore: cast_nullable_to_non_nullable
                    as List<InstitutionRef>,
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
class _$TutorSummaryImpl implements _TutorSummary {
  const _$TutorSummaryImpl({
    required this.id,
    required this.name,
    this.bio,
    final List<SubjectRef> subjects = const [],
    final List<InstitutionRef> institutions = const [],
    @JsonKey(fromJson: _toDouble) required this.hourlyRate,
    @JsonKey(fromJson: _toDouble) required this.averageRating,
    required this.totalReviews,
    this.tier,
    this.tierColour,
    this.avatarUrl,
  }) : _subjects = subjects,
       _institutions = institutions;

  factory _$TutorSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorSummaryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? bio;
  final List<SubjectRef> _subjects;
  @override
  @JsonKey()
  List<SubjectRef> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<InstitutionRef> _institutions;
  @override
  @JsonKey()
  List<InstitutionRef> get institutions {
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
  final String? tier;
  @override
  final String? tierColour;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'TutorSummary(id: $id, name: $name, bio: $bio, subjects: $subjects, institutions: $institutions, hourlyRate: $hourlyRate, averageRating: $averageRating, totalReviews: $totalReviews, tier: $tier, tierColour: $tierColour, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorSummaryImpl &&
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
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.tierColour, tierColour) ||
                other.tierColour == tierColour) &&
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
    tier,
    tierColour,
    avatarUrl,
  );

  /// Create a copy of TutorSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorSummaryImplCopyWith<_$TutorSummaryImpl> get copyWith =>
      __$$TutorSummaryImplCopyWithImpl<_$TutorSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorSummaryImplToJson(this);
  }
}

abstract class _TutorSummary implements TutorSummary {
  const factory _TutorSummary({
    required final int id,
    required final String name,
    final String? bio,
    final List<SubjectRef> subjects,
    final List<InstitutionRef> institutions,
    @JsonKey(fromJson: _toDouble) required final double hourlyRate,
    @JsonKey(fromJson: _toDouble) required final double averageRating,
    required final int totalReviews,
    final String? tier,
    final String? tierColour,
    final String? avatarUrl,
  }) = _$TutorSummaryImpl;

  factory _TutorSummary.fromJson(Map<String, dynamic> json) =
      _$TutorSummaryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get bio;
  @override
  List<SubjectRef> get subjects;
  @override
  List<InstitutionRef> get institutions;
  @override
  @JsonKey(fromJson: _toDouble)
  double get hourlyRate;
  @override
  @JsonKey(fromJson: _toDouble)
  double get averageRating;
  @override
  int get totalReviews;
  @override
  String? get tier;
  @override
  String? get tierColour;
  @override
  String? get avatarUrl;

  /// Create a copy of TutorSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TutorSummaryImplCopyWith<_$TutorSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
