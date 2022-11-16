// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Order {
  UniqueId? get id => throw _privateConstructorUsedError;
  String get orderTitle => throw _privateConstructorUsedError;
  Client get client => throw _privateConstructorUsedError;
  String get orderDescription => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  KtList<OrderTask> get tasks => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isArchived => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {UniqueId? id,
      String orderTitle,
      Client client,
      String orderDescription,
      DateTime orderDate,
      DateTime deliveryDate,
      Price price,
      KtList<OrderTask> tasks,
      bool isDone,
      bool isArchived});

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
    Object? id = freezed,
    Object? orderTitle = null,
    Object? client = null,
    Object? orderDescription = null,
    Object? orderDate = null,
    Object? deliveryDate = null,
    Object? price = null,
    Object? tasks = null,
    Object? isDone = null,
    Object? isArchived = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      orderTitle: null == orderTitle
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as KtList<OrderTask>,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {UniqueId? id,
      String orderTitle,
      Client client,
      String orderDescription,
      DateTime orderDate,
      DateTime deliveryDate,
      Price price,
      KtList<OrderTask> tasks,
      bool isDone,
      bool isArchived});

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
    Object? id = freezed,
    Object? orderTitle = null,
    Object? client = null,
    Object? orderDescription = null,
    Object? orderDate = null,
    Object? deliveryDate = null,
    Object? price = null,
    Object? tasks = null,
    Object? isDone = null,
    Object? isArchived = null,
  }) {
    return _then(_$_Order(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      orderTitle: null == orderTitle
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as KtList<OrderTask>,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Order implements _Order {
  const _$_Order(
      {this.id,
      required this.orderTitle,
      required this.client,
      required this.orderDescription,
      required this.orderDate,
      required this.deliveryDate,
      required this.price,
      required this.tasks,
      required this.isDone,
      required this.isArchived});

  @override
  final UniqueId? id;
  @override
  final String orderTitle;
  @override
  final Client client;
  @override
  final String orderDescription;
  @override
  final DateTime orderDate;
  @override
  final DateTime deliveryDate;
  @override
  final Price price;
  @override
  final KtList<OrderTask> tasks;
  @override
  final bool isDone;
  @override
  final bool isArchived;

  @override
  String toString() {
    return 'Order(id: $id, orderTitle: $orderTitle, client: $client, orderDescription: $orderDescription, orderDate: $orderDate, deliveryDate: $deliveryDate, price: $price, tasks: $tasks, isDone: $isDone, isArchived: $isArchived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderTitle, orderTitle) ||
                other.orderTitle == orderTitle) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderTitle,
      client,
      orderDescription,
      orderDate,
      deliveryDate,
      price,
      tasks,
      isDone,
      isArchived);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);
}

abstract class _Order implements Order {
  const factory _Order(
      {final UniqueId? id,
      required final String orderTitle,
      required final Client client,
      required final String orderDescription,
      required final DateTime orderDate,
      required final DateTime deliveryDate,
      required final Price price,
      required final KtList<OrderTask> tasks,
      required final bool isDone,
      required final bool isArchived}) = _$_Order;

  @override
  UniqueId? get id;
  @override
  String get orderTitle;
  @override
  Client get client;
  @override
  String get orderDescription;
  @override
  DateTime get orderDate;
  @override
  DateTime get deliveryDate;
  @override
  Price get price;
  @override
  KtList<OrderTask> get tasks;
  @override
  bool get isDone;
  @override
  bool get isArchived;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
