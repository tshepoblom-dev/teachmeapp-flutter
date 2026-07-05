// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

KycApplication _$KycApplicationFromJson(Map<String, dynamic> json) {
  return _KycApplication.fromJson(json);
}

/// @nodoc
mixin _$KycApplication {
  int get id => throw _privateConstructorUsedError;
  String get applicationType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get submittedAt => throw _privateConstructorUsedError;
  String? get reviewedAt => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  int? get resubmissionCount => throw _privateConstructorUsedError;
  List<KycDocument> get documents => throw _privateConstructorUsedError;
  List<String> get requiredDocuments => throw _privateConstructorUsedError;
  List<String> get missingDocuments => throw _privateConstructorUsedError;
  bool? get canSubmit => throw _privateConstructorUsedError;

  /// Serializes this KycApplication to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycApplication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycApplicationCopyWith<KycApplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycApplicationCopyWith<$Res> {
  factory $KycApplicationCopyWith(
    KycApplication value,
    $Res Function(KycApplication) then,
  ) = _$KycApplicationCopyWithImpl<$Res, KycApplication>;
  @useResult
  $Res call({
    int id,
    String applicationType,
    String status,
    String? submittedAt,
    String? reviewedAt,
    String? rejectionReason,
    int? resubmissionCount,
    List<KycDocument> documents,
    List<String> requiredDocuments,
    List<String> missingDocuments,
    bool? canSubmit,
  });
}

/// @nodoc
class _$KycApplicationCopyWithImpl<$Res, $Val extends KycApplication>
    implements $KycApplicationCopyWith<$Res> {
  _$KycApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycApplication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? applicationType = null,
    Object? status = null,
    Object? submittedAt = freezed,
    Object? reviewedAt = freezed,
    Object? rejectionReason = freezed,
    Object? resubmissionCount = freezed,
    Object? documents = null,
    Object? requiredDocuments = null,
    Object? missingDocuments = null,
    Object? canSubmit = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            applicationType:
                null == applicationType
                    ? _value.applicationType
                    : applicationType // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            submittedAt:
                freezed == submittedAt
                    ? _value.submittedAt
                    : submittedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            reviewedAt:
                freezed == reviewedAt
                    ? _value.reviewedAt
                    : reviewedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            rejectionReason:
                freezed == rejectionReason
                    ? _value.rejectionReason
                    : rejectionReason // ignore: cast_nullable_to_non_nullable
                        as String?,
            resubmissionCount:
                freezed == resubmissionCount
                    ? _value.resubmissionCount
                    : resubmissionCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            documents:
                null == documents
                    ? _value.documents
                    : documents // ignore: cast_nullable_to_non_nullable
                        as List<KycDocument>,
            requiredDocuments:
                null == requiredDocuments
                    ? _value.requiredDocuments
                    : requiredDocuments // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            missingDocuments:
                null == missingDocuments
                    ? _value.missingDocuments
                    : missingDocuments // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            canSubmit:
                freezed == canSubmit
                    ? _value.canSubmit
                    : canSubmit // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KycApplicationImplCopyWith<$Res>
    implements $KycApplicationCopyWith<$Res> {
  factory _$$KycApplicationImplCopyWith(
    _$KycApplicationImpl value,
    $Res Function(_$KycApplicationImpl) then,
  ) = __$$KycApplicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String applicationType,
    String status,
    String? submittedAt,
    String? reviewedAt,
    String? rejectionReason,
    int? resubmissionCount,
    List<KycDocument> documents,
    List<String> requiredDocuments,
    List<String> missingDocuments,
    bool? canSubmit,
  });
}

