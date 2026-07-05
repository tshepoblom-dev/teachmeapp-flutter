// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DiscoverFilters {
  String? get search => throw _privateConstructorUsedError;
  int? get institutionId => throw _privateConstructorUsedError;
  int? get subjectId => throw _privateConstructorUsedError;
  double? get maxRate => throw _privateConstructorUsedError;
  double? get minRating => throw _privateConstructorUsedError;
  String get sort => throw _privateConstructorUsedError;

  /// Create a copy of DiscoverFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscoverFiltersCopyWith<DiscoverFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverFiltersCopyWith<$Res> {
  factory $DiscoverFiltersCopyWith(
    DiscoverFilters value,
    $Res Function(DiscoverFilters) then,
  ) = _$DiscoverFiltersCopyWithImpl<$Res, DiscoverFilters>;
  @useResult
  $Res call({
    String? search,
    int? institutionId,
    int? subjectId,
    double? maxRate,
    double? minRating,
    String sort,
  });
}

/// @nodoc
class _$DiscoverFiltersCopyWithImpl<$Res, $Val extends DiscoverFilters>
    implements $DiscoverFiltersCopyWith<$Res> {
  _$DiscoverFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscoverFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? institutionId = freezed,
    Object? subjectId = freezed,
    Object? maxRate = freezed,
    Object? minRating = freezed,
    Object? sort = null,
  }) {
    return _then(
      _value.copyWith(
            search:
                freezed == search
                    ? _value.search
                    : search // ignore: cast_nullable_to_non_nullable
                        as String?,
            institutionId:
                freezed == institutionId
                    ? _value.institutionId
                    : institutionId // ignore: cast_nullable_to_non_nullable
                        as int?,
            subjectId:
                freezed == subjectId
                    ? _value.subjectId
                    : subjectId // ignore: cast_nullable_to_non_nullable
                        as int?,
            maxRate:
                freezed == maxRate
                    ? _value.maxRate
                    : maxRate // ignore: cast_nullable_to_non_nullable
                        as double?,
            minRating:
                freezed == minRating
                    ? _value.minRating
                    : minRating // ignore: cast_nullable_to_non_nullable
                        as double?,
            sort:
                null == sort
                    ? _value.sort
                    : sort // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DiscoverFiltersImplCopyWith<$Res>
    implements $DiscoverFiltersCopyWith<$Res> {
  factory _$$DiscoverFiltersImplCopyWith(
    _$DiscoverFiltersImpl value,
    $Res Function(_$DiscoverFiltersImpl) then,
  ) = __$$DiscoverFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? search,
    int? institutionId,
    int? subjectId,
    double? maxRate,
    double? minRating,
    String sort,
  });
}

/// @nodoc
class __$$DiscoverFiltersImplCopyWithImpl<$Res>
    extends _$DiscoverFiltersCopyWithImpl<$Res, _$DiscoverFiltersImpl>
    implements _$$DiscoverFiltersImplCopyWith<$Res> {
  __$$DiscoverFiltersImplCopyWithImpl(
    _$DiscoverFiltersImpl _value,
    $Res Function(_$DiscoverFiltersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscoverFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? institutionId = freezed,
    Object? subjectId = freezed,
    Object? maxRate = freezed,
    Object? minRating = freezed,
    Object? sort = null,
  }) {
    return _then(
      _$DiscoverFiltersImpl(
        search:
            freezed == search
                ? _value.search
                : search // ignore: cast_nullable_to_non_nullable
                    as String?,
        institutionId:
            freezed == institutionId
                ? _value.institutionId
                : institutionId // ignore: cast_nullable_to_non_nullable
                    as int?,
        subjectId:
            freezed == subjectId
                ? _value.subjectId
                : subjectId // ignore: cast_nullable_to_non_nullable
                    as int?,
        maxRate:
            freezed == maxRate
                ? _value.maxRate
                : maxRate // ignore: cast_nullable_to_non_nullable
                    as double?,
        minRating:
            freezed == minRating
                ? _value.minRating
                : minRating // ignore: cast_nullable_to_non_nullable
                    as double?,
        sort:
            null == sort
                ? _value.sort
                : sort // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$DiscoverFiltersImpl implements _DiscoverFilters {
  const _$DiscoverFiltersImpl({
    this.search,
    this.institutionId,
    this.subjectId,
    this.maxRate,
    this.minRating,
    this.sort = 'rating',
  });

  @override
  final String? search;
  @override
  final int? institutionId;
  @override
  final int? subjectId;
  @override
  final double? maxRate;
  @override
  final double? minRating;
  @override
  @JsonKey()
  final String sort;

  @override
  String toString() {
    return 'DiscoverFilters(search: $search, institutionId: $institutionId, subjectId: $subjectId, maxRate: $maxRate, minRating: $minRating, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverFiltersImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.institutionId, institutionId) ||
                other.institutionId == institutionId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.maxRate, maxRate) || other.maxRate == maxRate) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    search,
    institutionId,
    subjectId,
    maxRate,
    minRating,
    sort,
  );

  /// Create a copy of DiscoverFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverFiltersImplCopyWith<_$DiscoverFiltersImpl> get copyWith =>
      __$$DiscoverFiltersImplCopyWithImpl<_$DiscoverFiltersImpl>(
        this,
        _$identity,
      );
}

abstract class _DiscoverFilters implements DiscoverFilters {
  const factory _DiscoverFilters({
    final String? search,
    final int? institutionId,
    final int? subjectId,
    final double? maxRate,
    final double? minRating,
    final String sort,
  }) = _$DiscoverFiltersImpl;

  @override
  String? get search;
  @override
  int? get institutionId;
  @override
  int? get subjectId;
  @override
  double? get maxRate;
  @override
  double? get minRating;
  @override
  String get sort;

  /// Create a copy of DiscoverFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscoverFiltersImplCopyWith<_$DiscoverFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
