// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) {
  return _AppUserDto.fromJson(json);
}

/// @nodoc
mixin _$AppUserDto {
  @JsonKey(ignore: true)
  String? get uid => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserDtoCopyWith<AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserDtoCopyWith<$Res> {
  factory $AppUserDtoCopyWith(
          AppUserDto value, $Res Function(AppUserDto) then) =
      _$AppUserDtoCopyWithImpl<$Res, AppUserDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? uid,
      String emailAddress,
      String displayName});
}

/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res, $Val extends AppUserDto>
    implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? emailAddress = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserDtoCopyWith<$Res>
    implements $AppUserDtoCopyWith<$Res> {
  factory _$$_AppUserDtoCopyWith(
          _$_AppUserDto value, $Res Function(_$_AppUserDto) then) =
      __$$_AppUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? uid,
      String emailAddress,
      String displayName});
}

/// @nodoc
class __$$_AppUserDtoCopyWithImpl<$Res>
    extends _$AppUserDtoCopyWithImpl<$Res, _$_AppUserDto>
    implements _$$_AppUserDtoCopyWith<$Res> {
  __$$_AppUserDtoCopyWithImpl(
      _$_AppUserDto _value, $Res Function(_$_AppUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? emailAddress = null,
    Object? displayName = null,
  }) {
    return _then(_$_AppUserDto(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUserDto extends _AppUserDto {
  const _$_AppUserDto(
      {@JsonKey(ignore: true) this.uid,
      required this.emailAddress,
      required this.displayName})
      : super._();

  factory _$_AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? uid;
  @override
  final String emailAddress;
  @override
  final String displayName;

  @override
  String toString() {
    return 'AppUserDto(uid: $uid, emailAddress: $emailAddress, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserDto &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, emailAddress, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserDtoCopyWith<_$_AppUserDto> get copyWith =>
      __$$_AppUserDtoCopyWithImpl<_$_AppUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserDtoToJson(
      this,
    );
  }
}

abstract class _AppUserDto extends AppUserDto {
  const factory _AppUserDto(
      {@JsonKey(ignore: true) final String? uid,
      required final String emailAddress,
      required final String displayName}) = _$_AppUserDto;
  const _AppUserDto._() : super._();

  factory _AppUserDto.fromJson(Map<String, dynamic> json) =
      _$_AppUserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get uid;
  @override
  String get emailAddress;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserDtoCopyWith<_$_AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
