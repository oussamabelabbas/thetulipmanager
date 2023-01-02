// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
  @JsonKey(ignore: true)
  String? get orderId => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  ClientDto get client => throw _privateConstructorUsedError;
  List<OrderTaskDto> get tasks => throw _privateConstructorUsedError;
  int get millisecondsSinceEpochOrderDate => throw _privateConstructorUsedError;
  int get millisecondsSinceEpochOrderDeliveryDate =>
      throw _privateConstructorUsedError;
  double get orderPrice => throw _privateConstructorUsedError;
  String get orderStateName => throw _privateConstructorUsedError;
  bool? get isError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? orderId,
      String clientId,
      ClientDto client,
      List<OrderTaskDto> tasks,
      int millisecondsSinceEpochOrderDate,
      int millisecondsSinceEpochOrderDeliveryDate,
      double orderPrice,
      String orderStateName,
      bool? isError});

  $ClientDtoCopyWith<$Res> get client;
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? clientId = null,
    Object? client = null,
    Object? tasks = null,
    Object? millisecondsSinceEpochOrderDate = null,
    Object? millisecondsSinceEpochOrderDeliveryDate = null,
    Object? orderPrice = null,
    Object? orderStateName = null,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientDto,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OrderTaskDto>,
      millisecondsSinceEpochOrderDate: null == millisecondsSinceEpochOrderDate
          ? _value.millisecondsSinceEpochOrderDate
          : millisecondsSinceEpochOrderDate // ignore: cast_nullable_to_non_nullable
              as int,
      millisecondsSinceEpochOrderDeliveryDate: null ==
              millisecondsSinceEpochOrderDeliveryDate
          ? _value.millisecondsSinceEpochOrderDeliveryDate
          : millisecondsSinceEpochOrderDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int,
      orderPrice: null == orderPrice
          ? _value.orderPrice
          : orderPrice // ignore: cast_nullable_to_non_nullable
              as double,
      orderStateName: null == orderStateName
          ? _value.orderStateName
          : orderStateName // ignore: cast_nullable_to_non_nullable
              as String,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientDtoCopyWith<$Res> get client {
    return $ClientDtoCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDtoCopyWith<$Res> implements $OrderDtoCopyWith<$Res> {
  factory _$$_OrderDtoCopyWith(
          _$_OrderDto value, $Res Function(_$_OrderDto) then) =
      __$$_OrderDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? orderId,
      String clientId,
      ClientDto client,
      List<OrderTaskDto> tasks,
      int millisecondsSinceEpochOrderDate,
      int millisecondsSinceEpochOrderDeliveryDate,
      double orderPrice,
      String orderStateName,
      bool? isError});

  @override
  $ClientDtoCopyWith<$Res> get client;
}

/// @nodoc
class __$$_OrderDtoCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$_OrderDto>
    implements _$$_OrderDtoCopyWith<$Res> {
  __$$_OrderDtoCopyWithImpl(
      _$_OrderDto _value, $Res Function(_$_OrderDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? clientId = null,
    Object? client = null,
    Object? tasks = null,
    Object? millisecondsSinceEpochOrderDate = null,
    Object? millisecondsSinceEpochOrderDeliveryDate = null,
    Object? orderPrice = null,
    Object? orderStateName = null,
    Object? isError = freezed,
  }) {
    return _then(_$_OrderDto(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientDto,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OrderTaskDto>,
      millisecondsSinceEpochOrderDate: null == millisecondsSinceEpochOrderDate
          ? _value.millisecondsSinceEpochOrderDate
          : millisecondsSinceEpochOrderDate // ignore: cast_nullable_to_non_nullable
              as int,
      millisecondsSinceEpochOrderDeliveryDate: null ==
              millisecondsSinceEpochOrderDeliveryDate
          ? _value.millisecondsSinceEpochOrderDeliveryDate
          : millisecondsSinceEpochOrderDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int,
      orderPrice: null == orderPrice
          ? _value.orderPrice
          : orderPrice // ignore: cast_nullable_to_non_nullable
              as double,
      orderStateName: null == orderStateName
          ? _value.orderStateName
          : orderStateName // ignore: cast_nullable_to_non_nullable
              as String,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDto extends _OrderDto {
  const _$_OrderDto(
      {@JsonKey(ignore: true) this.orderId,
      required this.clientId,
      required this.client,
      required final List<OrderTaskDto> tasks,
      required this.millisecondsSinceEpochOrderDate,
      required this.millisecondsSinceEpochOrderDeliveryDate,
      required this.orderPrice,
      required this.orderStateName,
      this.isError})
      : _tasks = tasks,
        super._();

  factory _$_OrderDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? orderId;
  @override
  final String clientId;
  @override
  final ClientDto client;
  final List<OrderTaskDto> _tasks;
  @override
  List<OrderTaskDto> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final int millisecondsSinceEpochOrderDate;
  @override
  final int millisecondsSinceEpochOrderDeliveryDate;
  @override
  final double orderPrice;
  @override
  final String orderStateName;
  @override
  final bool? isError;

  @override
  String toString() {
    return 'OrderDto(orderId: $orderId, clientId: $clientId, client: $client, tasks: $tasks, millisecondsSinceEpochOrderDate: $millisecondsSinceEpochOrderDate, millisecondsSinceEpochOrderDeliveryDate: $millisecondsSinceEpochOrderDeliveryDate, orderPrice: $orderPrice, orderStateName: $orderStateName, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.millisecondsSinceEpochOrderDate,
                    millisecondsSinceEpochOrderDate) ||
                other.millisecondsSinceEpochOrderDate ==
                    millisecondsSinceEpochOrderDate) &&
            (identical(other.millisecondsSinceEpochOrderDeliveryDate,
                    millisecondsSinceEpochOrderDeliveryDate) ||
                other.millisecondsSinceEpochOrderDeliveryDate ==
                    millisecondsSinceEpochOrderDeliveryDate) &&
            (identical(other.orderPrice, orderPrice) ||
                other.orderPrice == orderPrice) &&
            (identical(other.orderStateName, orderStateName) ||
                other.orderStateName == orderStateName) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      clientId,
      client,
      const DeepCollectionEquality().hash(_tasks),
      millisecondsSinceEpochOrderDate,
      millisecondsSinceEpochOrderDeliveryDate,
      orderPrice,
      orderStateName,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      __$$_OrderDtoCopyWithImpl<_$_OrderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDtoToJson(
      this,
    );
  }
}

abstract class _OrderDto extends OrderDto {
  const factory _OrderDto(
      {@JsonKey(ignore: true) final String? orderId,
      required final String clientId,
      required final ClientDto client,
      required final List<OrderTaskDto> tasks,
      required final int millisecondsSinceEpochOrderDate,
      required final int millisecondsSinceEpochOrderDeliveryDate,
      required final double orderPrice,
      required final String orderStateName,
      final bool? isError}) = _$_OrderDto;
  const _OrderDto._() : super._();

  factory _OrderDto.fromJson(Map<String, dynamic> json) = _$_OrderDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get orderId;
  @override
  String get clientId;
  @override
  ClientDto get client;
  @override
  List<OrderTaskDto> get tasks;
  @override
  int get millisecondsSinceEpochOrderDate;
  @override
  int get millisecondsSinceEpochOrderDeliveryDate;
  @override
  double get orderPrice;
  @override
  String get orderStateName;
  @override
  bool? get isError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}
