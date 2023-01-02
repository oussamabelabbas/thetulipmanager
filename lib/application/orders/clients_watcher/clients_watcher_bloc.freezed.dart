// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clients_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchClientsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Client>> failureOrClients)
        clientsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchClientsStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Client>> failureOrClients)?
        clientsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchClientsStarted,
    TResult Function(Either<FirebaseFailure, KtList<Client>> failureOrClients)?
        clientsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchClientsStarted value) watchClientsStarted,
    required TResult Function(ClientsReceived value) clientsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchClientsStarted value)? watchClientsStarted,
    TResult? Function(ClientsReceived value)? clientsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchClientsStarted value)? watchClientsStarted,
    TResult Function(ClientsReceived value)? clientsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientsWatcherEventCopyWith<$Res> {
  factory $ClientsWatcherEventCopyWith(
          ClientsWatcherEvent value, $Res Function(ClientsWatcherEvent) then) =
      _$ClientsWatcherEventCopyWithImpl<$Res, ClientsWatcherEvent>;
}

/// @nodoc
class _$ClientsWatcherEventCopyWithImpl<$Res, $Val extends ClientsWatcherEvent>
    implements $ClientsWatcherEventCopyWith<$Res> {
  _$ClientsWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchClientsStartedCopyWith<$Res> {
  factory _$$WatchClientsStartedCopyWith(_$WatchClientsStarted value,
          $Res Function(_$WatchClientsStarted) then) =
      __$$WatchClientsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchClientsStartedCopyWithImpl<$Res>
    extends _$ClientsWatcherEventCopyWithImpl<$Res, _$WatchClientsStarted>
    implements _$$WatchClientsStartedCopyWith<$Res> {
  __$$WatchClientsStartedCopyWithImpl(
      _$WatchClientsStarted _value, $Res Function(_$WatchClientsStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchClientsStarted implements WatchClientsStarted {
  const _$WatchClientsStarted();

  @override
  String toString() {
    return 'ClientsWatcherEvent.watchClientsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchClientsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchClientsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Client>> failureOrClients)
        clientsReceived,
  }) {
    return watchClientsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchClientsStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Client>> failureOrClients)?
        clientsReceived,
  }) {
    return watchClientsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchClientsStarted,
    TResult Function(Either<FirebaseFailure, KtList<Client>> failureOrClients)?
        clientsReceived,
    required TResult orElse(),
  }) {
    if (watchClientsStarted != null) {
      return watchClientsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchClientsStarted value) watchClientsStarted,
    required TResult Function(ClientsReceived value) clientsReceived,
  }) {
    return watchClientsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchClientsStarted value)? watchClientsStarted,
    TResult? Function(ClientsReceived value)? clientsReceived,
  }) {
    return watchClientsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchClientsStarted value)? watchClientsStarted,
    TResult Function(ClientsReceived value)? clientsReceived,
    required TResult orElse(),
  }) {
    if (watchClientsStarted != null) {
      return watchClientsStarted(this);
    }
    return orElse();
  }
}

abstract class WatchClientsStarted implements ClientsWatcherEvent {
  const factory WatchClientsStarted() = _$WatchClientsStarted;
}

/// @nodoc
abstract class _$$ClientsReceivedCopyWith<$Res> {
  factory _$$ClientsReceivedCopyWith(
          _$ClientsReceived value, $Res Function(_$ClientsReceived) then) =
      __$$ClientsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<FirebaseFailure, KtList<Client>> failureOrClients});
}

/// @nodoc
class __$$ClientsReceivedCopyWithImpl<$Res>
    extends _$ClientsWatcherEventCopyWithImpl<$Res, _$ClientsReceived>
    implements _$$ClientsReceivedCopyWith<$Res> {
  __$$ClientsReceivedCopyWithImpl(
      _$ClientsReceived _value, $Res Function(_$ClientsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrClients = null,
  }) {
    return _then(_$ClientsReceived(
      failureOrClients: null == failureOrClients
          ? _value.failureOrClients
          : failureOrClients // ignore: cast_nullable_to_non_nullable
              as Either<FirebaseFailure, KtList<Client>>,
    ));
  }
}

/// @nodoc

class _$ClientsReceived implements ClientsReceived {
  const _$ClientsReceived({required this.failureOrClients});

  @override
  final Either<FirebaseFailure, KtList<Client>> failureOrClients;

