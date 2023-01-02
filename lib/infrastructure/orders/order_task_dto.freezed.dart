// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderTaskDto _$OrderTaskDtoFromJson(Map<String, dynamic> json) {
  return _OrderTaskDto.fromJson(json);
}

/// @nodoc
mixin _$OrderTaskDto {
  String get taskId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  ProductDto get product => throw _privateConstructorUsedError;
  String get taskDescription => throw _privateConstructorUsedError;
  int get isTaskDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderTaskDtoCopyWith<OrderTaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTaskDtoCopyWith<$Res> {
  factory $OrderTaskDtoCopyWith(
          OrderTaskDto value, $Res Function(OrderTaskDto) then) =
      _$OrderTaskDtoCopyWithImpl<$Res, OrderTaskDto>;
  @useResult
  $Res call(
      {String taskId,
      String productId,
      ProductDto product,
      String taskDescription,
      int isTaskDone});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderTaskDtoCopyWithImpl<$Res, $Val extends OrderTaskDto>
    implements $OrderTaskDtoCopyWith<$Res> {
  _$OrderTaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? productId = null,
    Object? product = null,
    Object? taskDescription = null,
    Object? isTaskDone = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isTaskDone: null == isTaskDone
          ? _value.isTaskDone
          : isTaskDone // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderTaskDtoCopyWith<$Res>
    implements $OrderTaskDtoCopyWith<$Res> {
  factory _$$_OrderTaskDtoCopyWith(
          _$_OrderTaskDto value, $Res Function(_$_OrderTaskDto) then) =
      __$$_OrderTaskDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      String productId,
      ProductDto product,
      String taskDescription,
      int isTaskDone});

  @override
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$_OrderTaskDtoCopyWithImpl<$Res>
    extends _$OrderTaskDtoCopyWithImpl<$Res, _$_OrderTaskDto>
    implements _$$_OrderTaskDtoCopyWith<$Res> {
  __$$_OrderTaskDtoCopyWithImpl(
      _$_OrderTaskDto _value, $Res Function(_$_OrderTaskDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? productId = null,
    Object? product = null,
    Object? taskDescription = null,
    Object? isTaskDone = null,
  }) {
    return _then(_$_OrderTaskDto(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isTaskDone: null == isTaskDone
          ? _value.isTaskDone
          : isTaskDone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderTaskDto extends _OrderTaskDto {
  const _$_OrderTaskDto(
      {required this.taskId,
      required this.productId,
      required this.product,
      required this.taskDescription,
      required this.isTaskDone})
      : super._();

  factory _$_OrderTaskDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderTaskDtoFromJson(json);

  @override
  final String taskId;
  @override
  final String productId;
  @override
  final ProductDto product;
  @override
  final String taskDescription;
  @override
  final int isTaskDone;

  @override
  String toString() {
    return 'OrderTaskDto(taskId: $taskId, productId: $productId, product: $product, taskDescription: $taskDescription, isTaskDone: $isTaskDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderTaskDto &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription) &&
            (identical(other.isTaskDone, isTaskDone) ||
                other.isTaskDone == isTaskDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, productId, product, taskDescription, isTaskDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderTaskDtoCopyWith<_$_OrderTaskDto> get copyWith =>
      __$$_OrderTaskDtoCopyWithImpl<_$_OrderTaskDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderTaskDtoToJson(
      this,
    );
  }
}

abstract class _OrderTaskDto extends OrderTaskDto {
  const factory _OrderTaskDto(
      {required final String taskId,
      required final String productId,
      required final ProductDto product,
      required final String taskDescription,
      required final int isTaskDone}) = _$_OrderTaskDto;
  const _OrderTaskDto._() : super._();

  factory _OrderTaskDto.fromJson(Map<String, dynamic> json) =
      _$_OrderTaskDto.fromJson;

  @override
  String get taskId;
  @override
  String get productId;
  @override
  ProductDto get product;
  @override
  String get taskDescription;
  @override
  int get isTaskDone;
  @override
  @JsonKey(ignore: true)
  _$$_OrderTaskDtoCopyWith<_$_OrderTaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}
