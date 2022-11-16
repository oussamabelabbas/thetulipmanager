// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId orderId) watchOrderStarted,
    required TResult Function(Either<FirebaseFailure, Order> failureOrOrder)
        orderReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId orderId)? watchOrderStarted,
    TResult? Function(Either<FirebaseFailure, Order> failureOrOrder)?
        orderReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId orderId)? watchOrderStarted,
    TResult Function(Either<FirebaseFailure, Order> failureOrOrder)?
        orderReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchOrderStarted value) watchOrderStarted,
    required TResult Function(OrderReceived value) orderReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchOrderStarted value)? watchOrderStarted,
    TResult? Function(OrderReceived value)? orderReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchOrderStarted value)? watchOrderStarted,
    TResult Function(OrderReceived value)? orderReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderWatcherEventCopyWith<$Res> {
  factory $OrderWatcherEventCopyWith(
          OrderWatcherEvent value, $Res Function(OrderWatcherEvent) then) =
      _$OrderWatcherEventCopyWithImpl<$Res, OrderWatcherEvent>;
}

/// @nodoc
class _$OrderWatcherEventCopyWithImpl<$Res, $Val extends OrderWatcherEvent>
    implements $OrderWatcherEventCopyWith<$Res> {
  _$OrderWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchOrderStartedCopyWith<$Res> {
  factory _$$WatchOrderStartedCopyWith(
          _$WatchOrderStarted value, $Res Function(_$WatchOrderStarted) then) =
      __$$WatchOrderStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId orderId});
}

/// @nodoc
class __$$WatchOrderStartedCopyWithImpl<$Res>
    extends _$OrderWatcherEventCopyWithImpl<$Res, _$WatchOrderStarted>
    implements _$$WatchOrderStartedCopyWith<$Res> {
  __$$WatchOrderStartedCopyWithImpl(
      _$WatchOrderStarted _value, $Res Function(_$WatchOrderStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$WatchOrderStarted(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$WatchOrderStarted implements WatchOrderStarted {
  const _$WatchOrderStarted({required this.orderId});

  @override
  final UniqueId orderId;

  @override
  String toString() {
    return 'OrderWatcherEvent.watchOrderStarted(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchOrderStarted &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchOrderStartedCopyWith<_$WatchOrderStarted> get copyWith =>
      __$$WatchOrderStartedCopyWithImpl<_$WatchOrderStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId orderId) watchOrderStarted,
    required TResult Function(Either<FirebaseFailure, Order> failureOrOrder)
        orderReceived,
  }) {
    return watchOrderStarted(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId orderId)? watchOrderStarted,
    TResult? Function(Either<FirebaseFailure, Order> failureOrOrder)?
        orderReceived,
  }) {
    return watchOrderStarted?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId orderId)? watchOrderStarted,
    TResult Function(Either<FirebaseFailure, Order> failureOrOrder)?
        orderReceived,
    required TResult orElse(),
  }) {
    if (watchOrderStarted != null) {
      return watchOrderStarted(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchOrderStarted value) watchOrderStarted,
    required TResult Function(OrderReceived value) orderReceived,
  }) {
    return watchOrderStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchOrderStarted value)? watchOrderStarted,
    TResult? Function(OrderReceived value)? orderReceived,
  }) {
    return watchOrderStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchOrderStarted value)? watchOrderStarted,
    TResult Function(OrderReceived value)? orderReceived,
    required TResult orElse(),
  }) {
    if (watchOrderStarted != null) {
      return watchOrderStarted(this);
    }
    return orElse();
  }
}

abstract class WatchOrderStarted implements OrderWatcherEvent {
  const factory WatchOrderStarted({required final UniqueId orderId}) =
      _$WatchOrderStarted;

  UniqueId get orderId;
  @JsonKey(ignore: true)
  _$$WatchOrderStartedCopyWith<_$WatchOrderStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderReceivedCopyWith<$Res> {
  factory _$$OrderReceivedCopyWith(
          _$OrderReceived value, $Res Function(_$OrderReceived) then) =
      __$$OrderReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<FirebaseFailure, Order> failureOrOrder});
}

/// @nodoc
class __$$OrderReceivedCopyWithImpl<$Res>
    extends _$OrderWatcherEventCopyWithImpl<$Res, _$OrderReceived>
    implements _$$OrderReceivedCopyWith<$Res> {
  __$$OrderReceivedCopyWithImpl(
      _$OrderReceived _value, $Res Function(_$OrderReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrOrder = null,
  }) {
    return _then(_$OrderReceived(
      failureOrOrder: null == failureOrOrder
          ? _value.failureOrOrder
          : failureOrOrder // ignore: cast_nullable_to_non_nullable
              as Either<FirebaseFailure, Order>,
    ));
  }
}

/// @nodoc

class _$OrderReceived implements OrderReceived {
  const _$OrderReceived({required this.failureOrOrder});

  @override
  final Either<FirebaseFailure, Order> failureOrOrder;

