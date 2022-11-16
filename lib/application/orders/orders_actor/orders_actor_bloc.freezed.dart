// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order, OrderTask task) toggleTaskState,
    required TResult Function(UniqueId orderId) toggleOrderDone,
    required TResult Function(UniqueId orderId) toggleOrderArchived,
    required TResult Function(UniqueId orderId) deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order, OrderTask task)? toggleTaskState,
    TResult? Function(UniqueId orderId)? toggleOrderDone,
    TResult? Function(UniqueId orderId)? toggleOrderArchived,
    TResult? Function(UniqueId orderId)? deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order, OrderTask task)? toggleTaskState,
    TResult Function(UniqueId orderId)? toggleOrderDone,
    TResult Function(UniqueId orderId)? toggleOrderArchived,
    TResult Function(UniqueId orderId)? deleteOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleTaskState value) toggleTaskState,
    required TResult Function(ToggleOrderDone value) toggleOrderDone,
    required TResult Function(ToggleOrderArchived value) toggleOrderArchived,
    required TResult Function(DeleteOrder value) deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleTaskState value)? toggleTaskState,
    TResult? Function(ToggleOrderDone value)? toggleOrderDone,
    TResult? Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult? Function(DeleteOrder value)? deleteOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleTaskState value)? toggleTaskState,
    TResult Function(ToggleOrderDone value)? toggleOrderDone,
    TResult Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult Function(DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersActorEventCopyWith<$Res> {
  factory $OrdersActorEventCopyWith(
          OrdersActorEvent value, $Res Function(OrdersActorEvent) then) =
      _$OrdersActorEventCopyWithImpl<$Res, OrdersActorEvent>;
}

/// @nodoc
class _$OrdersActorEventCopyWithImpl<$Res, $Val extends OrdersActorEvent>
    implements $OrdersActorEventCopyWith<$Res> {
  _$OrdersActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleTaskStateCopyWith<$Res> {
  factory _$$ToggleTaskStateCopyWith(
          _$ToggleTaskState value, $Res Function(_$ToggleTaskState) then) =
      __$$ToggleTaskStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order, OrderTask task});

  $OrderCopyWith<$Res> get order;
  $OrderTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$ToggleTaskStateCopyWithImpl<$Res>
    extends _$OrdersActorEventCopyWithImpl<$Res, _$ToggleTaskState>
    implements _$$ToggleTaskStateCopyWith<$Res> {
  __$$ToggleTaskStateCopyWithImpl(
      _$ToggleTaskState _value, $Res Function(_$ToggleTaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? task = null,
  }) {
    return _then(_$ToggleTaskState(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as OrderTask,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderTaskCopyWith<$Res> get task {
    return $OrderTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$ToggleTaskState implements ToggleTaskState {
  const _$ToggleTaskState({required this.order, required this.task});

  @override
  final Order order;
  @override
  final OrderTask task;

  @override
  String toString() {
    return 'OrdersActorEvent.toggleTaskState(order: $order, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleTaskState &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleTaskStateCopyWith<_$ToggleTaskState> get copyWith =>
      __$$ToggleTaskStateCopyWithImpl<_$ToggleTaskState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order, OrderTask task) toggleTaskState,
    required TResult Function(UniqueId orderId) toggleOrderDone,
    required TResult Function(UniqueId orderId) toggleOrderArchived,
    required TResult Function(UniqueId orderId) deleteOrder,
  }) {
    return toggleTaskState(order, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order, OrderTask task)? toggleTaskState,
    TResult? Function(UniqueId orderId)? toggleOrderDone,
    TResult? Function(UniqueId orderId)? toggleOrderArchived,
    TResult? Function(UniqueId orderId)? deleteOrder,
  }) {
    return toggleTaskState?.call(order, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order, OrderTask task)? toggleTaskState,
    TResult Function(UniqueId orderId)? toggleOrderDone,
    TResult Function(UniqueId orderId)? toggleOrderArchived,
    TResult Function(UniqueId orderId)? deleteOrder,
    required TResult orElse(),
  }) {
    if (toggleTaskState != null) {
      return toggleTaskState(order, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleTaskState value) toggleTaskState,
    required TResult Function(ToggleOrderDone value) toggleOrderDone,
    required TResult Function(ToggleOrderArchived value) toggleOrderArchived,
    required TResult Function(DeleteOrder value) deleteOrder,
  }) {
    return toggleTaskState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleTaskState value)? toggleTaskState,
    TResult? Function(ToggleOrderDone value)? toggleOrderDone,
    TResult? Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult? Function(DeleteOrder value)? deleteOrder,
  }) {
    return toggleTaskState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleTaskState value)? toggleTaskState,
    TResult Function(ToggleOrderDone value)? toggleOrderDone,
    TResult Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult Function(DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (toggleTaskState != null) {
      return toggleTaskState(this);
    }
    return orElse();
  }
}

