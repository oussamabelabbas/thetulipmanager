// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firebase_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseFailure {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseFailureCopyWith<FirebaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseFailureCopyWith<$Res> {
  factory $FirebaseFailureCopyWith(
          FirebaseFailure value, $Res Function(FirebaseFailure) then) =
      _$FirebaseFailureCopyWithImpl<$Res, FirebaseFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FirebaseFailureCopyWithImpl<$Res, $Val extends FirebaseFailure>
    implements $FirebaseFailureCopyWith<$Res> {
  _$FirebaseFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirebaseFailureCopyWith<$Res>
    implements $FirebaseFailureCopyWith<$Res> {
  factory _$$_FirebaseFailureCopyWith(
          _$_FirebaseFailure value, $Res Function(_$_FirebaseFailure) then) =
      __$$_FirebaseFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FirebaseFailureCopyWithImpl<$Res>
    extends _$FirebaseFailureCopyWithImpl<$Res, _$_FirebaseFailure>
    implements _$$_FirebaseFailureCopyWith<$Res> {
  __$$_FirebaseFailureCopyWithImpl(
      _$_FirebaseFailure _value, $Res Function(_$_FirebaseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FirebaseFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseFailure implements _FirebaseFailure {
  const _$_FirebaseFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FirebaseFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseFailureCopyWith<_$_FirebaseFailure> get copyWith =>
      __$$_FirebaseFailureCopyWithImpl<_$_FirebaseFailure>(this, _$identity);
}

abstract class _FirebaseFailure implements FirebaseFailure {
  const factory _FirebaseFailure({required final String message}) =
      _$_FirebaseFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseFailureCopyWith<_$_FirebaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