/// @nodoc
class __$$KycApplicationImplCopyWithImpl<$Res>
    extends _$KycApplicationCopyWithImpl<$Res, _$KycApplicationImpl>
    implements _$$KycApplicationImplCopyWith<$Res> {
  __$$KycApplicationImplCopyWithImpl(
    _$KycApplicationImpl _value,
    $Res Function(_$KycApplicationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KycApplication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? applicationType = null,
    Object? status = null,
    Object? submittedAt = freezed,
    Object? reviewedAt = freezed,
    Object? rejectionReason = freezed,
    Object? resubmissionCount = freezed,
    Object? documents = null,
    Object? requiredDocuments = null,
    Object? missingDocuments = null,
    Object? canSubmit = freezed,
  }) {
    return _then(
      _$KycApplicationImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        applicationType:
            null == applicationType
                ? _value.applicationType
                : applicationType // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        submittedAt:
            freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        reviewedAt:
            freezed == reviewedAt
                ? _value.reviewedAt
                : reviewedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        rejectionReason:
            freezed == rejectionReason
                ? _value.rejectionReason
                : rejectionReason // ignore: cast_nullable_to_non_nullable
                    as String?,
        resubmissionCount:
            freezed == resubmissionCount
                ? _value.resubmissionCount
                : resubmissionCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        documents:
            null == documents
                ? _value._documents
                : documents // ignore: cast_nullable_to_non_nullable
                    as List<KycDocument>,
        requiredDocuments:
            null == requiredDocuments
                ? _value._requiredDocuments
                : requiredDocuments // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        missingDocuments:
            null == missingDocuments
                ? _value._missingDocuments
                : missingDocuments // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        canSubmit:
            freezed == canSubmit
                ? _value.canSubmit
                : canSubmit // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KycApplicationImpl implements _KycApplication {
  const _$KycApplicationImpl({
    required this.id,
    required this.applicationType,
    required this.status,
    this.submittedAt,
    this.reviewedAt,
    this.rejectionReason,
    this.resubmissionCount,
    final List<KycDocument> documents = const [],
    final List<String> requiredDocuments = const [],
    final List<String> missingDocuments = const [],
    this.canSubmit,
  }) : _documents = documents,
       _requiredDocuments = requiredDocuments,
       _missingDocuments = missingDocuments;

  factory _$KycApplicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycApplicationImplFromJson(json);

  @override
  final int id;
  @override
  final String applicationType;
  @override
  final String status;
  @override
  final String? submittedAt;
  @override
  final String? reviewedAt;
  @override
  final String? rejectionReason;
  @override
  final int? resubmissionCount;
  final List<KycDocument> _documents;
  @override
  @JsonKey()
  List<KycDocument> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  final List<String> _requiredDocuments;
  @override
  @JsonKey()
  List<String> get requiredDocuments {
    if (_requiredDocuments is EqualUnmodifiableListView)
      return _requiredDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredDocuments);
  }

  final List<String> _missingDocuments;
  @override
  @JsonKey()
  List<String> get missingDocuments {
    if (_missingDocuments is EqualUnmodifiableListView)
      return _missingDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missingDocuments);
  }

  @override
  final bool? canSubmit;

  @override
  String toString() {
    return 'KycApplication(id: $id, applicationType: $applicationType, status: $status, submittedAt: $submittedAt, reviewedAt: $reviewedAt, rejectionReason: $rejectionReason, resubmissionCount: $resubmissionCount, documents: $documents, requiredDocuments: $requiredDocuments, missingDocuments: $missingDocuments, canSubmit: $canSubmit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycApplicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.applicationType, applicationType) ||
                other.applicationType == applicationType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.resubmissionCount, resubmissionCount) ||
                other.resubmissionCount == resubmissionCount) &&
            const DeepCollectionEquality().equals(
              other._documents,
              _documents,
            ) &&
            const DeepCollectionEquality().equals(
              other._requiredDocuments,
              _requiredDocuments,
            ) &&
            const DeepCollectionEquality().equals(
              other._missingDocuments,
              _missingDocuments,
            ) &&
            (identical(other.canSubmit, canSubmit) ||
                other.canSubmit == canSubmit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    applicationType,
    status,
    submittedAt,
    reviewedAt,
    rejectionReason,
    resubmissionCount,
    const DeepCollectionEquality().hash(_documents),
    const DeepCollectionEquality().hash(_requiredDocuments),
    const DeepCollectionEquality().hash(_missingDocuments),
    canSubmit,
  );

  /// Create a copy of KycApplication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycApplicationImplCopyWith<_$KycApplicationImpl> get copyWith =>
      __$$KycApplicationImplCopyWithImpl<_$KycApplicationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$KycApplicationImplToJson(this);
  }
}

