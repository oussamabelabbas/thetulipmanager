// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function() watchDoneStarted,
    required TResult Function() watchArchivedStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchActiveStarted,
    TResult? Function()? watchDoneStarted,
    TResult? Function()? watchArchivedStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function()? watchDoneStarted,
    TResult Function()? watchArchivedStarted,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchActiveStarted value) watchActiveStarted,
    required TResult Function(WatchDoneStarted value) watchDoneStarted,
    required TResult Function(WatchArchivedStarted value) watchArchivedStarted,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(WatchDoneStarted value)? watchDoneStarted,
    TResult? Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchActiveStarted value)? watchActiveStarted,
    TResult Function(WatchDoneStarted value)? watchDoneStarted,
    TResult Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult Function(OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersWatcherEventCopyWith<$Res> {
  factory $OrdersWatcherEventCopyWith(
          OrdersWatcherEvent value, $Res Function(OrdersWatcherEvent) then) =
      _$OrdersWatcherEventCopyWithImpl<$Res, OrdersWatcherEvent>;
}

/// @nodoc
class _$OrdersWatcherEventCopyWithImpl<$Res, $Val extends OrdersWatcherEvent>
    implements $OrdersWatcherEventCopyWith<$Res> {
  _$OrdersWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchActiveStartedCopyWith<$Res> {
  factory _$$WatchActiveStartedCopyWith(_$WatchActiveStarted value,
          $Res Function(_$WatchActiveStarted) then) =
      __$$WatchActiveStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchActiveStartedCopyWithImpl<$Res>
    extends _$OrdersWatcherEventCopyWithImpl<$Res, _$WatchActiveStarted>
    implements _$$WatchActiveStartedCopyWith<$Res> {
  __$$WatchActiveStartedCopyWithImpl(
      _$WatchActiveStarted _value, $Res Function(_$WatchActiveStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchActiveStarted implements WatchActiveStarted {
  const _$WatchActiveStarted();

  @override
  String toString() {
    return 'OrdersWatcherEvent.watchActiveStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchActiveStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function() watchDoneStarted,
    required TResult Function() watchArchivedStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) {
    return watchActiveStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchActiveStarted,
    TResult? Function()? watchDoneStarted,
    TResult? Function()? watchArchivedStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) {
    return watchActiveStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function()? watchDoneStarted,
    TResult Function()? watchArchivedStarted,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (watchActiveStarted != null) {
      return watchActiveStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchActiveStarted value) watchActiveStarted,
    required TResult Function(WatchDoneStarted value) watchDoneStarted,
    required TResult Function(WatchArchivedStarted value) watchArchivedStarted,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) {
    return watchActiveStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(WatchDoneStarted value)? watchDoneStarted,
    TResult? Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) {
    return watchActiveStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchActiveStarted value)? watchActiveStarted,
    TResult Function(WatchDoneStarted value)? watchDoneStarted,
    TResult Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult Function(OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (watchActiveStarted != null) {
      return watchActiveStarted(this);
    }
    return orElse();
  }
}

abstract class WatchActiveStarted implements OrdersWatcherEvent {
  const factory WatchActiveStarted() = _$WatchActiveStarted;
}

/// @nodoc
abstract class _$$WatchDoneStartedCopyWith<$Res> {
  factory _$$WatchDoneStartedCopyWith(
          _$WatchDoneStarted value, $Res Function(_$WatchDoneStarted) then) =
      __$$WatchDoneStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchDoneStartedCopyWithImpl<$Res>
    extends _$OrdersWatcherEventCopyWithImpl<$Res, _$WatchDoneStarted>
    implements _$$WatchDoneStartedCopyWith<$Res> {
  __$$WatchDoneStartedCopyWithImpl(
      _$WatchDoneStarted _value, $Res Function(_$WatchDoneStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchDoneStarted implements WatchDoneStarted {
  const _$WatchDoneStarted();

  @override
  String toString() {
    return 'OrdersWatcherEvent.watchDoneStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchDoneStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function() watchDoneStarted,
    required TResult Function() watchArchivedStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) {
    return watchDoneStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchActiveStarted,
    TResult? Function()? watchDoneStarted,
    TResult? Function()? watchArchivedStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) {
    return watchDoneStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function()? watchDoneStarted,
    TResult Function()? watchArchivedStarted,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (watchDoneStarted != null) {
      return watchDoneStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchActiveStarted value) watchActiveStarted,
    required TResult Function(WatchDoneStarted value) watchDoneStarted,
    required TResult Function(WatchArchivedStarted value) watchArchivedStarted,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) {
    return watchDoneStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(WatchDoneStarted value)? watchDoneStarted,
    TResult? Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) {
    return watchDoneStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchActiveStarted value)? watchActiveStarted,
    TResult Function(WatchDoneStarted value)? watchDoneStarted,
    TResult Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult Function(OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (watchDoneStarted != null) {
      return watchDoneStarted(this);
    }
    return orElse();
  }
}

abstract class WatchDoneStarted implements OrdersWatcherEvent {
  const factory WatchDoneStarted() = _$WatchDoneStarted;
}

/// @nodoc
abstract class _$$WatchArchivedStartedCopyWith<$Res> {
  factory _$$WatchArchivedStartedCopyWith(_$WatchArchivedStarted value,
          $Res Function(_$WatchArchivedStarted) then) =
      __$$WatchArchivedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchArchivedStartedCopyWithImpl<$Res>
    extends _$OrdersWatcherEventCopyWithImpl<$Res, _$WatchArchivedStarted>
    implements _$$WatchArchivedStartedCopyWith<$Res> {
  __$$WatchArchivedStartedCopyWithImpl(_$WatchArchivedStarted _value,
      $Res Function(_$WatchArchivedStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchArchivedStarted implements WatchArchivedStarted {
  const _$WatchArchivedStarted();

  @override
  String toString() {
    return 'OrdersWatcherEvent.watchArchivedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchArchivedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function() watchDoneStarted,
    required TResult Function() watchArchivedStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) {
    return watchArchivedStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchActiveStarted,
    TResult? Function()? watchDoneStarted,
    TResult? Function()? watchArchivedStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) {
    return watchArchivedStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function()? watchDoneStarted,
    TResult Function()? watchArchivedStarted,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (watchArchivedStarted != null) {
      return watchArchivedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchActiveStarted value) watchActiveStarted,
    required TResult Function(WatchDoneStarted value) watchDoneStarted,
    required TResult Function(WatchArchivedStarted value) watchArchivedStarted,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) {
    return watchArchivedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(WatchDoneStarted value)? watchDoneStarted,
    TResult? Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) {
    return watchArchivedStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchActiveStarted value)? watchActiveStarted,
    TResult Function(WatchDoneStarted value)? watchDoneStarted,
    TResult Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult Function(OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (watchArchivedStarted != null) {
      return watchArchivedStarted(this);
    }
    return orElse();
  }
}

abstract class WatchArchivedStarted implements OrdersWatcherEvent {
  const factory WatchArchivedStarted() = _$WatchArchivedStarted;
}

/// @nodoc
abstract class _$$OrdersReceivedCopyWith<$Res> {
  factory _$$OrdersReceivedCopyWith(
          _$OrdersReceived value, $Res Function(_$OrdersReceived) then) =
      __$$OrdersReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<FirebaseFailure, KtList<Order>> failureOrOrders});
}

/// @nodoc
class __$$OrdersReceivedCopyWithImpl<$Res>
    extends _$OrdersWatcherEventCopyWithImpl<$Res, _$OrdersReceived>
    implements _$$OrdersReceivedCopyWith<$Res> {
  __$$OrdersReceivedCopyWithImpl(
      _$OrdersReceived _value, $Res Function(_$OrdersReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrOrders = null,
  }) {
    return _then(_$OrdersReceived(
      failureOrOrders: null == failureOrOrders
          ? _value.failureOrOrders
          : failureOrOrders // ignore: cast_nullable_to_non_nullable
              as Either<FirebaseFailure, KtList<Order>>,
    ));
  }
}

/// @nodoc

class _$OrdersReceived implements OrdersReceived {
  const _$OrdersReceived({required this.failureOrOrders});

  @override
  final Either<FirebaseFailure, KtList<Order>> failureOrOrders;

  @override
  String toString() {
    return 'OrdersWatcherEvent.ordersReceived(failureOrOrders: $failureOrOrders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersReceived &&
            (identical(other.failureOrOrders, failureOrOrders) ||
                other.failureOrOrders == failureOrOrders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrOrders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersReceivedCopyWith<_$OrdersReceived> get copyWith =>
      __$$OrdersReceivedCopyWithImpl<_$OrdersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function() watchDoneStarted,
    required TResult Function() watchArchivedStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) {
    return ordersReceived(failureOrOrders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchActiveStarted,
    TResult? Function()? watchDoneStarted,
    TResult? Function()? watchArchivedStarted,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) {
    return ordersReceived?.call(failureOrOrders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function()? watchDoneStarted,
    TResult Function()? watchArchivedStarted,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (ordersReceived != null) {
      return ordersReceived(failureOrOrders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchActiveStarted value) watchActiveStarted,
    required TResult Function(WatchDoneStarted value) watchDoneStarted,
    required TResult Function(WatchArchivedStarted value) watchArchivedStarted,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) {
    return ordersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchActiveStarted value)? watchActiveStarted,
    TResult? Function(WatchDoneStarted value)? watchDoneStarted,
    TResult? Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) {
    return ordersReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchActiveStarted value)? watchActiveStarted,
    TResult Function(WatchDoneStarted value)? watchDoneStarted,
    TResult Function(WatchArchivedStarted value)? watchArchivedStarted,
    TResult Function(OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (ordersReceived != null) {
      return ordersReceived(this);
    }
    return orElse();
  }
}

abstract class OrdersReceived implements OrdersWatcherEvent {
  const factory OrdersReceived(
      {required final Either<FirebaseFailure, KtList<Order>>
          failureOrOrders}) = _$OrdersReceived;

  Either<FirebaseFailure, KtList<Order>> get failureOrOrders;
  @JsonKey(ignore: true)
  _$$OrdersReceivedCopyWith<_$OrdersReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<Order> orders) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(KtList<Order> orders)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<Order> orders)? fetchsucceded,
    TResult Function(FirebaseFailure failure)? fetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Fetchsucceded value) fetchsucceded,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Fetchsucceded value)? fetchsucceded,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Fetchsucceded value)? fetchsucceded,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersWatcherStateCopyWith<$Res> {
  factory $OrdersWatcherStateCopyWith(
          OrdersWatcherState value, $Res Function(OrdersWatcherState) then) =
      _$OrdersWatcherStateCopyWithImpl<$Res, OrdersWatcherState>;
}

/// @nodoc
class _$OrdersWatcherStateCopyWithImpl<$Res, $Val extends OrdersWatcherState>
    implements $OrdersWatcherStateCopyWith<$Res> {
  _$OrdersWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OrdersWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrdersWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<Order> orders) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(KtList<Order> orders)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<Order> orders)? fetchsucceded,
    TResult Function(FirebaseFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Fetchsucceded value) fetchsucceded,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Fetchsucceded value)? fetchsucceded,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Fetchsucceded value)? fetchsucceded,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$OrdersWatcherStateCopyWithImpl<$Res, _$_InProgress>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'OrdersWatcherState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<Order> orders) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(KtList<Order> orders)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<Order> orders)? fetchsucceded,
    TResult Function(FirebaseFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Fetchsucceded value) fetchsucceded,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Fetchsucceded value)? fetchsucceded,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Fetchsucceded value)? fetchsucceded,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements OrdersWatcherState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$$_FetchsuccededCopyWith<$Res> {
  factory _$$_FetchsuccededCopyWith(
          _$_Fetchsucceded value, $Res Function(_$_Fetchsucceded) then) =
      __$$_FetchsuccededCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Order> orders});
}

/// @nodoc
class __$$_FetchsuccededCopyWithImpl<$Res>
    extends _$OrdersWatcherStateCopyWithImpl<$Res, _$_Fetchsucceded>
    implements _$$_FetchsuccededCopyWith<$Res> {
  __$$_FetchsuccededCopyWithImpl(
      _$_Fetchsucceded _value, $Res Function(_$_Fetchsucceded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$_Fetchsucceded(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as KtList<Order>,
    ));
  }
}

/// @nodoc

class _$_Fetchsucceded implements _Fetchsucceded {
  const _$_Fetchsucceded({required this.orders});

  @override
  final KtList<Order> orders;

  @override
  String toString() {
    return 'OrdersWatcherState.fetchsucceded(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetchsucceded &&
            (identical(other.orders, orders) || other.orders == orders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchsuccededCopyWith<_$_Fetchsucceded> get copyWith =>
      __$$_FetchsuccededCopyWithImpl<_$_Fetchsucceded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<Order> orders) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return fetchsucceded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(KtList<Order> orders)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return fetchsucceded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<Order> orders)? fetchsucceded,
    TResult Function(FirebaseFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchsucceded != null) {
      return fetchsucceded(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Fetchsucceded value) fetchsucceded,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return fetchsucceded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Fetchsucceded value)? fetchsucceded,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return fetchsucceded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Fetchsucceded value)? fetchsucceded,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchsucceded != null) {
      return fetchsucceded(this);
    }
    return orElse();
  }
}

abstract class _Fetchsucceded implements OrdersWatcherState {
  const factory _Fetchsucceded({required final KtList<Order> orders}) =
      _$_Fetchsucceded;

  KtList<Order> get orders;
  @JsonKey(ignore: true)
  _$$_FetchsuccededCopyWith<_$_Fetchsucceded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchFailedCopyWith<$Res> {
  factory _$$_FetchFailedCopyWith(
          _$_FetchFailed value, $Res Function(_$_FetchFailed) then) =
      __$$_FetchFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseFailure failure});

  $FirebaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchFailedCopyWithImpl<$Res>
    extends _$OrdersWatcherStateCopyWithImpl<$Res, _$_FetchFailed>
    implements _$$_FetchFailedCopyWith<$Res> {
  __$$_FetchFailedCopyWithImpl(
      _$_FetchFailed _value, $Res Function(_$_FetchFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchFailed(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FirebaseFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FirebaseFailureCopyWith<$Res> get failure {
    return $FirebaseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FetchFailed implements _FetchFailed {
  const _$_FetchFailed({required this.failure});

  @override
  final FirebaseFailure failure;

  @override
  String toString() {
    return 'OrdersWatcherState.fetchFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchFailedCopyWith<_$_FetchFailed> get copyWith =>
      __$$_FetchFailedCopyWithImpl<_$_FetchFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(KtList<Order> orders) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return fetchFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(KtList<Order> orders)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return fetchFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(KtList<Order> orders)? fetchsucceded,
    TResult Function(FirebaseFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchFailed != null) {
      return fetchFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Fetchsucceded value) fetchsucceded,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return fetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Fetchsucceded value)? fetchsucceded,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return fetchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Fetchsucceded value)? fetchsucceded,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchFailed != null) {
      return fetchFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchFailed implements OrdersWatcherState {
  const factory _FetchFailed({required final FirebaseFailure failure}) =
      _$_FetchFailed;

  FirebaseFailure get failure;
  @JsonKey(ignore: true)
  _$$_FetchFailedCopyWith<_$_FetchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