abstract class ToggleTaskState implements OrdersActorEvent {
  const factory ToggleTaskState(
      {required final Order order,
      required final OrderTask task}) = _$ToggleTaskState;

  Order get order;
  OrderTask get task;
  @JsonKey(ignore: true)
  _$$ToggleTaskStateCopyWith<_$ToggleTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleOrderDoneCopyWith<$Res> {
  factory _$$ToggleOrderDoneCopyWith(
          _$ToggleOrderDone value, $Res Function(_$ToggleOrderDone) then) =
      __$$ToggleOrderDoneCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId orderId});
}

/// @nodoc
class __$$ToggleOrderDoneCopyWithImpl<$Res>
    extends _$OrdersActorEventCopyWithImpl<$Res, _$ToggleOrderDone>
    implements _$$ToggleOrderDoneCopyWith<$Res> {
  __$$ToggleOrderDoneCopyWithImpl(
      _$ToggleOrderDone _value, $Res Function(_$ToggleOrderDone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$ToggleOrderDone(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$ToggleOrderDone implements ToggleOrderDone {
  const _$ToggleOrderDone({required this.orderId});

  @override
  final UniqueId orderId;

  @override
  String toString() {
    return 'OrdersActorEvent.toggleOrderDone(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleOrderDone &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleOrderDoneCopyWith<_$ToggleOrderDone> get copyWith =>
      __$$ToggleOrderDoneCopyWithImpl<_$ToggleOrderDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order, OrderTask task) toggleTaskState,
    required TResult Function(UniqueId orderId) toggleOrderDone,
    required TResult Function(UniqueId orderId) toggleOrderArchived,
    required TResult Function(UniqueId orderId) deleteOrder,
  }) {
    return toggleOrderDone(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order, OrderTask task)? toggleTaskState,
    TResult? Function(UniqueId orderId)? toggleOrderDone,
    TResult? Function(UniqueId orderId)? toggleOrderArchived,
    TResult? Function(UniqueId orderId)? deleteOrder,
  }) {
    return toggleOrderDone?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order, OrderTask task)? toggleTaskState,
    TResult Function(UniqueId orderId)? toggleOrderDone,
    TResult Function(UniqueId orderId)? toggleOrderArchived,
    TResult Function(UniqueId orderId)? deleteOrder,
    required TResult orElse(),
  }) {
    if (toggleOrderDone != null) {
      return toggleOrderDone(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleTaskState value) toggleTaskState,
    required TResult Function(ToggleOrderDone value) toggleOrderDone,
    required TResult Function(ToggleOrderArchived value) toggleOrderArchived,
    required TResult Function(DeleteOrder value) deleteOrder,
  }) {
    return toggleOrderDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleTaskState value)? toggleTaskState,
    TResult? Function(ToggleOrderDone value)? toggleOrderDone,
    TResult? Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult? Function(DeleteOrder value)? deleteOrder,
  }) {
    return toggleOrderDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleTaskState value)? toggleTaskState,
    TResult Function(ToggleOrderDone value)? toggleOrderDone,
    TResult Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult Function(DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (toggleOrderDone != null) {
      return toggleOrderDone(this);
    }
    return orElse();
  }
}

abstract class ToggleOrderDone implements OrdersActorEvent {
  const factory ToggleOrderDone({required final UniqueId orderId}) =
      _$ToggleOrderDone;

  UniqueId get orderId;
  @JsonKey(ignore: true)
  _$$ToggleOrderDoneCopyWith<_$ToggleOrderDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleOrderArchivedCopyWith<$Res> {
  factory _$$ToggleOrderArchivedCopyWith(_$ToggleOrderArchived value,
          $Res Function(_$ToggleOrderArchived) then) =
      __$$ToggleOrderArchivedCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId orderId});
}