abstract class _KycApplication implements KycApplication {
  const factory _KycApplication({
    required final int id,
    required final String applicationType,
    required final String status,
    final String? submittedAt,
    final String? reviewedAt,
    final String? rejectionReason,
    final int? resubmissionCount,
    final List<KycDocument> documents,
    final List<String> requiredDocuments,
    final List<String> missingDocuments,
    final bool? canSubmit,
  }) = _$KycApplicationImpl;

  factory _KycApplication.fromJson(Map<String, dynamic> json) =
      _$KycApplicationImpl.fromJson;

  @override
  int get id;
  @override
  String get applicationType;
  @override
  String get status;
  @override
  String? get submittedAt;
  @override
  String? get reviewedAt;
  @override
  String? get rejectionReason;
  @override
  int? get resubmissionCount;
  @override
  List<KycDocument> get documents;
  @override
  List<String> get requiredDocuments;
  @override
  List<String> get missingDocuments;
  @override
  bool? get canSubmit;

  /// Create a copy of KycApplication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycApplicationImplCopyWith<_$KycApplicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KycStatusSummary _$KycStatusSummaryFromJson(Map<String, dynamic> json) {
  return _KycStatusSummary.fromJson(json);
}

/// @nodoc
mixin _$KycStatusSummary {
  String get kycStatus => throw _privateConstructorUsedError;
  List<String> get requiredDocs => throw _privateConstructorUsedError;
  List<String> get missingDocs => throw _privateConstructorUsedError;
  KycApplication? get application => throw _privateConstructorUsedError;

  /// Serializes this KycStatusSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycStatusSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStatusSummaryCopyWith<KycStatusSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStatusSummaryCopyWith<$Res> {
  factory $KycStatusSummaryCopyWith(
    KycStatusSummary value,
    $Res Function(KycStatusSummary) then,
  ) = _$KycStatusSummaryCopyWithImpl<$Res, KycStatusSummary>;
  @useResult
  $Res call({
    String kycStatus,
    List<String> requiredDocs,
    List<String> missingDocs,
    KycApplication? application,
  });

  $KycApplicationCopyWith<$Res>? get application;
}

