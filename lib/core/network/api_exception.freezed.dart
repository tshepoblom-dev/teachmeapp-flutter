// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
    AppException value,
    $Res Function(AppException) then,
  ) = _$AppExceptionCopyWithImpl<$Res, AppException>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NetworkExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$NetworkExceptionImplCopyWith(
    _$NetworkExceptionImpl value,
    $Res Function(_$NetworkExceptionImpl) then,
  ) = __$$NetworkExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NetworkExceptionImpl>
    implements _$$NetworkExceptionImplCopyWith<$Res> {
  __$$NetworkExceptionImplCopyWithImpl(
    _$NetworkExceptionImpl _value,
    $Res Function(_$NetworkExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NetworkExceptionImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NetworkExceptionImpl implements NetworkException {
  const _$NetworkExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.network(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkExceptionImplCopyWith<_$NetworkExceptionImpl> get copyWith =>
      __$$NetworkExceptionImplCopyWithImpl<_$NetworkExceptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkException implements AppException {
  const factory NetworkException(final String message) = _$NetworkExceptionImpl;

  @override
  String get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkExceptionImplCopyWith<_$NetworkExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$UnauthenticatedExceptionImplCopyWith(
    _$UnauthenticatedExceptionImpl value,
    $Res Function(_$UnauthenticatedExceptionImpl) then,
  ) = __$$UnauthenticatedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthenticatedExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnauthenticatedExceptionImpl>
    implements _$$UnauthenticatedExceptionImplCopyWith<$Res> {
  __$$UnauthenticatedExceptionImplCopyWithImpl(
    _$UnauthenticatedExceptionImpl _value,
    $Res Function(_$UnauthenticatedExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UnauthenticatedExceptionImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UnauthenticatedExceptionImpl implements UnauthenticatedException {
  const _$UnauthenticatedExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.unauthenticated(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthenticatedExceptionImplCopyWith<_$UnauthenticatedExceptionImpl>
  get copyWith => __$$UnauthenticatedExceptionImplCopyWithImpl<
    _$UnauthenticatedExceptionImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) {
    return unauthenticated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) {
    return unauthenticated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedException implements AppException {
  const factory UnauthenticatedException(final String message) =
      _$UnauthenticatedExceptionImpl;

  @override
  String get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthenticatedExceptionImplCopyWith<_$UnauthenticatedExceptionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ForbiddenExceptionImplCopyWith(
    _$ForbiddenExceptionImpl value,
    $Res Function(_$ForbiddenExceptionImpl) then,
  ) = __$$ForbiddenExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String? code, Map<String, dynamic>? extra});
}

/// @nodoc
class __$$ForbiddenExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ForbiddenExceptionImpl>
    implements _$$ForbiddenExceptionImplCopyWith<$Res> {
  __$$ForbiddenExceptionImplCopyWithImpl(
    _$ForbiddenExceptionImpl _value,
    $Res Function(_$ForbiddenExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
    Object? extra = freezed,
  }) {
    return _then(
      _$ForbiddenExceptionImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
        code:
            freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String?,
        extra:
            freezed == extra
                ? _value._extra
                : extra // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc

class _$ForbiddenExceptionImpl implements ForbiddenException {
  const _$ForbiddenExceptionImpl(
    this.message, {
    this.code,
    final Map<String, dynamic>? extra,
  }) : _extra = extra;

  @override
  final String message;
  @override
  final String? code;
  final Map<String, dynamic>? _extra;
  @override
  Map<String, dynamic>? get extra {
    final value = _extra;
    if (value == null) return null;
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AppException.forbidden(message: $message, code: $code, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._extra, _extra));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    code,
    const DeepCollectionEquality().hash(_extra),
  );

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenExceptionImplCopyWith<_$ForbiddenExceptionImpl> get copyWith =>
      __$$ForbiddenExceptionImplCopyWithImpl<_$ForbiddenExceptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) {
    return forbidden(message, code, extra);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) {
    return forbidden?.call(message, code, extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message, code, extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class ForbiddenException implements AppException {
  const factory ForbiddenException(
    final String message, {
    final String? code,
    final Map<String, dynamic>? extra,
  }) = _$ForbiddenExceptionImpl;

  @override
  String get message;
  String? get code;
  Map<String, dynamic>? get extra;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForbiddenExceptionImplCopyWith<_$ForbiddenExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ValidationExceptionImplCopyWith(
    _$ValidationExceptionImpl value,
    $Res Function(_$ValidationExceptionImpl) then,
  ) = __$$ValidationExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Map<String, List<String>> errors});
}

/// @nodoc
class __$$ValidationExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ValidationExceptionImpl>
    implements _$$ValidationExceptionImplCopyWith<$Res> {
  __$$ValidationExceptionImplCopyWithImpl(
    _$ValidationExceptionImpl _value,
    $Res Function(_$ValidationExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? errors = null}) {
    return _then(
      _$ValidationExceptionImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
        null == errors
            ? _value._errors
            : errors // ignore: cast_nullable_to_non_nullable
                as Map<String, List<String>>,
      ),
    );
  }
}

/// @nodoc

class _$ValidationExceptionImpl implements ValidationException {
  const _$ValidationExceptionImpl(
    this.message,
    final Map<String, List<String>> errors,
  ) : _errors = errors;

  @override
  final String message;
  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'AppException.validation(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_errors),
  );

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationExceptionImplCopyWith<_$ValidationExceptionImpl> get copyWith =>
      __$$ValidationExceptionImplCopyWithImpl<_$ValidationExceptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) {
    return validation(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) {
    return validation?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class ValidationException implements AppException {
  const factory ValidationException(
    final String message,
    final Map<String, List<String>> errors,
  ) = _$ValidationExceptionImpl;

  @override
  String get message;
  Map<String, List<String>> get errors;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationExceptionImplCopyWith<_$ValidationExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$NotFoundExceptionImplCopyWith(
    _$NotFoundExceptionImpl value,
    $Res Function(_$NotFoundExceptionImpl) then,
  ) = __$$NotFoundExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$NotFoundExceptionImpl>
    implements _$$NotFoundExceptionImplCopyWith<$Res> {
  __$$NotFoundExceptionImplCopyWithImpl(
    _$NotFoundExceptionImpl _value,
    $Res Function(_$NotFoundExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$NotFoundExceptionImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$NotFoundExceptionImpl implements NotFoundException {
  const _$NotFoundExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundExceptionImplCopyWith<_$NotFoundExceptionImpl> get copyWith =>
      __$$NotFoundExceptionImplCopyWithImpl<_$NotFoundExceptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundException implements AppException {
  const factory NotFoundException(final String message) =
      _$NotFoundExceptionImpl;

  @override
  String get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundExceptionImplCopyWith<_$NotFoundExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ServerExceptionImplCopyWith(
    _$ServerExceptionImpl value,
    $Res Function(_$ServerExceptionImpl) then,
  ) = __$$ServerExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ServerExceptionImpl>
    implements _$$ServerExceptionImplCopyWith<$Res> {
  __$$ServerExceptionImplCopyWithImpl(
    _$ServerExceptionImpl _value,
    $Res Function(_$ServerExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ServerExceptionImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ServerExceptionImpl implements ServerException {
  const _$ServerExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<_$ServerExceptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerException implements AppException {
  const factory ServerException(final String message) = _$ServerExceptionImpl;

  @override
  String get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$UnknownExceptionImplCopyWith(
    _$UnknownExceptionImpl value,
    $Res Function(_$UnknownExceptionImpl) then,
  ) = __$$UnknownExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnknownExceptionImpl>
    implements _$$UnknownExceptionImplCopyWith<$Res> {
  __$$UnknownExceptionImplCopyWithImpl(
    _$UnknownExceptionImpl _value,
    $Res Function(_$UnknownExceptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UnknownExceptionImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$UnknownExceptionImpl implements UnknownException {
  const _$UnknownExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownExceptionImplCopyWith<_$UnknownExceptionImpl> get copyWith =>
      __$$UnknownExceptionImplCopyWithImpl<_$UnknownExceptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) unauthenticated,
    required TResult Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )
    forbidden,
    required TResult Function(String message, Map<String, List<String>> errors)
    validation,
    required TResult Function(String message) notFound,
    required TResult Function(String message) server,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? unauthenticated,
    TResult? Function(
      String message,
      String? code,
      Map<String, dynamic>? extra,
    )?
    forbidden,
    TResult? Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? server,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? unauthenticated,
    TResult Function(String message, String? code, Map<String, dynamic>? extra)?
    forbidden,
    TResult Function(String message, Map<String, List<String>> errors)?
    validation,
    TResult Function(String message)? notFound,
    TResult Function(String message)? server,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkException value) network,
    required TResult Function(UnauthenticatedException value) unauthenticated,
    required TResult Function(ForbiddenException value) forbidden,
    required TResult Function(ValidationException value) validation,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(ServerException value) server,
    required TResult Function(UnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkException value)? network,
    TResult? Function(UnauthenticatedException value)? unauthenticated,
    TResult? Function(ForbiddenException value)? forbidden,
    TResult? Function(ValidationException value)? validation,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(ServerException value)? server,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkException value)? network,
    TResult Function(UnauthenticatedException value)? unauthenticated,
    TResult Function(ForbiddenException value)? forbidden,
    TResult Function(ValidationException value)? validation,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(ServerException value)? server,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownException implements AppException {
  const factory UnknownException(final String message) = _$UnknownExceptionImpl;

  @override
  String get message;

  /// Create a copy of AppException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownExceptionImplCopyWith<_$UnknownExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
