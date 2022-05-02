// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instructor_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InstructorFailure {
  int? get errorCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InstructorFailure value) api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InstructorFailure value)? api,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InstructorFailure value)? api,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstructorFailureCopyWith<InstructorFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructorFailureCopyWith<$Res> {
  factory $InstructorFailureCopyWith(
          InstructorFailure value, $Res Function(InstructorFailure) then) =
      _$InstructorFailureCopyWithImpl<$Res>;
  $Res call({int? errorCode, String? message});
}

/// @nodoc
class _$InstructorFailureCopyWithImpl<$Res>
    implements $InstructorFailureCopyWith<$Res> {
  _$InstructorFailureCopyWithImpl(this._value, this._then);

  final InstructorFailure _value;
  // ignore: unused_field
  final $Res Function(InstructorFailure) _then;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InstructorFailureCopyWith<$Res>
    implements $InstructorFailureCopyWith<$Res> {
  factory _$InstructorFailureCopyWith(
          _InstructorFailure value, $Res Function(_InstructorFailure) then) =
      __$InstructorFailureCopyWithImpl<$Res>;
  @override
  $Res call({int? errorCode, String? message});
}

/// @nodoc
class __$InstructorFailureCopyWithImpl<$Res>
    extends _$InstructorFailureCopyWithImpl<$Res>
    implements _$InstructorFailureCopyWith<$Res> {
  __$InstructorFailureCopyWithImpl(
      _InstructorFailure _value, $Res Function(_InstructorFailure) _then)
      : super(_value, (v) => _then(v as _InstructorFailure));

  @override
  _InstructorFailure get _value => super._value as _InstructorFailure;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_InstructorFailure(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InstructorFailure implements _InstructorFailure {
  const _$_InstructorFailure(this.errorCode, this.message);

  @override
  final int? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'InstructorFailure.api(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstructorFailure &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$InstructorFailureCopyWith<_InstructorFailure> get copyWith =>
      __$InstructorFailureCopyWithImpl<_InstructorFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? errorCode, String? message) api,
  }) {
    return api(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
  }) {
    return api?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? errorCode, String? message)? api,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InstructorFailure value) api,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InstructorFailure value)? api,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InstructorFailure value)? api,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _InstructorFailure implements InstructorFailure {
  const factory _InstructorFailure(
      final int? errorCode, final String? message) = _$_InstructorFailure;

  @override
  int? get errorCode => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InstructorFailureCopyWith<_InstructorFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