/// @nodoc
class _$KycStatusSummaryCopyWithImpl<$Res, $Val extends KycStatusSummary>
    implements $KycStatusSummaryCopyWith<$Res> {
  _$KycStatusSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycStatusSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycStatus = null,
    Object? requiredDocs = null,
    Object? missingDocs = null,
    Object? application = freezed,
  }) {
    return _then(
      _value.copyWith(
            kycStatus:
                null == kycStatus
                    ? _value.kycStatus
                    : kycStatus // ignore: cast_nullable_to_non_nullable
                        as String,
            requiredDocs:
                null == requiredDocs
                    ? _value.requiredDocs
                    : requiredDocs // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            missingDocs:
                null == missingDocs
                    ? _value.missingDocs
                    : missingDocs // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            application:
                freezed == application
                    ? _value.application
                    : application // ignore: cast_nullable_to_non_nullable
                        as KycApplication?,
          )
          as $Val,
    );
  }

  /// Create a copy of KycStatusSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KycApplicationCopyWith<$Res>? get application {
    if (_value.application == null) {
      return null;
    }

    return $KycApplicationCopyWith<$Res>(_value.application!, (value) {
      return _then(_value.copyWith(application: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycStatusSummaryImplCopyWith<$Res>
    implements $KycStatusSummaryCopyWith<$Res> {
  factory _$$KycStatusSummaryImplCopyWith(
    _$KycStatusSummaryImpl value,
    $Res Function(_$KycStatusSummaryImpl) then,
  ) = __$$KycStatusSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String kycStatus,
    List<String> requiredDocs,
    List<String> missingDocs,
    KycApplication? application,
  });

  @override
  $KycApplicationCopyWith<$Res>? get application;
}

/// @nodoc
class __$$KycStatusSummaryImplCopyWithImpl<$Res>
    extends _$KycStatusSummaryCopyWithImpl<$Res, _$KycStatusSummaryImpl>
    implements _$$KycStatusSummaryImplCopyWith<$Res> {
  __$$KycStatusSummaryImplCopyWithImpl(
    _$KycStatusSummaryImpl _value,
    $Res Function(_$KycStatusSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KycStatusSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycStatus = null,
    Object? requiredDocs = null,
    Object? missingDocs = null,
    Object? application = freezed,
  }) {
    return _then(
      _$KycStatusSummaryImpl(
        kycStatus:
            null == kycStatus
                ? _value.kycStatus
                : kycStatus // ignore: cast_nullable_to_non_nullable
                    as String,
        requiredDocs:
            null == requiredDocs
                ? _value._requiredDocs
                : requiredDocs // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        missingDocs:
            null == missingDocs
                ? _value._missingDocs
                : missingDocs // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        application:
            freezed == application
                ? _value.application
                : application // ignore: cast_nullable_to_non_nullable
                    as KycApplication?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStatusSummaryImpl implements _KycStatusSummary {
  const _$KycStatusSummaryImpl({
    required this.kycStatus,
    final List<String> requiredDocs = const [],
    final List<String> missingDocs = const [],
    this.application,
  }) : _requiredDocs = requiredDocs,
       _missingDocs = missingDocs;

  factory _$KycStatusSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStatusSummaryImplFromJson(json);

  @override
  final String kycStatus;
  final List<String> _requiredDocs;
  @override
  @JsonKey()
  List<String> get requiredDocs {
    if (_requiredDocs is EqualUnmodifiableListView) return _requiredDocs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredDocs);
  }

  final List<String> _missingDocs;
  @override
  @JsonKey()
  List<String> get missingDocs {
    if (_missingDocs is EqualUnmodifiableListView) return _missingDocs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missingDocs);
  }

  @override
  final KycApplication? application;

  @override
  String toString() {
    return 'KycStatusSummary(kycStatus: $kycStatus, requiredDocs: $requiredDocs, missingDocs: $missingDocs, application: $application)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStatusSummaryImpl &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            const DeepCollectionEquality().equals(
              other._requiredDocs,
              _requiredDocs,
            ) &&
            const DeepCollectionEquality().equals(
              other._missingDocs,
              _missingDocs,
            ) &&
            (identical(other.application, application) ||
                other.application == application));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    kycStatus,
    const DeepCollectionEquality().hash(_requiredDocs),
    const DeepCollectionEquality().hash(_missingDocs),
    application,
  );

  /// Create a copy of KycStatusSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStatusSummaryImplCopyWith<_$KycStatusSummaryImpl> get copyWith =>
      __$$KycStatusSummaryImplCopyWithImpl<_$KycStatusSummaryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$KycStatusSummaryImplToJson(this);
  }
}

abstract class _KycStatusSummary implements KycStatusSummary {
  const factory _KycStatusSummary({
    required final String kycStatus,
    final List<String> requiredDocs,
    final List<String> missingDocs,
    final KycApplication? application,
  }) = _$KycStatusSummaryImpl;

  factory _KycStatusSummary.fromJson(Map<String, dynamic> json) =
      _$KycStatusSummaryImpl.fromJson;

  @override
  String get kycStatus;
  @override
  List<String> get requiredDocs;
  @override
  List<String> get missingDocs;
  @override
  KycApplication? get application;

  /// Create a copy of KycStatusSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStatusSummaryImplCopyWith<_$KycStatusSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
