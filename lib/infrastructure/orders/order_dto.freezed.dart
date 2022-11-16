// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String? get id => throw _privateConstructorUsedError;
  String get orderTitle => throw _privateConstructorUsedError;
  ClientDto get client => throw _privateConstructorUsedError;
  String get orderDescription => throw _privateConstructorUsedError;
  int get millisecondsSinceEpochOrderDate => throw _privateConstructorUsedError;
  int get millisecondsSinceEpochDeliveryDate =>
      throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<OrderTaskDto> get tasks => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get isArchived => throw _privateConstructorUsedError;

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
      {@JsonKey(ignore: true) String? id,
      String orderTitle,
      ClientDto client,
      String orderDescription,
      int millisecondsSinceEpochOrderDate,
      int millisecondsSinceEpochDeliveryDate,
      double price,
      List<OrderTaskDto> tasks,
      bool isDone,
      bool isArchived});

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
    Object? id = freezed,
    Object? orderTitle = null,
    Object? client = null,
    Object? orderDescription = null,
    Object? millisecondsSinceEpochOrderDate = null,
    Object? millisecondsSinceEpochDeliveryDate = null,
    Object? price = null,
    Object? tasks = null,
    Object? isDone = null,
    Object? isArchived = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      orderTitle: null == orderTitle
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientDto,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      millisecondsSinceEpochOrderDate: null == millisecondsSinceEpochOrderDate
          ? _value.millisecondsSinceEpochOrderDate
          : millisecondsSinceEpochOrderDate // ignore: cast_nullable_to_non_nullable
              as int,
      millisecondsSinceEpochDeliveryDate: null ==
              millisecondsSinceEpochDeliveryDate
          ? _value.millisecondsSinceEpochDeliveryDate
          : millisecondsSinceEpochDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OrderTaskDto>,
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
      {@JsonKey(ignore: true) String? id,
      String orderTitle,
      ClientDto client,
      String orderDescription,
      int millisecondsSinceEpochOrderDate,
      int millisecondsSinceEpochDeliveryDate,
      double price,
      List<OrderTaskDto> tasks,
      bool isDone,
      bool isArchived});

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
    Object? id = freezed,
    Object? orderTitle = null,
    Object? client = null,
    Object? orderDescription = null,
    Object? millisecondsSinceEpochOrderDate = null,
    Object? millisecondsSinceEpochDeliveryDate = null,
    Object? price = null,
    Object? tasks = null,
    Object? isDone = null,
    Object? isArchived = null,
  }) {
    return _then(_$_OrderDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      orderTitle: null == orderTitle
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientDto,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      millisecondsSinceEpochOrderDate: null == millisecondsSinceEpochOrderDate
          ? _value.millisecondsSinceEpochOrderDate
          : millisecondsSinceEpochOrderDate // ignore: cast_nullable_to_non_nullable
              as int,
      millisecondsSinceEpochDeliveryDate: null ==
              millisecondsSinceEpochDeliveryDate
          ? _value.millisecondsSinceEpochDeliveryDate
          : millisecondsSinceEpochDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OrderTaskDto>,
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
@JsonSerializable()
class _$_OrderDto extends _OrderDto {
  const _$_OrderDto(
      {@JsonKey(ignore: true) this.id,
      required this.orderTitle,
      required this.client,
      required this.orderDescription,
      required this.millisecondsSinceEpochOrderDate,
      required this.millisecondsSinceEpochDeliveryDate,
      required this.price,
      required final List<OrderTaskDto> tasks,
      required this.isDone,
      required this.isArchived})
      : _tasks = tasks,
        super._();

  factory _$_OrderDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String orderTitle;
  @override
  final ClientDto client;
  @override
  final String orderDescription;
  @override
  final int millisecondsSinceEpochOrderDate;
  @override
  final int millisecondsSinceEpochDeliveryDate;
  @override
  final double price;
  final List<OrderTaskDto> _tasks;
  @override
  List<OrderTaskDto> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final bool isDone;
  @override
  final bool isArchived;

  @override
  String toString() {
    return 'OrderDto(id: $id, orderTitle: $orderTitle, client: $client, orderDescription: $orderDescription, millisecondsSinceEpochOrderDate: $millisecondsSinceEpochOrderDate, millisecondsSinceEpochDeliveryDate: $millisecondsSinceEpochDeliveryDate, price: $price, tasks: $tasks, isDone: $isDone, isArchived: $isArchived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderTitle, orderTitle) ||
                other.orderTitle == orderTitle) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.millisecondsSinceEpochOrderDate,
                    millisecondsSinceEpochOrderDate) ||
                other.millisecondsSinceEpochOrderDate ==
                    millisecondsSinceEpochOrderDate) &&
            (identical(other.millisecondsSinceEpochDeliveryDate,
                    millisecondsSinceEpochDeliveryDate) ||
                other.millisecondsSinceEpochDeliveryDate ==
                    millisecondsSinceEpochDeliveryDate) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderTitle,
      client,
      orderDescription,
      millisecondsSinceEpochOrderDate,
      millisecondsSinceEpochDeliveryDate,
      price,
      const DeepCollectionEquality().hash(_tasks),
      isDone,
      isArchived);

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
      {@JsonKey(ignore: true) final String? id,
      required final String orderTitle,
      required final ClientDto client,
      required final String orderDescription,
      required final int millisecondsSinceEpochOrderDate,
      required final int millisecondsSinceEpochDeliveryDate,
      required final double price,
      required final List<OrderTaskDto> tasks,
      required final bool isDone,
      required final bool isArchived}) = _$_OrderDto;
  const _OrderDto._() : super._();

  factory _OrderDto.fromJson(Map<String, dynamic> json) = _$_OrderDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get orderTitle;
  @override
  ClientDto get client;
  @override
  String get orderDescription;
  @override
  int get millisecondsSinceEpochOrderDate;
  @override
  int get millisecondsSinceEpochDeliveryDate;
  @override
  double get price;
  @override
  List<OrderTaskDto> get tasks;
  @override
  bool get isDone;
  @override
  bool get isArchived;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}
