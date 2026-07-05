// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewerRef _$ReviewerRefFromJson(Map<String, dynamic> json) {
  return _ReviewerRef.fromJson(json);
}

/// @nodoc
mixin _$ReviewerRef {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ReviewerRef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewerRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewerRefCopyWith<ReviewerRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewerRefCopyWith<$Res> {
  factory $ReviewerRefCopyWith(
    ReviewerRef value,
    $Res Function(ReviewerRef) then,
  ) = _$ReviewerRefCopyWithImpl<$Res, ReviewerRef>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ReviewerRefCopyWithImpl<$Res, $Val extends ReviewerRef>
    implements $ReviewerRefCopyWith<$Res> {
  _$ReviewerRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewerRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewerRefImplCopyWith<$Res>
    implements $ReviewerRefCopyWith<$Res> {
  factory _$$ReviewerRefImplCopyWith(
    _$ReviewerRefImpl value,
    $Res Function(_$ReviewerRefImpl) then,
  ) = __$$ReviewerRefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ReviewerRefImplCopyWithImpl<$Res>
    extends _$ReviewerRefCopyWithImpl<$Res, _$ReviewerRefImpl>
    implements _$$ReviewerRefImplCopyWith<$Res> {
  __$$ReviewerRefImplCopyWithImpl(
    _$ReviewerRefImpl _value,
    $Res Function(_$ReviewerRefImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewerRef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$ReviewerRefImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewerRefImpl implements _ReviewerRef {
  const _$ReviewerRefImpl({required this.id, required this.name});

  factory _$ReviewerRefImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewerRefImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ReviewerRef(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewerRefImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ReviewerRef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewerRefImplCopyWith<_$ReviewerRefImpl> get copyWith =>
      __$$ReviewerRefImplCopyWithImpl<_$ReviewerRefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewerRefImplToJson(this);
  }
}

abstract class _ReviewerRef implements ReviewerRef {
  const factory _ReviewerRef({
    required final int id,
    required final String name,
  }) = _$ReviewerRefImpl;

  factory _ReviewerRef.fromJson(Map<String, dynamic> json) =
      _$ReviewerRefImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of ReviewerRef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewerRefImplCopyWith<_$ReviewerRefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  int get id => throw _privateConstructorUsedError;
  int get bookingId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  ReviewerRef? get reviewer => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call({
    int id,
    int bookingId,
    int rating,
    String? comment,
    List<String> tags,
    bool isVisible,
    DateTime? reviewedAt,
    ReviewerRef? reviewer,
  });

  $ReviewerRefCopyWith<$Res>? get reviewer;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? tags = null,
    Object? isVisible = null,
    Object? reviewedAt = freezed,
    Object? reviewer = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            bookingId:
                null == bookingId
                    ? _value.bookingId
                    : bookingId // ignore: cast_nullable_to_non_nullable
                        as int,
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
            isVisible:
                null == isVisible
                    ? _value.isVisible
                    : isVisible // ignore: cast_nullable_to_non_nullable
                        as bool,
            reviewedAt:
                freezed == reviewedAt
                    ? _value.reviewedAt
                    : reviewedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            reviewer:
                freezed == reviewer
                    ? _value.reviewer
                    : reviewer // ignore: cast_nullable_to_non_nullable
                        as ReviewerRef?,
          )
          as $Val,
    );
  }

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewerRefCopyWith<$Res>? get reviewer {
    if (_value.reviewer == null) {
      return null;
    }

    return $ReviewerRefCopyWith<$Res>(_value.reviewer!, (value) {
      return _then(_value.copyWith(reviewer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
    _$ReviewImpl value,
    $Res Function(_$ReviewImpl) then,
  ) = __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int bookingId,
    int rating,
    String? comment,
    List<String> tags,
    bool isVisible,
    DateTime? reviewedAt,
    ReviewerRef? reviewer,
  });

  @override
  $ReviewerRefCopyWith<$Res>? get reviewer;
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
    _$ReviewImpl _value,
    $Res Function(_$ReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? tags = null,
    Object? isVisible = null,
    Object? reviewedAt = freezed,
    Object? reviewer = freezed,
  }) {
    return _then(
      _$ReviewImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        bookingId:
            null == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                    as int,
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
        isVisible:
            null == isVisible
                ? _value.isVisible
                : isVisible // ignore: cast_nullable_to_non_nullable
                    as bool,
        reviewedAt:
            freezed == reviewedAt
                ? _value.reviewedAt
                : reviewedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        reviewer:
            freezed == reviewer
                ? _value.reviewer
                : reviewer // ignore: cast_nullable_to_non_nullable
                    as ReviewerRef?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl({
    required this.id,
    required this.bookingId,
    required this.rating,
    this.comment,
    final List<String> tags = const [],
    required this.isVisible,
    this.reviewedAt,
    this.reviewer,
  }) : _tags = tags;

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final int id;
  @override
  final int bookingId;
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
  final bool isVisible;
  @override
  final DateTime? reviewedAt;
  @override
  final ReviewerRef? reviewer;

  @override
  String toString() {
    return 'Review(id: $id, bookingId: $bookingId, rating: $rating, comment: $comment, tags: $tags, isVisible: $isVisible, reviewedAt: $reviewedAt, reviewer: $reviewer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    bookingId,
    rating,
    comment,
    const DeepCollectionEquality().hash(_tags),
    isVisible,
    reviewedAt,
    reviewer,
  );

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(this);
  }
}

abstract class _Review implements Review {
  const factory _Review({
    required final int id,
    required final int bookingId,
    required final int rating,
    final String? comment,
    final List<String> tags,
    required final bool isVisible,
    final DateTime? reviewedAt,
    final ReviewerRef? reviewer,
  }) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  int get id;
  @override
  int get bookingId;
  @override
  int get rating;
  @override
  String? get comment;
  @override
  List<String> get tags;
  @override
  bool get isVisible;
  @override
  DateTime? get reviewedAt;
  @override
  ReviewerRef? get reviewer;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