  @override
  String toString() {
    return 'ClientsWatcherEvent.clientsReceived(failureOrClients: $failureOrClients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientsReceived &&
            (identical(other.failureOrClients, failureOrClients) ||
                other.failureOrClients == failureOrClients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrClients);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientsReceivedCopyWith<_$ClientsReceived> get copyWith =>
      __$$ClientsReceivedCopyWithImpl<_$ClientsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchClientsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Client>> failureOrClients)
        clientsReceived,
  }) {
    return clientsReceived(failureOrClients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchClientsStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Client>> failureOrClients)?
        clientsReceived,
  }) {
    return clientsReceived?.call(failureOrClients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchClientsStarted,
    TResult Function(Either<FirebaseFailure, KtList<Client>> failureOrClients)?
        clientsReceived,
    required TResult orElse(),
  }) {
    if (clientsReceived != null) {
      return clientsReceived(failureOrClients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchClientsStarted value) watchClientsStarted,
    required TResult Function(ClientsReceived value) clientsReceived,
  }) {
    return clientsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchClientsStarted value)? watchClientsStarted,
    TResult? Function(ClientsReceived value)? clientsReceived,
  }) {
    return clientsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchClientsStarted value)? watchClientsStarted,
    TResult Function(ClientsReceived value)? clientsReceived,
    required TResult orElse(),
  }) {
    if (clientsReceived != null) {
      return clientsReceived(this);
    }
    return orElse();
  }
}

abstract class ClientsReceived implements ClientsWatcherEvent {
  const factory ClientsReceived(
      {required final Either<FirebaseFailure, KtList<Client>>
          failureOrClients}) = _$ClientsReceived;

  Either<FirebaseFailure, KtList<Client>> get failureOrClients;
  @JsonKey(ignore: true)
  _$$ClientsReceivedCopyWith<_$ClientsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientsWatcherState {
  bool get inProgress => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, KtList<Client>>> get failureOrClientsOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientsWatcherStateCopyWith<ClientsWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientsWatcherStateCopyWith<$Res> {
  factory $ClientsWatcherStateCopyWith(
          ClientsWatcherState value, $Res Function(ClientsWatcherState) then) =
      _$ClientsWatcherStateCopyWithImpl<$Res, ClientsWatcherState>;
  @useResult
  $Res call(
      {bool inProgress,
      Option<Either<FirebaseFailure, KtList<Client>>> failureOrClientsOption});
}

/// @nodoc
class _$ClientsWatcherStateCopyWithImpl<$Res, $Val extends ClientsWatcherState>
    implements $ClientsWatcherStateCopyWith<$Res> {
  _$ClientsWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? failureOrClientsOption = null,
  }) {
    return _then(_value.copyWith(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrClientsOption: null == failureOrClientsOption
          ? _value.failureOrClientsOption
          : failureOrClientsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, KtList<Client>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientsWatcherStateCopyWith<$Res>
    implements $ClientsWatcherStateCopyWith<$Res> {
  factory _$$_ClientsWatcherStateCopyWith(_$_ClientsWatcherState value,
          $Res Function(_$_ClientsWatcherState) then) =
      __$$_ClientsWatcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProgress,
      Option<Either<FirebaseFailure, KtList<Client>>> failureOrClientsOption});
}

/// @nodoc
class __$$_ClientsWatcherStateCopyWithImpl<$Res>
    extends _$ClientsWatcherStateCopyWithImpl<$Res, _$_ClientsWatcherState>
    implements _$$_ClientsWatcherStateCopyWith<$Res> {
  __$$_ClientsWatcherStateCopyWithImpl(_$_ClientsWatcherState _value,
      $Res Function(_$_ClientsWatcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? failureOrClientsOption = null,
  }) {
    return _then(_$_ClientsWatcherState(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrClientsOption: null == failureOrClientsOption
          ? _value.failureOrClientsOption
          : failureOrClientsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, KtList<Client>>>,
    ));
  }
}

/// @nodoc

class _$_ClientsWatcherState implements _ClientsWatcherState {
  const _$_ClientsWatcherState(
      {required this.inProgress, required this.failureOrClientsOption});

  @override
  final bool inProgress;
  @override
  final Option<Either<FirebaseFailure, KtList<Client>>> failureOrClientsOption;

  @override
  String toString() {
    return 'ClientsWatcherState(inProgress: $inProgress, failureOrClientsOption: $failureOrClientsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientsWatcherState &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.failureOrClientsOption, failureOrClientsOption) ||
                other.failureOrClientsOption == failureOrClientsOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, inProgress, failureOrClientsOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientsWatcherStateCopyWith<_$_ClientsWatcherState> get copyWith =>
      __$$_ClientsWatcherStateCopyWithImpl<_$_ClientsWatcherState>(
          this, _$identity);
}

abstract class _ClientsWatcherState implements ClientsWatcherState {
  const factory _ClientsWatcherState(
      {required final bool inProgress,
      required final Option<Either<FirebaseFailure, KtList<Client>>>
          failureOrClientsOption}) = _$_ClientsWatcherState;

  @override
  bool get inProgress;
  @override
  Option<Either<FirebaseFailure, KtList<Client>>> get failureOrClientsOption;
  @override
  @JsonKey(ignore: true)
  _$$_ClientsWatcherStateCopyWith<_$_ClientsWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