/// @nodoc
class __$$ToggleOrderArchivedCopyWithImpl<$Res>
    extends _$OrdersActorEventCopyWithImpl<$Res, _$ToggleOrderArchived>
    implements _$$ToggleOrderArchivedCopyWith<$Res> {
  __$$ToggleOrderArchivedCopyWithImpl(
      _$ToggleOrderArchived _value, $Res Function(_$ToggleOrderArchived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$ToggleOrderArchived(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$ToggleOrderArchived implements ToggleOrderArchived {
  const _$ToggleOrderArchived({required this.orderId});

  @override
  final UniqueId orderId;

  @override
  String toString() {
    return 'OrdersActorEvent.toggleOrderArchived(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleOrderArchived &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleOrderArchivedCopyWith<_$ToggleOrderArchived> get copyWith =>
      __$$ToggleOrderArchivedCopyWithImpl<_$ToggleOrderArchived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order, OrderTask task) toggleTaskState,
    required TResult Function(UniqueId orderId) toggleOrderDone,
    required TResult Function(UniqueId orderId) toggleOrderArchived,
    required TResult Function(UniqueId orderId) deleteOrder,
  }) {
    return toggleOrderArchived(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order, OrderTask task)? toggleTaskState,
    TResult? Function(UniqueId orderId)? toggleOrderDone,
    TResult? Function(UniqueId orderId)? toggleOrderArchived,
    TResult? Function(UniqueId orderId)? deleteOrder,
  }) {
    return toggleOrderArchived?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order, OrderTask task)? toggleTaskState,
    TResult Function(UniqueId orderId)? toggleOrderDone,
    TResult Function(UniqueId orderId)? toggleOrderArchived,
    TResult Function(UniqueId orderId)? deleteOrder,
    required TResult orElse(),
  }) {
    if (toggleOrderArchived != null) {
      return toggleOrderArchived(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleTaskState value) toggleTaskState,
    required TResult Function(ToggleOrderDone value) toggleOrderDone,
    required TResult Function(ToggleOrderArchived value) toggleOrderArchived,
    required TResult Function(DeleteOrder value) deleteOrder,
  }) {
    return toggleOrderArchived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleTaskState value)? toggleTaskState,
    TResult? Function(ToggleOrderDone value)? toggleOrderDone,
    TResult? Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult? Function(DeleteOrder value)? deleteOrder,
  }) {
    return toggleOrderArchived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleTaskState value)? toggleTaskState,
    TResult Function(ToggleOrderDone value)? toggleOrderDone,
    TResult Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult Function(DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (toggleOrderArchived != null) {
      return toggleOrderArchived(this);
    }
    return orElse();
  }
}

abstract class ToggleOrderArchived implements OrdersActorEvent {
  const factory ToggleOrderArchived({required final UniqueId orderId}) =
      _$ToggleOrderArchived;

  UniqueId get orderId;
  @JsonKey(ignore: true)
  _$$ToggleOrderArchivedCopyWith<_$ToggleOrderArchived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteOrderCopyWith<$Res> {
  factory _$$DeleteOrderCopyWith(
          _$DeleteOrder value, $Res Function(_$DeleteOrder) then) =
      __$$DeleteOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId orderId});
}

