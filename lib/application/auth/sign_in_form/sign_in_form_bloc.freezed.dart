// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function() signInPressed,
    required TResult Function() continueWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function()? signInPressed,
    TResult? Function()? continueWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function()? signInPressed,
    TResult Function()? continueWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ContinueWithGooglePressed value)
        continueWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(SignInPressed value)? signInPressed,
    TResult? Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailAddressChanged>
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
    return 'SignInFormEvent.emailAddressChanged(emailAddress: $emailAddress)';
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
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function() signInPressed,
    required TResult Function() continueWithGooglePressed,
  }) {
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function()? signInPressed,
    TResult? Function()? continueWithGooglePressed,
  }) {
    return emailAddressChanged?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function()? signInPressed,
    TResult Function()? continueWithGooglePressed,
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
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ContinueWithGooglePressed value)
        continueWithGooglePressed,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(SignInPressed value)? signInPressed,
    TResult? Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements SignInFormEvent {
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
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordChanged>
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
    return 'SignInFormEvent.passwordChanged(password: $password)';
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
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function() signInPressed,
    required TResult Function() continueWithGooglePressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function()? signInPressed,
    TResult? Function()? continueWithGooglePressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function()? signInPressed,
    TResult Function()? continueWithGooglePressed,
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
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ContinueWithGooglePressed value)
        continueWithGooglePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(SignInPressed value)? signInPressed,
    TResult? Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(final String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
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
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordObscurityChanged>
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
    return 'SignInFormEvent.passwordObscurityChanged()';
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
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function() signInPressed,
    required TResult Function() continueWithGooglePressed,
  }) {
    return passwordObscurityChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function()? signInPressed,
    TResult? Function()? continueWithGooglePressed,
  }) {
    return passwordObscurityChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function()? signInPressed,
    TResult Function()? continueWithGooglePressed,
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
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ContinueWithGooglePressed value)
        continueWithGooglePressed,
  }) {
    return passwordObscurityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(SignInPressed value)? signInPressed,
    TResult? Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
  }) {
    return passwordObscurityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordObscurityChanged != null) {
      return passwordObscurityChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordObscurityChanged implements SignInFormEvent {
  const factory PasswordObscurityChanged() = _$PasswordObscurityChanged;
}

/// @nodoc
abstract class _$$ResetPasswordPressedCopyWith<$Res> {
  factory _$$ResetPasswordPressedCopyWith(_$ResetPasswordPressed value,
          $Res Function(_$ResetPasswordPressed) then) =
      __$$ResetPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$ResetPasswordPressed>
    implements _$$ResetPasswordPressedCopyWith<$Res> {
  __$$ResetPasswordPressedCopyWithImpl(_$ResetPasswordPressed _value,
      $Res Function(_$ResetPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetPasswordPressed implements ResetPasswordPressed {
  const _$ResetPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.resetPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function() signInPressed,
    required TResult Function() continueWithGooglePressed,
  }) {
    return resetPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function()? signInPressed,
    TResult? Function()? continueWithGooglePressed,
  }) {
    return resetPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function()? signInPressed,
    TResult Function()? continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (resetPasswordPressed != null) {
      return resetPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ContinueWithGooglePressed value)
        continueWithGooglePressed,
  }) {
    return resetPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(SignInPressed value)? signInPressed,
    TResult? Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
  }) {
    return resetPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (resetPasswordPressed != null) {
      return resetPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordPressed implements SignInFormEvent {
  const factory ResetPasswordPressed() = _$ResetPasswordPressed;
}

/// @nodoc
abstract class _$$SignInPressedCopyWith<$Res> {
  factory _$$SignInPressedCopyWith(
          _$SignInPressed value, $Res Function(_$SignInPressed) then) =
      __$$SignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInPressed>
    implements _$$SignInPressedCopyWith<$Res> {
  __$$SignInPressedCopyWithImpl(
      _$SignInPressed _value, $Res Function(_$SignInPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInPressed implements SignInPressed {
  const _$SignInPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function() signInPressed,
    required TResult Function() continueWithGooglePressed,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function()? signInPressed,
    TResult? Function()? continueWithGooglePressed,
  }) {
    return signInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function()? signInPressed,
    TResult Function()? continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ContinueWithGooglePressed value)
        continueWithGooglePressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(SignInPressed value)? signInPressed,
    TResult? Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
  }) {
    return signInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements SignInFormEvent {
  const factory SignInPressed() = _$SignInPressed;
}

/// @nodoc
abstract class _$$ContinueWithGooglePressedCopyWith<$Res> {
  factory _$$ContinueWithGooglePressedCopyWith(
          _$ContinueWithGooglePressed value,
          $Res Function(_$ContinueWithGooglePressed) then) =
      __$$ContinueWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContinueWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$ContinueWithGooglePressed>
    implements _$$ContinueWithGooglePressedCopyWith<$Res> {
  __$$ContinueWithGooglePressedCopyWithImpl(_$ContinueWithGooglePressed _value,
      $Res Function(_$ContinueWithGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContinueWithGooglePressed implements ContinueWithGooglePressed {
  const _$ContinueWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.continueWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordObscurityChanged,
    required TResult Function() resetPasswordPressed,
    required TResult Function() signInPressed,
    required TResult Function() continueWithGooglePressed,
  }) {
    return continueWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress)? emailAddressChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? passwordObscurityChanged,
    TResult? Function()? resetPasswordPressed,
    TResult? Function()? signInPressed,
    TResult? Function()? continueWithGooglePressed,
  }) {
    return continueWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordObscurityChanged,
    TResult Function()? resetPasswordPressed,
    TResult Function()? signInPressed,
    TResult Function()? continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (continueWithGooglePressed != null) {
      return continueWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordObscurityChanged value)
        passwordObscurityChanged,
    required TResult Function(ResetPasswordPressed value) resetPasswordPressed,
    required TResult Function(SignInPressed value) signInPressed,
    required TResult Function(ContinueWithGooglePressed value)
        continueWithGooglePressed,
  }) {
    return continueWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAddressChanged value)? emailAddressChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult? Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult? Function(SignInPressed value)? signInPressed,
    TResult? Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
  }) {
    return continueWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordObscurityChanged value)? passwordObscurityChanged,
    TResult Function(ResetPasswordPressed value)? resetPasswordPressed,
    TResult Function(SignInPressed value)? signInPressed,
    TResult Function(ContinueWithGooglePressed value)?
        continueWithGooglePressed,
    required TResult orElse(),
  }) {
    if (continueWithGooglePressed != null) {
      return continueWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class ContinueWithGooglePressed implements SignInFormEvent {
  const factory ContinueWithGooglePressed() = _$ContinueWithGooglePressed;
}

/// @nodoc
mixin _$SignInFormState {
  bool get inProgress => throw _privateConstructorUsedError;
  bool get autoValidate => throw _privateConstructorUsedError;
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {bool inProgress,
      bool autoValidate,
      bool isPasswordObscure,
      EmailAddress emailAddress,
      Password password,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? autoValidate = null,
    Object? isPasswordObscure = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
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
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProgress,
      bool autoValidate,
      bool isPasswordObscure,
      EmailAddress emailAddress,
      Password password,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? autoValidate = null,
    Object? isPasswordObscure = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_SignInFormState(
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
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.inProgress,
      required this.autoValidate,
      required this.isPasswordObscure,
      required this.emailAddress,
      required this.password,
      required this.failureOrSuccessOption});

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
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(inProgress: $inProgress, autoValidate: $autoValidate, isPasswordObscure: $isPasswordObscure, emailAddress: $emailAddress, password: $password, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
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
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inProgress, autoValidate,
      isPasswordObscure, emailAddress, password, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final bool inProgress,
      required final bool autoValidate,
      required final bool isPasswordObscure,
      required final EmailAddress emailAddress,
      required final Password password,
      required final Option<Either<AuthFailure, Unit>>
          failureOrSuccessOption}) = _$_SignInFormState;

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
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
