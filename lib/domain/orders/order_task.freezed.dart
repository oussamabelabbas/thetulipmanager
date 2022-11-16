// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderTask {
  UniqueId get taskId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderTaskCopyWith<OrderTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTaskCopyWith<$Res> {
  factory $OrderTaskCopyWith(OrderTask value, $Res Function(OrderTask) then) =
      _$OrderTaskCopyWithImpl<$Res, OrderTask>;
  @useResult
  $Res call({UniqueId taskId, String description, bool isDone});
}

/// @nodoc
class _$OrderTaskCopyWithImpl<$Res, $Val extends OrderTask>
    implements $OrderTaskCopyWith<$Res> {
  _$OrderTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? description = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderTaskCopyWith<$Res> implements $OrderTaskCopyWith<$Res> {
  factory _$$_OrderTaskCopyWith(
          _$_OrderTask value, $Res Function(_$_OrderTask) then) =
      __$$_OrderTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId taskId, String description, bool isDone});
}

/// @nodoc
class __$$_OrderTaskCopyWithImpl<$Res>
    extends _$OrderTaskCopyWithImpl<$Res, _$_OrderTask>
    implements _$$_OrderTaskCopyWith<$Res> {
  __$$_OrderTaskCopyWithImpl(
      _$_OrderTask _value, $Res Function(_$_OrderTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? description = null,
    Object? isDone = null,
  }) {
    return _then(_$_OrderTask(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrderTask implements _OrderTask {
  const _$_OrderTask(
      {required this.taskId, required this.description, required this.isDone});

  @override
  final UniqueId taskId;
  @override
  final String description;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'OrderTask(taskId: $taskId, description: $description, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderTask &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, description, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderTaskCopyWith<_$_OrderTask> get copyWith =>
      __$$_OrderTaskCopyWithImpl<_$_OrderTask>(this, _$identity);
}

abstract class _OrderTask implements OrderTask {
  const factory _OrderTask(
      {required final UniqueId taskId,
      required final String description,
      required final bool isDone}) = _$_OrderTask;

  @override
  UniqueId get taskId;
  @override
  String get description;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_OrderTaskCopyWith<_$_OrderTask> get copyWith =>
      throw _privateConstructorUsedError;
}
