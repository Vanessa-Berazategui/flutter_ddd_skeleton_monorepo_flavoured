// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultSuccessImplCopyWith<T, $Res> {
  factory _$$ResultSuccessImplCopyWith(_$ResultSuccessImpl<T> value,
          $Res Function(_$ResultSuccessImpl<T>) then) =
      __$$ResultSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResultSuccessImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultSuccessImpl<T>>
    implements _$$ResultSuccessImplCopyWith<T, $Res> {
  __$$ResultSuccessImplCopyWithImpl(_$ResultSuccessImpl<T> _value,
      $Res Function(_$ResultSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultSuccessImpl<T> implements _ResultSuccess<T> {
  _$ResultSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      __$$ResultSuccessImplCopyWithImpl<T, _$ResultSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> implements Result<T> {
  factory _ResultSuccess(final T data) = _$ResultSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ResultSuccessImplCopyWith<T, _$ResultSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultFailureImplCopyWith<T, $Res> {
  factory _$$ResultFailureImplCopyWith(_$ResultFailureImpl<T> value,
          $Res Function(_$ResultFailureImpl<T>) then) =
      __$$ResultFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ResultFailureImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultFailureImpl<T>>
    implements _$$ResultFailureImplCopyWith<T, $Res> {
  __$$ResultFailureImplCopyWithImpl(_$ResultFailureImpl<T> _value,
      $Res Function(_$ResultFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ResultFailureImpl<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ResultFailureImpl<T> implements _ResultFailure<T> {
  _$ResultFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'Result<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultFailureImpl<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultFailureImplCopyWith<T, _$ResultFailureImpl<T>> get copyWith =>
      __$$ResultFailureImplCopyWithImpl<T, _$ResultFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultSuccess<T> value) success,
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultSuccess<T> value)? success,
    TResult? Function(_ResultFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultSuccess<T> value)? success,
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResultFailure<T> implements Result<T> {
  factory _ResultFailure(final Failure failure) = _$ResultFailureImpl<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ResultFailureImplCopyWith<T, _$ResultFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpected,
    required TResult Function(String message) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object e)? unexpected,
    TResult? Function(String message)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpected,
    TResult Function(String message)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureServer value) server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureServer value)? server,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureServer value)? server,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureUnexpectedImplCopyWith<$Res> {
  factory _$$FailureUnexpectedImplCopyWith(_$FailureUnexpectedImpl value,
          $Res Function(_$FailureUnexpectedImpl) then) =
      __$$FailureUnexpectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$FailureUnexpectedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureUnexpectedImpl>
    implements _$$FailureUnexpectedImplCopyWith<$Res> {
  __$$FailureUnexpectedImplCopyWithImpl(_$FailureUnexpectedImpl _value,
      $Res Function(_$FailureUnexpectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$FailureUnexpectedImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$FailureUnexpectedImpl implements _FailureUnexpected {
  const _$FailureUnexpectedImpl(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'Failure.unexpected(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUnexpectedImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUnexpectedImplCopyWith<_$FailureUnexpectedImpl> get copyWith =>
      __$$FailureUnexpectedImplCopyWithImpl<_$FailureUnexpectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpected,
    required TResult Function(String message) server,
  }) {
    return unexpected(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object e)? unexpected,
    TResult? Function(String message)? server,
  }) {
    return unexpected?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpected,
    TResult Function(String message)? server,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureServer value) server,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureServer value)? server,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _FailureUnexpected implements Failure {
  const factory _FailureUnexpected(final Object e) = _$FailureUnexpectedImpl;

  Object get e;
  @JsonKey(ignore: true)
  _$$FailureUnexpectedImplCopyWith<_$FailureUnexpectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureServerImplCopyWith<$Res> {
  factory _$$FailureServerImplCopyWith(
          _$FailureServerImpl value, $Res Function(_$FailureServerImpl) then) =
      __$$FailureServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureServerImpl>
    implements _$$FailureServerImplCopyWith<$Res> {
  __$$FailureServerImplCopyWithImpl(
      _$FailureServerImpl _value, $Res Function(_$FailureServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureServerImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureServerImpl implements _FailureServer {
  const _$FailureServerImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      __$$FailureServerImplCopyWithImpl<_$FailureServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object e) unexpected,
    required TResult Function(String message) server,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object e)? unexpected,
    TResult? Function(String message)? server,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object e)? unexpected,
    TResult Function(String message)? server,
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
    required TResult Function(_FailureUnexpected value) unexpected,
    required TResult Function(_FailureServer value) server,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureUnexpected value)? unexpected,
    TResult? Function(_FailureServer value)? server,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureUnexpected value)? unexpected,
    TResult Function(_FailureServer value)? server,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _FailureServer implements Failure {
  const factory _FailureServer({required final String message}) =
      _$FailureServerImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
