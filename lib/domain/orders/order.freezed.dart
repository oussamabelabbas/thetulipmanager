// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Order {
  UniqueId? get orderId => throw _privateConstructorUsedError;
  Client get client => throw _privateConstructorUsedError;
  KtList<OrderTask> get orderTasks => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  DateTime get orderDeliveryDate => throw _privateConstructorUsedError;
  Price get orderPrice => throw _privateConstructorUsedError;
  OrderState get orderState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {UniqueId? orderId,
      Client client,
      KtList<OrderTask> orderTasks,
      DateTime orderDate,
      DateTime orderDeliveryDate,
      Price orderPrice,
      OrderState orderState});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? client = null,
    Object? orderTasks = null,
    Object? orderDate = null,
    Object? orderDeliveryDate = null,
    Object? orderPrice = null,
    Object? orderState = null,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      orderTasks: null == orderTasks
          ? _value.orderTasks
          : orderTasks // ignore: cast_nullable_to_non_nullable
              as KtList<OrderTask>,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderDeliveryDate: null == orderDeliveryDate
          ? _value.orderDeliveryDate
          : orderDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderPrice: null == orderPrice
          ? _value.orderPrice
          : orderPrice // ignore: cast_nullable_to_non_nullable
              as Price,
      orderState: null == orderState
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as OrderState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId? orderId,
      Client client,
      KtList<OrderTask> orderTasks,
      DateTime orderDate,
      DateTime orderDeliveryDate,
      Price orderPrice,
      OrderState orderState});

  @override
  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? client = null,
    Object? orderTasks = null,
    Object? orderDate = null,
    Object? orderDeliveryDate = null,
    Object? orderPrice = null,
    Object? orderState = null,
  }) {
    return _then(_$_Order(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      orderTasks: null == orderTasks
          ? _value.orderTasks
          : orderTasks // ignore: cast_nullable_to_non_nullable
              as KtList<OrderTask>,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderDeliveryDate: null == orderDeliveryDate
          ? _value.orderDeliveryDate
          : orderDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderPrice: null == orderPrice
          ? _value.orderPrice
          : orderPrice // ignore: cast_nullable_to_non_nullable
              as Price,
      orderState: null == orderState
          ? _value.orderState
          : orderState // ignore: cast_nullable_to_non_nullable
              as OrderState,
    ));
  }
}

/// @nodoc

class _$_Order implements _Order {
  const _$_Order(
      {this.orderId,
      required this.client,
      required this.orderTasks,
      required this.orderDate,
      required this.orderDeliveryDate,
      required this.orderPrice,
      required this.orderState});

  @override
  final UniqueId? orderId;
  @override
  final Client client;
  @override
  final KtList<OrderTask> orderTasks;
  @override
  final DateTime orderDate;
  @override
  final DateTime orderDeliveryDate;
  @override
  final Price orderPrice;
  @override
  final OrderState orderState;

  @override
  String toString() {
    return 'Order(orderId: $orderId, client: $client, orderTasks: $orderTasks, orderDate: $orderDate, orderDeliveryDate: $orderDeliveryDate, orderPrice: $orderPrice, orderState: $orderState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.orderTasks, orderTasks) ||
                other.orderTasks == orderTasks) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderDeliveryDate, orderDeliveryDate) ||
                other.orderDeliveryDate == orderDeliveryDate) &&
            (identical(other.orderPrice, orderPrice) ||
                other.orderPrice == orderPrice) &&
            (identical(other.orderState, orderState) ||
                other.orderState == orderState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, client, orderTasks,
      orderDate, orderDeliveryDate, orderPrice, orderState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);
}

abstract class _Order implements Order {
  const factory _Order(
      {final UniqueId? orderId,
      required final Client client,
      required final KtList<OrderTask> orderTasks,
      required final DateTime orderDate,
      required final DateTime orderDeliveryDate,
      required final Price orderPrice,
      required final OrderState orderState}) = _$_Order;

  @override
  UniqueId? get orderId;
  @override
  Client get client;
  @override
  KtList<OrderTask> get orderTasks;
  @override
  DateTime get orderDate;
  @override
  DateTime get orderDeliveryDate;
  @override
  Price get orderPrice;
  @override
  OrderState get orderState;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