/// @nodoc
class __$$DeleteOrderCopyWithImpl<$Res>
    extends _$OrdersActorEventCopyWithImpl<$Res, _$DeleteOrder>
    implements _$$DeleteOrderCopyWith<$Res> {
  __$$DeleteOrderCopyWithImpl(
      _$DeleteOrder _value, $Res Function(_$DeleteOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$DeleteOrder(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$DeleteOrder implements DeleteOrder {
  const _$DeleteOrder({required this.orderId});

  @override
  final UniqueId orderId;

  @override
  String toString() {
    return 'OrdersActorEvent.deleteOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOrder &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOrderCopyWith<_$DeleteOrder> get copyWith =>
      __$$DeleteOrderCopyWithImpl<_$DeleteOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order, OrderTask task) toggleTaskState,
    required TResult Function(UniqueId orderId) toggleOrderDone,
    required TResult Function(UniqueId orderId) toggleOrderArchived,
    required TResult Function(UniqueId orderId) deleteOrder,
  }) {
    return deleteOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order, OrderTask task)? toggleTaskState,
    TResult? Function(UniqueId orderId)? toggleOrderDone,
    TResult? Function(UniqueId orderId)? toggleOrderArchived,
    TResult? Function(UniqueId orderId)? deleteOrder,
  }) {
    return deleteOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order, OrderTask task)? toggleTaskState,
    TResult Function(UniqueId orderId)? toggleOrderDone,
    TResult Function(UniqueId orderId)? toggleOrderArchived,
    TResult Function(UniqueId orderId)? deleteOrder,
    required TResult orElse(),
  }) {
    if (deleteOrder != null) {
      return deleteOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleTaskState value) toggleTaskState,
    required TResult Function(ToggleOrderDone value) toggleOrderDone,
    required TResult Function(ToggleOrderArchived value) toggleOrderArchived,
    required TResult Function(DeleteOrder value) deleteOrder,
  }) {
    return deleteOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleTaskState value)? toggleTaskState,
    TResult? Function(ToggleOrderDone value)? toggleOrderDone,
    TResult? Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult? Function(DeleteOrder value)? deleteOrder,
  }) {
    return deleteOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleTaskState value)? toggleTaskState,
    TResult Function(ToggleOrderDone value)? toggleOrderDone,
    TResult Function(ToggleOrderArchived value)? toggleOrderArchived,
    TResult Function(DeleteOrder value)? deleteOrder,
    required TResult orElse(),
  }) {
    if (deleteOrder != null) {
      return deleteOrder(this);
    }
    return orElse();
  }
}

abstract class DeleteOrder implements OrdersActorEvent {
  const factory DeleteOrder({required final UniqueId orderId}) = _$DeleteOrder;

  UniqueId get orderId;
  @JsonKey(ignore: true)
  _$$DeleteOrderCopyWith<_$DeleteOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersActorState {
  bool get isBusy =>
      throw _privateConstructorUsedError; //if true nothing works without a loading
  Option<Either<FirebaseFailure, FirebaseSuccess>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersActorStateCopyWith<OrdersActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersActorStateCopyWith<$Res> {
  factory $OrdersActorStateCopyWith(
          OrdersActorState value, $Res Function(OrdersActorState) then) =
      _$OrdersActorStateCopyWithImpl<$Res, OrdersActorState>;
  @useResult
  $Res call(
      {bool isBusy,
      Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption});
}

/// @nodoc
class _$OrdersActorStateCopyWithImpl<$Res, $Val extends OrdersActorState>
    implements $OrdersActorStateCopyWith<$Res> {
  _$OrdersActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusy = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, FirebaseSuccess>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersActorStateCopyWith<$Res>
    implements $OrdersActorStateCopyWith<$Res> {
  factory _$$_OrdersActorStateCopyWith(
          _$_OrdersActorState value, $Res Function(_$_OrdersActorState) then) =
      __$$_OrdersActorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isBusy,
      Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption});
}

/// @nodoc
class __$$_OrdersActorStateCopyWithImpl<$Res>
    extends _$OrdersActorStateCopyWithImpl<$Res, _$_OrdersActorState>
    implements _$$_OrdersActorStateCopyWith<$Res> {
  __$$_OrdersActorStateCopyWithImpl(
      _$_OrdersActorState _value, $Res Function(_$_OrdersActorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusy = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_OrdersActorState(
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, FirebaseSuccess>>,
    ));
  }
}

/// @nodoc

class _$_OrdersActorState implements _OrdersActorState {
  const _$_OrdersActorState(
      {required this.isBusy, required this.failureOrSuccessOption});

  @override
  final bool isBusy;
//if true nothing works without a loading
  @override
  final Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption;

  @override
  String toString() {
    return 'OrdersActorState(isBusy: $isBusy, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersActorState &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBusy, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersActorStateCopyWith<_$_OrdersActorState> get copyWith =>
      __$$_OrdersActorStateCopyWithImpl<_$_OrdersActorState>(this, _$identity);
}

abstract class _OrdersActorState implements OrdersActorState {
  const factory _OrdersActorState(
      {required final bool isBusy,
      required final Option<Either<FirebaseFailure, FirebaseSuccess>>
          failureOrSuccessOption}) = _$_OrdersActorState;

  @override
  bool get isBusy;
  @override //if true nothing works without a loading
  Option<Either<FirebaseFailure, FirebaseSuccess>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersActorStateCopyWith<_$_OrdersActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
