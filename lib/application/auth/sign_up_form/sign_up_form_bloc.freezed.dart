// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res, SignUpFormEvent>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res, $Val extends SignUpFormEvent>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'SignUpFormEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SignUpFormEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$EmailAddressChangedCopyWith<$Res> {
  factory _$$EmailAddressChangedCopyWith(_$EmailAddressChanged value,
          $Res Function(_$EmailAddressChanged) then) =
      __$$EmailAddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress});
}

/// @nodoc
class __$$EmailAddressChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$EmailAddressChanged>
    implements _$$EmailAddressChangedCopyWith<$Res> {
  __$$EmailAddressChangedCopyWithImpl(
      _$EmailAddressChanged _value, $Res Function(_$EmailAddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
  }) {
    return _then(_$EmailAddressChanged(
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailAddressChanged implements EmailAddressChanged {
  const _$EmailAddressChanged(this.emailAddress);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'SignUpFormEvent.emailAddressChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAddressChanged &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailAddressChangedCopyWith<_$EmailAddressChanged> get copyWith =>
      __$$EmailAddressChangedCopyWithImpl<_$EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) {
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) {
    return emailAddressChanged?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements SignUpFormEvent {
  const factory EmailAddressChanged(final String emailAddress) =
      _$EmailAddressChanged;

  String get emailAddress;
  @JsonKey(ignore: true)
  _$$EmailAddressChangedCopyWith<_$EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpFormEvent {
  const factory PasswordChanged(final String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayNameChangedCopyWith<$Res> {
  factory _$$DisplayNameChangedCopyWith(_$DisplayNameChanged value,
          $Res Function(_$DisplayNameChanged) then) =
      __$$DisplayNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String displayName});
}

/// @nodoc
class __$$DisplayNameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$DisplayNameChanged>
    implements _$$DisplayNameChangedCopyWith<$Res> {
  __$$DisplayNameChangedCopyWithImpl(
      _$DisplayNameChanged _value, $Res Function(_$DisplayNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
  }) {
    return _then(_$DisplayNameChanged(
      null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisplayNameChanged implements DisplayNameChanged {
  const _$DisplayNameChanged(this.displayName);

  @override
  final String displayName;

  @override
  String toString() {
    return 'SignUpFormEvent.displayNameChanged(displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayNameChanged &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayNameChangedCopyWith<_$DisplayNameChanged> get copyWith =>
      __$$DisplayNameChangedCopyWithImpl<_$DisplayNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) {
    return displayNameChanged(displayName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) {
    return displayNameChanged?.call(displayName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) {
    return displayNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) {
    return displayNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(this);
    }
    return orElse();
  }
}

abstract class DisplayNameChanged implements SignUpFormEvent {
  const factory DisplayNameChanged(final String displayName) =
      _$DisplayNameChanged;

  String get displayName;
  @JsonKey(ignore: true)
  _$$DisplayNameChangedCopyWith<_$DisplayNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordObscurityChangedCopyWith<$Res> {
  factory _$$PasswordObscurityChangedCopyWith(_$PasswordObscurityChanged value,
          $Res Function(_$PasswordObscurityChanged) then) =
      __$$PasswordObscurityChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordObscurityChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$PasswordObscurityChanged>
    implements _$$PasswordObscurityChangedCopyWith<$Res> {
  __$$PasswordObscurityChangedCopyWithImpl(_$PasswordObscurityChanged _value,
      $Res Function(_$PasswordObscurityChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordObscurityChanged implements PasswordObscurityChanged {
  const _$PasswordObscurityChanged();

  @override
  String toString() {
    return 'SignUpFormEvent.passwordObscurityChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordObscurityChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) {
    return passwordObscurityChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) {
    return passwordObscurityChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) {
    if (passwordObscurityChanged != null) {
      return passwordObscurityChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) {
    return passwordObscurityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) {
    return passwordObscurityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) {
    if (passwordObscurityChanged != null) {
      return passwordObscurityChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordObscurityChanged implements SignUpFormEvent {
  const factory PasswordObscurityChanged() = _$PasswordObscurityChanged;
}

/// @nodoc
abstract class _$$CompleteAccountPressedCopyWith<$Res> {
  factory _$$CompleteAccountPressedCopyWith(_$CompleteAccountPressed value,
          $Res Function(_$CompleteAccountPressed) then) =
      __$$CompleteAccountPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteAccountPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$CompleteAccountPressed>
    implements _$$CompleteAccountPressedCopyWith<$Res> {
  __$$CompleteAccountPressedCopyWithImpl(_$CompleteAccountPressed _value,
      $Res Function(_$CompleteAccountPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteAccountPressed implements CompleteAccountPressed {
  const _$CompleteAccountPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.completeAccountPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteAccountPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) {
    return completeAccountPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) {
    return completeAccountPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) {
    if (completeAccountPressed != null) {
      return completeAccountPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) {
    return completeAccountPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) {
    return completeAccountPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) {
    if (completeAccountPressed != null) {
      return completeAccountPressed(this);
    }
    return orElse();
  }
}

abstract class CompleteAccountPressed implements SignUpFormEvent {
  const factory CompleteAccountPressed() = _$CompleteAccountPressed;
}

/// @nodoc
abstract class _$$CreateAccountPressedCopyWith<$Res> {
  factory _$$CreateAccountPressedCopyWith(_$CreateAccountPressed value,
          $Res Function(_$CreateAccountPressed) then) =
      __$$CreateAccountPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAccountPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$CreateAccountPressed>
    implements _$$CreateAccountPressedCopyWith<$Res> {
  __$$CreateAccountPressedCopyWithImpl(_$CreateAccountPressed _value,
      $Res Function(_$CreateAccountPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateAccountPressed implements CreateAccountPressed {
  const _$CreateAccountPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.createAccountPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateAccountPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String displayName) displayNameChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() completeAccountPressed,
    required TResult Function() createAccountPressed,
  }) {
    return createAccountPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String displayName)? displayNameChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? completeAccountPressed,
    TResult? Function()? createAccountPressed,
  }) {
    return createAccountPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String displayName)? displayNameChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? completeAccountPressed,
    TResult Function()? createAccountPressed,
    required TResult orElse(),
  }) {
    if (createAccountPressed != null) {
      return createAccountPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(CompleteAccountPressed value)
        completeAccountPressed,
    required TResult Function(CreateAccountPressed value) createAccountPressed,
  }) {
    return createAccountPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(DisplayNameChanged value)? displayNameChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult? Function(CreateAccountPressed value)? createAccountPressed,
  }) {
    return createAccountPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(CompleteAccountPressed value)? completeAccountPressed,
    TResult Function(CreateAccountPressed value)? createAccountPressed,
    required TResult orElse(),
  }) {
    if (createAccountPressed != null) {
      return createAccountPressed(this);
    }
    return orElse();
  }
}

abstract class CreateAccountPressed implements SignUpFormEvent {
  const factory CreateAccountPressed() = _$CreateAccountPressed;
}

/// @nodoc
mixin _$SignUpFormState {
  Option<User> get userOption => throw _privateConstructorUsedError;
  bool get inProgress => throw _privateConstructorUsedError;
  bool get autoValidate => throw _privateConstructorUsedError;
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Name get displayName => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res, SignUpFormState>;
  @useResult
  $Res call(
      {Option<User> userOption,
      bool inProgress,
      bool autoValidate,
      bool isPasswordObscure,
      EmailAddress emailAddress,
      Password password,
      Name displayName,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res, $Val extends SignUpFormState>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOption = null,
    Object? inProgress = null,
    Object? autoValidate = null,
    Object? isPasswordObscure = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? displayName = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      userOption: null == userOption
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      autoValidate: null == autoValidate
          ? _value.autoValidate
          : autoValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as Name,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$$_SignUpFormStateCopyWith(
          _$_SignUpFormState value, $Res Function(_$_SignUpFormState) then) =
      __$$_SignUpFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<User> userOption,
      bool inProgress,
      bool autoValidate,
      bool isPasswordObscure,
      EmailAddress emailAddress,
      Password password,
      Name displayName,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res, _$_SignUpFormState>
    implements _$$_SignUpFormStateCopyWith<$Res> {
  __$$_SignUpFormStateCopyWithImpl(
      _$_SignUpFormState _value, $Res Function(_$_SignUpFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOption = null,
    Object? inProgress = null,
    Object? autoValidate = null,
    Object? isPasswordObscure = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? displayName = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_SignUpFormState(
      userOption: null == userOption
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      autoValidate: null == autoValidate
          ? _value.autoValidate
          : autoValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as Name,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.userOption,
      required this.inProgress,
      required this.autoValidate,
      required this.isPasswordObscure,
      required this.emailAddress,
      required this.password,
      required this.displayName,
      required this.failureOrSuccessOption});

  @override
  final Option<User> userOption;
  @override
  final bool inProgress;
  @override
  final bool autoValidate;
  @override
  final bool isPasswordObscure;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Name displayName;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpFormState(userOption: $userOption, inProgress: $inProgress, autoValidate: $autoValidate, isPasswordObscure: $isPasswordObscure, emailAddress: $emailAddress, password: $password, displayName: $displayName, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpFormState &&
            (identical(other.userOption, userOption) ||
                other.userOption == userOption) &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.autoValidate, autoValidate) ||
                other.autoValidate == autoValidate) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                other.isPasswordObscure == isPasswordObscure) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userOption,
      inProgress,
      autoValidate,
      isPasswordObscure,
      emailAddress,
      password,
      displayName,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      __$$_SignUpFormStateCopyWithImpl<_$_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {required final Option<User> userOption,
      required final bool inProgress,
      required final bool autoValidate,
      required final bool isPasswordObscure,
      required final EmailAddress emailAddress,
      required final Password password,
      required final Name displayName,
      required final Option<Either<AuthFailure, Unit>>
          failureOrSuccessOption}) = _$_SignUpFormState;

  @override
  Option<User> get userOption;
  @override
  bool get inProgress;
  @override
  bool get autoValidate;
  @override
  bool get isPasswordObscure;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Name get displayName;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
