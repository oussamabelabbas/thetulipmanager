// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_fetcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientFetcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function() fetchClientStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function()? fetchClientStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function()? fetchClientStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(FetchClientStarted value) fetchClientStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(FetchClientStarted value)? fetchClientStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(FetchClientStarted value)? fetchClientStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientFetcherEventCopyWith<$Res> {
  factory $ClientFetcherEventCopyWith(
          ClientFetcherEvent value, $Res Function(ClientFetcherEvent) then) =
      _$ClientFetcherEventCopyWithImpl<$Res, ClientFetcherEvent>;
}

/// @nodoc
class _$ClientFetcherEventCopyWithImpl<$Res, $Val extends ClientFetcherEvent>
    implements $ClientFetcherEventCopyWith<$Res> {
  _$ClientFetcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientPhoneNumberChangedCopyWith<$Res> {
  factory _$$ClientPhoneNumberChangedCopyWith(_$ClientPhoneNumberChanged value,
          $Res Function(_$ClientPhoneNumberChanged) then) =
      __$$ClientPhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientPhoneNumber});
}

/// @nodoc
class __$$ClientPhoneNumberChangedCopyWithImpl<$Res>
    extends _$ClientFetcherEventCopyWithImpl<$Res, _$ClientPhoneNumberChanged>
    implements _$$ClientPhoneNumberChangedCopyWith<$Res> {
  __$$ClientPhoneNumberChangedCopyWithImpl(_$ClientPhoneNumberChanged _value,
      $Res Function(_$ClientPhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientPhoneNumber = null,
  }) {
    return _then(_$ClientPhoneNumberChanged(
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientPhoneNumberChanged implements ClientPhoneNumberChanged {
  const _$ClientPhoneNumberChanged({required this.clientPhoneNumber});

  @override
  final String clientPhoneNumber;

  @override
  String toString() {
    return 'ClientFetcherEvent.clientPhoneNumberChanged(clientPhoneNumber: $clientPhoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientPhoneNumberChanged &&
            (identical(other.clientPhoneNumber, clientPhoneNumber) ||
                other.clientPhoneNumber == clientPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientPhoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientPhoneNumberChangedCopyWith<_$ClientPhoneNumberChanged>
      get copyWith =>
          __$$ClientPhoneNumberChangedCopyWithImpl<_$ClientPhoneNumberChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function() fetchClientStarted,
  }) {
    return clientPhoneNumberChanged(clientPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function()? fetchClientStarted,
  }) {
    return clientPhoneNumberChanged?.call(clientPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function()? fetchClientStarted,
    required TResult orElse(),
  }) {
    if (clientPhoneNumberChanged != null) {
      return clientPhoneNumberChanged(clientPhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(FetchClientStarted value) fetchClientStarted,
  }) {
    return clientPhoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(FetchClientStarted value)? fetchClientStarted,
  }) {
    return clientPhoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(FetchClientStarted value)? fetchClientStarted,
    required TResult orElse(),
  }) {
    if (clientPhoneNumberChanged != null) {
      return clientPhoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class ClientPhoneNumberChanged implements ClientFetcherEvent {
  const factory ClientPhoneNumberChanged(
      {required final String clientPhoneNumber}) = _$ClientPhoneNumberChanged;

  String get clientPhoneNumber;
  @JsonKey(ignore: true)
  _$$ClientPhoneNumberChangedCopyWith<_$ClientPhoneNumberChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchClientStartedCopyWith<$Res> {
  factory _$$FetchClientStartedCopyWith(_$FetchClientStarted value,
          $Res Function(_$FetchClientStarted) then) =
      __$$FetchClientStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchClientStartedCopyWithImpl<$Res>
    extends _$ClientFetcherEventCopyWithImpl<$Res, _$FetchClientStarted>
    implements _$$FetchClientStartedCopyWith<$Res> {
  __$$FetchClientStartedCopyWithImpl(
      _$FetchClientStarted _value, $Res Function(_$FetchClientStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchClientStarted implements FetchClientStarted {
  const _$FetchClientStarted();

  @override
  String toString() {
    return 'ClientFetcherEvent.fetchClientStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchClientStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function() fetchClientStarted,
  }) {
    return fetchClientStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function()? fetchClientStarted,
  }) {
    return fetchClientStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function()? fetchClientStarted,
    required TResult orElse(),
  }) {
    if (fetchClientStarted != null) {
      return fetchClientStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(FetchClientStarted value) fetchClientStarted,
  }) {
    return fetchClientStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(FetchClientStarted value)? fetchClientStarted,
  }) {
    return fetchClientStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(FetchClientStarted value)? fetchClientStarted,
    required TResult orElse(),
  }) {
    if (fetchClientStarted != null) {
      return fetchClientStarted(this);
    }
    return orElse();
  }
}

abstract class FetchClientStarted implements ClientFetcherEvent {
  const factory FetchClientStarted() = _$FetchClientStarted;
}

/// @nodoc
mixin _$ClientFetcherState {
  bool get inProgress => throw _privateConstructorUsedError;
  PhoneNumber get clientPhoneNumber => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Option<Client>>> get failureOrClientOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientFetcherStateCopyWith<ClientFetcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientFetcherStateCopyWith<$Res> {
  factory $ClientFetcherStateCopyWith(
          ClientFetcherState value, $Res Function(ClientFetcherState) then) =
      _$ClientFetcherStateCopyWithImpl<$Res, ClientFetcherState>;
  @useResult
  $Res call(
      {bool inProgress,
      PhoneNumber clientPhoneNumber,
      Option<Either<FirebaseFailure, Option<Client>>> failureOrClientOption});
}

/// @nodoc
class _$ClientFetcherStateCopyWithImpl<$Res, $Val extends ClientFetcherState>
    implements $ClientFetcherStateCopyWith<$Res> {
  _$ClientFetcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? clientPhoneNumber = null,
    Object? failureOrClientOption = null,
  }) {
    return _then(_value.copyWith(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      failureOrClientOption: null == failureOrClientOption
          ? _value.failureOrClientOption
          : failureOrClientOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Option<Client>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientFetcherStateCopyWith<$Res>
    implements $ClientFetcherStateCopyWith<$Res> {
  factory _$$_ClientFetcherStateCopyWith(_$_ClientFetcherState value,
          $Res Function(_$_ClientFetcherState) then) =
      __$$_ClientFetcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProgress,
      PhoneNumber clientPhoneNumber,
      Option<Either<FirebaseFailure, Option<Client>>> failureOrClientOption});
}

/// @nodoc
class __$$_ClientFetcherStateCopyWithImpl<$Res>
    extends _$ClientFetcherStateCopyWithImpl<$Res, _$_ClientFetcherState>
    implements _$$_ClientFetcherStateCopyWith<$Res> {
  __$$_ClientFetcherStateCopyWithImpl(
      _$_ClientFetcherState _value, $Res Function(_$_ClientFetcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? clientPhoneNumber = null,
    Object? failureOrClientOption = null,
  }) {
    return _then(_$_ClientFetcherState(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      failureOrClientOption: null == failureOrClientOption
          ? _value.failureOrClientOption
          : failureOrClientOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Option<Client>>>,
    ));
  }
}

/// @nodoc

class _$_ClientFetcherState implements _ClientFetcherState {
  const _$_ClientFetcherState(
      {required this.inProgress,
      required this.clientPhoneNumber,
      required this.failureOrClientOption});

  @override
  final bool inProgress;
  @override
  final PhoneNumber clientPhoneNumber;
  @override
  final Option<Either<FirebaseFailure, Option<Client>>> failureOrClientOption;

  @override
  String toString() {
    return 'ClientFetcherState(inProgress: $inProgress, clientPhoneNumber: $clientPhoneNumber, failureOrClientOption: $failureOrClientOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFetcherState &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.clientPhoneNumber, clientPhoneNumber) ||
                other.clientPhoneNumber == clientPhoneNumber) &&
            (identical(other.failureOrClientOption, failureOrClientOption) ||
                other.failureOrClientOption == failureOrClientOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, inProgress, clientPhoneNumber, failureOrClientOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFetcherStateCopyWith<_$_ClientFetcherState> get copyWith =>
      __$$_ClientFetcherStateCopyWithImpl<_$_ClientFetcherState>(
          this, _$identity);
}

abstract class _ClientFetcherState implements ClientFetcherState {
  const factory _ClientFetcherState(
      {required final bool inProgress,
      required final PhoneNumber clientPhoneNumber,
      required final Option<Either<FirebaseFailure, Option<Client>>>
          failureOrClientOption}) = _$_ClientFetcherState;

  @override
  bool get inProgress;
  @override
  PhoneNumber get clientPhoneNumber;
  @override
  Option<Either<FirebaseFailure, Option<Client>>> get failureOrClientOption;
  @override
  @JsonKey(ignore: true)
  _$$_ClientFetcherStateCopyWith<_$_ClientFetcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
