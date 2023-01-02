// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function() watchOrdersStarted,
    required TResult Function(OrderState watchedState) watchedStateChanged,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchOrdersStarted,
    TResult? Function(OrderState watchedState)? watchedStateChanged,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchOrdersStarted,
    TResult Function(OrderState watchedState)? watchedStateChanged,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchOrdersStarted value) watchOrdersStarted,
    required TResult Function(WatchedStateChanged value) watchedStateChanged,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult? Function(WatchedStateChanged value)? watchedStateChanged,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult Function(WatchedStateChanged value)? watchedStateChanged,
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
abstract class _$$WatchOrdersStartedCopyWith<$Res> {
  factory _$$WatchOrdersStartedCopyWith(_$WatchOrdersStarted value,
          $Res Function(_$WatchOrdersStarted) then) =
      __$$WatchOrdersStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchOrdersStartedCopyWithImpl<$Res>
    extends _$OrdersWatcherEventCopyWithImpl<$Res, _$WatchOrdersStarted>
    implements _$$WatchOrdersStartedCopyWith<$Res> {
  __$$WatchOrdersStartedCopyWithImpl(
      _$WatchOrdersStarted _value, $Res Function(_$WatchOrdersStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchOrdersStarted implements WatchOrdersStarted {
  const _$WatchOrdersStarted();

  @override
  String toString() {
    return 'OrdersWatcherEvent.watchOrdersStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchOrdersStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchOrdersStarted,
    required TResult Function(OrderState watchedState) watchedStateChanged,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) {
    return watchOrdersStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchOrdersStarted,
    TResult? Function(OrderState watchedState)? watchedStateChanged,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) {
    return watchOrdersStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchOrdersStarted,
    TResult Function(OrderState watchedState)? watchedStateChanged,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (watchOrdersStarted != null) {
      return watchOrdersStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchOrdersStarted value) watchOrdersStarted,
    required TResult Function(WatchedStateChanged value) watchedStateChanged,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) {
    return watchOrdersStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult? Function(WatchedStateChanged value)? watchedStateChanged,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) {
    return watchOrdersStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult Function(WatchedStateChanged value)? watchedStateChanged,
    TResult Function(OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (watchOrdersStarted != null) {
      return watchOrdersStarted(this);
    }
    return orElse();
  }
}

abstract class WatchOrdersStarted implements OrdersWatcherEvent {
  const factory WatchOrdersStarted() = _$WatchOrdersStarted;
}

/// @nodoc
abstract class _$$WatchedStateChangedCopyWith<$Res> {
  factory _$$WatchedStateChangedCopyWith(_$WatchedStateChanged value,
          $Res Function(_$WatchedStateChanged) then) =
      __$$WatchedStateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderState watchedState});
}

/// @nodoc
class __$$WatchedStateChangedCopyWithImpl<$Res>
    extends _$OrdersWatcherEventCopyWithImpl<$Res, _$WatchedStateChanged>
    implements _$$WatchedStateChangedCopyWith<$Res> {
  __$$WatchedStateChangedCopyWithImpl(
      _$WatchedStateChanged _value, $Res Function(_$WatchedStateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? watchedState = null,
  }) {
    return _then(_$WatchedStateChanged(
      watchedState: null == watchedState
          ? _value.watchedState
          : watchedState // ignore: cast_nullable_to_non_nullable
              as OrderState,
    ));
  }
}

/// @nodoc

class _$WatchedStateChanged implements WatchedStateChanged {
  const _$WatchedStateChanged({required this.watchedState});

  @override
  final OrderState watchedState;

  @override
  String toString() {
    return 'OrdersWatcherEvent.watchedStateChanged(watchedState: $watchedState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchedStateChanged &&
            (identical(other.watchedState, watchedState) ||
                other.watchedState == watchedState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, watchedState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchedStateChangedCopyWith<_$WatchedStateChanged> get copyWith =>
      __$$WatchedStateChangedCopyWithImpl<_$WatchedStateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchOrdersStarted,
    required TResult Function(OrderState watchedState) watchedStateChanged,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) {
    return watchedStateChanged(watchedState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchOrdersStarted,
    TResult? Function(OrderState watchedState)? watchedStateChanged,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) {
    return watchedStateChanged?.call(watchedState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchOrdersStarted,
    TResult Function(OrderState watchedState)? watchedStateChanged,
    TResult Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
    required TResult orElse(),
  }) {
    if (watchedStateChanged != null) {
      return watchedStateChanged(watchedState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchOrdersStarted value) watchOrdersStarted,
    required TResult Function(WatchedStateChanged value) watchedStateChanged,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) {
    return watchedStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult? Function(WatchedStateChanged value)? watchedStateChanged,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) {
    return watchedStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult Function(WatchedStateChanged value)? watchedStateChanged,
    TResult Function(OrdersReceived value)? ordersReceived,
    required TResult orElse(),
  }) {
    if (watchedStateChanged != null) {
      return watchedStateChanged(this);
    }
    return orElse();
  }
}

abstract class WatchedStateChanged implements OrdersWatcherEvent {
  const factory WatchedStateChanged({required final OrderState watchedState}) =
      _$WatchedStateChanged;

  OrderState get watchedState;
  @JsonKey(ignore: true)
  _$$WatchedStateChangedCopyWith<_$WatchedStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() watchOrdersStarted,
    required TResult Function(OrderState watchedState) watchedStateChanged,
    required TResult Function(
            Either<FirebaseFailure, KtList<Order>> failureOrOrders)
        ordersReceived,
  }) {
    return ordersReceived(failureOrOrders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchOrdersStarted,
    TResult? Function(OrderState watchedState)? watchedStateChanged,
    TResult? Function(Either<FirebaseFailure, KtList<Order>> failureOrOrders)?
        ordersReceived,
  }) {
    return ordersReceived?.call(failureOrOrders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchOrdersStarted,
    TResult Function(OrderState watchedState)? watchedStateChanged,
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
    required TResult Function(WatchOrdersStarted value) watchOrdersStarted,
    required TResult Function(WatchedStateChanged value) watchedStateChanged,
    required TResult Function(OrdersReceived value) ordersReceived,
  }) {
    return ordersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult? Function(WatchedStateChanged value)? watchedStateChanged,
    TResult? Function(OrdersReceived value)? ordersReceived,
  }) {
    return ordersReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchOrdersStarted value)? watchOrdersStarted,
    TResult Function(WatchedStateChanged value)? watchedStateChanged,
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
  bool get inProgress => throw _privateConstructorUsedError;
  OrderState get watchedState => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, KtList<Order>>> get failureOrOrdersOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersWatcherStateCopyWith<OrdersWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersWatcherStateCopyWith<$Res> {
  factory $OrdersWatcherStateCopyWith(
          OrdersWatcherState value, $Res Function(OrdersWatcherState) then) =
      _$OrdersWatcherStateCopyWithImpl<$Res, OrdersWatcherState>;
  @useResult
  $Res call(
      {bool inProgress,
      OrderState watchedState,
      Option<Either<FirebaseFailure, KtList<Order>>> failureOrOrdersOption});
}

/// @nodoc
class _$OrdersWatcherStateCopyWithImpl<$Res, $Val extends OrdersWatcherState>
    implements $OrdersWatcherStateCopyWith<$Res> {
  _$OrdersWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? watchedState = null,
    Object? failureOrOrdersOption = null,
  }) {
    return _then(_value.copyWith(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      watchedState: null == watchedState
          ? _value.watchedState
          : watchedState // ignore: cast_nullable_to_non_nullable
              as OrderState,
      failureOrOrdersOption: null == failureOrOrdersOption
          ? _value.failureOrOrdersOption
          : failureOrOrdersOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, KtList<Order>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersWatcherStateCopyWith<$Res>
    implements $OrdersWatcherStateCopyWith<$Res> {
  factory _$$_OrdersWatcherStateCopyWith(_$_OrdersWatcherState value,
          $Res Function(_$_OrdersWatcherState) then) =
      __$$_OrdersWatcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProgress,
      OrderState watchedState,
      Option<Either<FirebaseFailure, KtList<Order>>> failureOrOrdersOption});
}

/// @nodoc
class __$$_OrdersWatcherStateCopyWithImpl<$Res>
    extends _$OrdersWatcherStateCopyWithImpl<$Res, _$_OrdersWatcherState>
    implements _$$_OrdersWatcherStateCopyWith<$Res> {
  __$$_OrdersWatcherStateCopyWithImpl(
      _$_OrdersWatcherState _value, $Res Function(_$_OrdersWatcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? watchedState = null,
    Object? failureOrOrdersOption = null,
  }) {
    return _then(_$_OrdersWatcherState(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      watchedState: null == watchedState
          ? _value.watchedState
          : watchedState // ignore: cast_nullable_to_non_nullable
              as OrderState,
      failureOrOrdersOption: null == failureOrOrdersOption
          ? _value.failureOrOrdersOption
          : failureOrOrdersOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, KtList<Order>>>,
    ));
  }
}

/// @nodoc

class _$_OrdersWatcherState implements _OrdersWatcherState {
  const _$_OrdersWatcherState(
      {required this.inProgress,
      required this.watchedState,
      required this.failureOrOrdersOption});

  @override
  final bool inProgress;
  @override
  final OrderState watchedState;
  @override
  final Option<Either<FirebaseFailure, KtList<Order>>> failureOrOrdersOption;

  @override
  String toString() {
    return 'OrdersWatcherState(inProgress: $inProgress, watchedState: $watchedState, failureOrOrdersOption: $failureOrOrdersOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersWatcherState &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.watchedState, watchedState) ||
                other.watchedState == watchedState) &&
            (identical(other.failureOrOrdersOption, failureOrOrdersOption) ||
                other.failureOrOrdersOption == failureOrOrdersOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, inProgress, watchedState, failureOrOrdersOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersWatcherStateCopyWith<_$_OrdersWatcherState> get copyWith =>
      __$$_OrdersWatcherStateCopyWithImpl<_$_OrdersWatcherState>(
          this, _$identity);
}

abstract class _OrdersWatcherState implements OrdersWatcherState {
  const factory _OrdersWatcherState(
      {required final bool inProgress,
      required final OrderState watchedState,
      required final Option<Either<FirebaseFailure, KtList<Order>>>
          failureOrOrdersOption}) = _$_OrdersWatcherState;

  @override
  bool get inProgress;
  @override
  OrderState get watchedState;
  @override
  Option<Either<FirebaseFailure, KtList<Order>>> get failureOrOrdersOption;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersWatcherStateCopyWith<_$_OrdersWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
