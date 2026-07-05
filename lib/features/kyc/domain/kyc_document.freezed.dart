// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

KycDocument _$KycDocumentFromJson(Map<String, dynamic> json) {
  return _KycDocument.fromJson(json);
}

/// @nodoc
mixin _$KycDocument {
  int get id => throw _privateConstructorUsedError;
  String get documentType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  int? get fileSizeKb => throw _privateConstructorUsedError;
  String? get verifiedAt => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this KycDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycDocumentCopyWith<KycDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycDocumentCopyWith<$Res> {
  factory $KycDocumentCopyWith(
    KycDocument value,
    $Res Function(KycDocument) then,
  ) = _$KycDocumentCopyWithImpl<$Res, KycDocument>;
  @useResult
  $Res call({
    int id,
    String documentType,
    String status,
    String? mimeType,
    int? fileSizeKb,
    String? verifiedAt,
    String? rejectionReason,
    String? uploadedAt,
  });
}

/// @nodoc
class _$KycDocumentCopyWithImpl<$Res, $Val extends KycDocument>
    implements $KycDocumentCopyWith<$Res> {
  _$KycDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentType = null,
    Object? status = null,
    Object? mimeType = freezed,
    Object? fileSizeKb = freezed,
    Object? verifiedAt = freezed,
    Object? rejectionReason = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            documentType:
                null == documentType
                    ? _value.documentType
                    : documentType // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            mimeType:
                freezed == mimeType
                    ? _value.mimeType
                    : mimeType // ignore: cast_nullable_to_non_nullable
                        as String?,
            fileSizeKb:
                freezed == fileSizeKb
                    ? _value.fileSizeKb
                    : fileSizeKb // ignore: cast_nullable_to_non_nullable
                        as int?,
            verifiedAt:
                freezed == verifiedAt
                    ? _value.verifiedAt
                    : verifiedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            rejectionReason:
                freezed == rejectionReason
                    ? _value.rejectionReason
                    : rejectionReason // ignore: cast_nullable_to_non_nullable
                        as String?,
            uploadedAt:
                freezed == uploadedAt
                    ? _value.uploadedAt
                    : uploadedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KycDocumentImplCopyWith<$Res>
    implements $KycDocumentCopyWith<$Res> {
  factory _$$KycDocumentImplCopyWith(
    _$KycDocumentImpl value,
    $Res Function(_$KycDocumentImpl) then,
  ) = __$$KycDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String documentType,
    String status,
    String? mimeType,
    int? fileSizeKb,
    String? verifiedAt,
    String? rejectionReason,
    String? uploadedAt,
  });
}

/// @nodoc
class __$$KycDocumentImplCopyWithImpl<$Res>
    extends _$KycDocumentCopyWithImpl<$Res, _$KycDocumentImpl>
    implements _$$KycDocumentImplCopyWith<$Res> {
  __$$KycDocumentImplCopyWithImpl(
    _$KycDocumentImpl _value,
    $Res Function(_$KycDocumentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KycDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentType = null,
    Object? status = null,
    Object? mimeType = freezed,
    Object? fileSizeKb = freezed,
    Object? verifiedAt = freezed,
    Object? rejectionReason = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(
      _$KycDocumentImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        documentType:
            null == documentType
                ? _value.documentType
                : documentType // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        mimeType:
            freezed == mimeType
                ? _value.mimeType
                : mimeType // ignore: cast_nullable_to_non_nullable
                    as String?,
        fileSizeKb:
            freezed == fileSizeKb
                ? _value.fileSizeKb
                : fileSizeKb // ignore: cast_nullable_to_non_nullable
                    as int?,
        verifiedAt:
            freezed == verifiedAt
                ? _value.verifiedAt
                : verifiedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        rejectionReason:
            freezed == rejectionReason
                ? _value.rejectionReason
                : rejectionReason // ignore: cast_nullable_to_non_nullable
                    as String?,
        uploadedAt:
            freezed == uploadedAt
                ? _value.uploadedAt
                : uploadedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KycDocumentImpl implements _KycDocument {
  const _$KycDocumentImpl({
    required this.id,
    required this.documentType,
    required this.status,
    this.mimeType,
    this.fileSizeKb,
    this.verifiedAt,
    this.rejectionReason,
    this.uploadedAt,
  });

  factory _$KycDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycDocumentImplFromJson(json);

  @override
  final int id;
  @override
  final String documentType;
  @override
  final String status;
  @override
  final String? mimeType;
  @override
  final int? fileSizeKb;
  @override
  final String? verifiedAt;
  @override
  final String? rejectionReason;
  @override
  final String? uploadedAt;

  @override
  String toString() {
    return 'KycDocument(id: $id, documentType: $documentType, status: $status, mimeType: $mimeType, fileSizeKb: $fileSizeKb, verifiedAt: $verifiedAt, rejectionReason: $rejectionReason, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileSizeKb, fileSizeKb) ||
                other.fileSizeKb == fileSizeKb) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    documentType,
    status,
    mimeType,
    fileSizeKb,
    verifiedAt,
    rejectionReason,
    uploadedAt,
  );

  /// Create a copy of KycDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycDocumentImplCopyWith<_$KycDocumentImpl> get copyWith =>
      __$$KycDocumentImplCopyWithImpl<_$KycDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycDocumentImplToJson(this);
  }
}

abstract class _KycDocument implements KycDocument {
  const factory _KycDocument({
    required final int id,
    required final String documentType,
    required final String status,
    final String? mimeType,
    final int? fileSizeKb,
    final String? verifiedAt,
    final String? rejectionReason,
    final String? uploadedAt,
  }) = _$KycDocumentImpl;

  factory _KycDocument.fromJson(Map<String, dynamic> json) =
      _$KycDocumentImpl.fromJson;

  @override
  int get id;
  @override
  String get documentType;
  @override
  String get status;
  @override
  String? get mimeType;
  @override
  int? get fileSizeKb;
  @override
  String? get verifiedAt;
  @override
  String? get rejectionReason;
  @override
  String? get uploadedAt;

  /// Create a copy of KycDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycDocumentImplCopyWith<_$KycDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