  @override
  String toString() {
    return 'OrderWatcherEvent.orderReceived(failureOrOrder: $failureOrOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderReceived &&
            (identical(other.failureOrOrder, failureOrOrder) ||
                other.failureOrOrder == failureOrOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderReceivedCopyWith<_$OrderReceived> get copyWith =>
      __$$OrderReceivedCopyWithImpl<_$OrderReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId orderId) watchOrderStarted,
    required TResult Function(Either<FirebaseFailure, Order> failureOrOrder)
        orderReceived,
  }) {
    return orderReceived(failureOrOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId orderId)? watchOrderStarted,
    TResult? Function(Either<FirebaseFailure, Order> failureOrOrder)?
        orderReceived,
  }) {
    return orderReceived?.call(failureOrOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId orderId)? watchOrderStarted,
    TResult Function(Either<FirebaseFailure, Order> failureOrOrder)?
        orderReceived,
    required TResult orElse(),
  }) {
    if (orderReceived != null) {
      return orderReceived(failureOrOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchOrderStarted value) watchOrderStarted,
    required TResult Function(OrderReceived value) orderReceived,
  }) {
    return orderReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchOrderStarted value)? watchOrderStarted,
    TResult? Function(OrderReceived value)? orderReceived,
  }) {
    return orderReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchOrderStarted value)? watchOrderStarted,
    TResult Function(OrderReceived value)? orderReceived,
    required TResult orElse(),
  }) {
    if (orderReceived != null) {
      return orderReceived(this);
    }
    return orElse();
  }
}

abstract class OrderReceived implements OrderWatcherEvent {
  const factory OrderReceived(
          {required final Either<FirebaseFailure, Order> failureOrOrder}) =
      _$OrderReceived;

  Either<FirebaseFailure, Order> get failureOrOrder;
  @JsonKey(ignore: true)
  _$$OrderReceivedCopyWith<_$OrderReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Order order) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Order order)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Order order)? fetchsucceded,
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
abstract class $OrderWatcherStateCopyWith<$Res> {
  factory $OrderWatcherStateCopyWith(
          OrderWatcherState value, $Res Function(OrderWatcherState) then) =
      _$OrderWatcherStateCopyWithImpl<$Res, OrderWatcherState>;
}

/// @nodoc
class _$OrderWatcherStateCopyWithImpl<$Res, $Val extends OrderWatcherState>
    implements $OrderWatcherStateCopyWith<$Res> {
  _$OrderWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderWatcherState.initial()';
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
    required TResult Function(Order order) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Order order)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Order order)? fetchsucceded,
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

abstract class _Initial implements OrderWatcherState {
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
    extends _$OrderWatcherStateCopyWithImpl<$Res, _$_InProgress>
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
    return 'OrderWatcherState.inProgress()';
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
    required TResult Function(Order order) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Order order)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Order order)? fetchsucceded,
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

abstract class _InProgress implements OrderWatcherState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$$_FetchsuccededCopyWith<$Res> {
  factory _$$_FetchsuccededCopyWith(
          _$_Fetchsucceded value, $Res Function(_$_Fetchsucceded) then) =
      __$$_FetchsuccededCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_FetchsuccededCopyWithImpl<$Res>
    extends _$OrderWatcherStateCopyWithImpl<$Res, _$_Fetchsucceded>
    implements _$$_FetchsuccededCopyWith<$Res> {
  __$$_FetchsuccededCopyWithImpl(
      _$_Fetchsucceded _value, $Res Function(_$_Fetchsucceded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$_Fetchsucceded(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$_Fetchsucceded implements _Fetchsucceded {
  const _$_Fetchsucceded({required this.order});

  @override
  final Order order;

  @override
  String toString() {
    return 'OrderWatcherState.fetchsucceded(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetchsucceded &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

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
    required TResult Function(Order order) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return fetchsucceded(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Order order)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return fetchsucceded?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Order order)? fetchsucceded,
    TResult Function(FirebaseFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchsucceded != null) {
      return fetchsucceded(order);
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

abstract class _Fetchsucceded implements OrderWatcherState {
  const factory _Fetchsucceded({required final Order order}) = _$_Fetchsucceded;

  Order get order;
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
    extends _$OrderWatcherStateCopyWithImpl<$Res, _$_FetchFailed>
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
    return 'OrderWatcherState.fetchFailed(failure: $failure)';
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
    required TResult Function(Order order) fetchsucceded,
    required TResult Function(FirebaseFailure failure) fetchFailed,
  }) {
    return fetchFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Order order)? fetchsucceded,
    TResult? Function(FirebaseFailure failure)? fetchFailed,
  }) {
    return fetchFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Order order)? fetchsucceded,
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

abstract class _FetchFailed implements OrderWatcherState {
  const factory _FetchFailed({required final FirebaseFailure failure}) =
      _$_FetchFailed;

  FirebaseFailure get failure;
  @JsonKey(ignore: true)
  _$$_FetchFailedCopyWith<_$_FetchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
