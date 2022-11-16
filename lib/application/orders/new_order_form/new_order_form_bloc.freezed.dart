// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_order_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewOrderFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOrderFormEventCopyWith<$Res> {
  factory $NewOrderFormEventCopyWith(
          NewOrderFormEvent value, $Res Function(NewOrderFormEvent) then) =
      _$NewOrderFormEventCopyWithImpl<$Res, NewOrderFormEvent>;
}

/// @nodoc
class _$NewOrderFormEventCopyWithImpl<$Res, $Val extends NewOrderFormEvent>
    implements $NewOrderFormEventCopyWith<$Res> {
  _$NewOrderFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<UniqueId> orderIdOption});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderIdOption = null,
  }) {
    return _then(_$Started(
      orderIdOption: null == orderIdOption
          ? _value.orderIdOption
          : orderIdOption // ignore: cast_nullable_to_non_nullable
              as Option<UniqueId>,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required this.orderIdOption});

  @override
  final Option<UniqueId> orderIdOption;

  @override
  String toString() {
    return 'NewOrderFormEvent.started(orderIdOption: $orderIdOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            (identical(other.orderIdOption, orderIdOption) ||
                other.orderIdOption == orderIdOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderIdOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return started(orderIdOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return started?.call(orderIdOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(orderIdOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements NewOrderFormEvent {
  const factory Started({required final Option<UniqueId> orderIdOption}) =
      _$Started;

  Option<UniqueId> get orderIdOption;
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderTitleChangedCopyWith<$Res> {
  factory _$$OrderTitleChangedCopyWith(
          _$OrderTitleChanged value, $Res Function(_$OrderTitleChanged) then) =
      __$$OrderTitleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderTitle});
}

/// @nodoc
class __$$OrderTitleChangedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$OrderTitleChanged>
    implements _$$OrderTitleChangedCopyWith<$Res> {
  __$$OrderTitleChangedCopyWithImpl(
      _$OrderTitleChanged _value, $Res Function(_$OrderTitleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderTitle = null,
  }) {
    return _then(_$OrderTitleChanged(
      orderTitle: null == orderTitle
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderTitleChanged implements OrderTitleChanged {
  const _$OrderTitleChanged({required this.orderTitle});

  @override
  final String orderTitle;

  @override
  String toString() {
    return 'NewOrderFormEvent.orderTitleChanged(orderTitle: $orderTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTitleChanged &&
            (identical(other.orderTitle, orderTitle) ||
                other.orderTitle == orderTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTitleChangedCopyWith<_$OrderTitleChanged> get copyWith =>
      __$$OrderTitleChangedCopyWithImpl<_$OrderTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return orderTitleChanged(orderTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return orderTitleChanged?.call(orderTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (orderTitleChanged != null) {
      return orderTitleChanged(orderTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return orderTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return orderTitleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (orderTitleChanged != null) {
      return orderTitleChanged(this);
    }
    return orElse();
  }
}

abstract class OrderTitleChanged implements NewOrderFormEvent {
  const factory OrderTitleChanged({required final String orderTitle}) =
      _$OrderTitleChanged;

  String get orderTitle;
  @JsonKey(ignore: true)
  _$$OrderTitleChangedCopyWith<_$OrderTitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientNameChangedCopyWith<$Res> {
  factory _$$ClientNameChangedCopyWith(
          _$ClientNameChanged value, $Res Function(_$ClientNameChanged) then) =
      __$$ClientNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientName});
}

/// @nodoc
class __$$ClientNameChangedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$ClientNameChanged>
    implements _$$ClientNameChangedCopyWith<$Res> {
  __$$ClientNameChangedCopyWithImpl(
      _$ClientNameChanged _value, $Res Function(_$ClientNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientName = null,
  }) {
    return _then(_$ClientNameChanged(
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientNameChanged implements ClientNameChanged {
  const _$ClientNameChanged({required this.clientName});

  @override
  final String clientName;

  @override
  String toString() {
    return 'NewOrderFormEvent.clientNameChanged(clientName: $clientName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientNameChanged &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientNameChangedCopyWith<_$ClientNameChanged> get copyWith =>
      __$$ClientNameChangedCopyWithImpl<_$ClientNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return clientNameChanged(clientName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return clientNameChanged?.call(clientName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (clientNameChanged != null) {
      return clientNameChanged(clientName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return clientNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return clientNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (clientNameChanged != null) {
      return clientNameChanged(this);
    }
    return orElse();
  }
}

abstract class ClientNameChanged implements NewOrderFormEvent {
  const factory ClientNameChanged({required final String clientName}) =
      _$ClientNameChanged;

  String get clientName;
  @JsonKey(ignore: true)
  _$$ClientNameChangedCopyWith<_$ClientNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientPhoneNumberChangedCopyWith<$Res> {
  factory _$$ClientPhoneNumberChangedCopyWith(_$ClientPhoneNumberChanged value,
          $Res Function(_$ClientPhoneNumberChanged) then) =
      __$$ClientPhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientPhoneNumber});
}

/// @nodoc
class __$$ClientPhoneNumberChangedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$ClientPhoneNumberChanged>
    implements _$$ClientPhoneNumberChangedCopyWith<$Res> {
  __$$ClientPhoneNumberChangedCopyWithImpl(_$ClientPhoneNumberChanged _value,
      $Res Function(_$ClientPhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientPhoneNumber = null,
  }) {
    return _then(_$ClientPhoneNumberChanged(
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientPhoneNumberChanged implements ClientPhoneNumberChanged {
  const _$ClientPhoneNumberChanged({required this.clientPhoneNumber});

  @override
  final String clientPhoneNumber;

  @override
  String toString() {
    return 'NewOrderFormEvent.clientPhoneNumberChanged(clientPhoneNumber: $clientPhoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientPhoneNumberChanged &&
            (identical(other.clientPhoneNumber, clientPhoneNumber) ||
                other.clientPhoneNumber == clientPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientPhoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientPhoneNumberChangedCopyWith<_$ClientPhoneNumberChanged>
      get copyWith =>
          __$$ClientPhoneNumberChangedCopyWithImpl<_$ClientPhoneNumberChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return clientPhoneNumberChanged(clientPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return clientPhoneNumberChanged?.call(clientPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (clientPhoneNumberChanged != null) {
      return clientPhoneNumberChanged(clientPhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return clientPhoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return clientPhoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (clientPhoneNumberChanged != null) {
      return clientPhoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class ClientPhoneNumberChanged implements NewOrderFormEvent {
  const factory ClientPhoneNumberChanged(
      {required final String clientPhoneNumber}) = _$ClientPhoneNumberChanged;

  String get clientPhoneNumber;
  @JsonKey(ignore: true)
  _$$ClientPhoneNumberChangedCopyWith<_$ClientPhoneNumberChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderDescriptionChangedCopyWith<$Res> {
  factory _$$OrderDescriptionChangedCopyWith(_$OrderDescriptionChanged value,
          $Res Function(_$OrderDescriptionChanged) then) =
      __$$OrderDescriptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderDescription});
}

/// @nodoc
class __$$OrderDescriptionChangedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$OrderDescriptionChanged>
    implements _$$OrderDescriptionChangedCopyWith<$Res> {
  __$$OrderDescriptionChangedCopyWithImpl(_$OrderDescriptionChanged _value,
      $Res Function(_$OrderDescriptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDescription = null,
  }) {
    return _then(_$OrderDescriptionChanged(
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderDescriptionChanged implements OrderDescriptionChanged {
  const _$OrderDescriptionChanged({required this.orderDescription});

  @override
  final String orderDescription;

  @override
  String toString() {
    return 'NewOrderFormEvent.orderDescriptionChanged(orderDescription: $orderDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDescriptionChanged &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDescriptionChangedCopyWith<_$OrderDescriptionChanged> get copyWith =>
      __$$OrderDescriptionChangedCopyWithImpl<_$OrderDescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return orderDescriptionChanged(orderDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return orderDescriptionChanged?.call(orderDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (orderDescriptionChanged != null) {
      return orderDescriptionChanged(orderDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return orderDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return orderDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (orderDescriptionChanged != null) {
      return orderDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class OrderDescriptionChanged implements NewOrderFormEvent {
  const factory OrderDescriptionChanged(
      {required final String orderDescription}) = _$OrderDescriptionChanged;

  String get orderDescription;
  @JsonKey(ignore: true)
  _$$OrderDescriptionChangedCopyWith<_$OrderDescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliveryDateChangedCopyWith<$Res> {
  factory _$$DeliveryDateChangedCopyWith(_$DeliveryDateChanged value,
          $Res Function(_$DeliveryDateChanged) then) =
      __$$DeliveryDateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime deliveryDate});
}

/// @nodoc
class __$$DeliveryDateChangedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$DeliveryDateChanged>
    implements _$$DeliveryDateChangedCopyWith<$Res> {
  __$$DeliveryDateChangedCopyWithImpl(
      _$DeliveryDateChanged _value, $Res Function(_$DeliveryDateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryDate = null,
  }) {
    return _then(_$DeliveryDateChanged(
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DeliveryDateChanged implements DeliveryDateChanged {
  const _$DeliveryDateChanged({required this.deliveryDate});

  @override
  final DateTime deliveryDate;

  @override
  String toString() {
    return 'NewOrderFormEvent.deliveryDateChanged(deliveryDate: $deliveryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDateChanged &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deliveryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDateChangedCopyWith<_$DeliveryDateChanged> get copyWith =>
      __$$DeliveryDateChangedCopyWithImpl<_$DeliveryDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return deliveryDateChanged(deliveryDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return deliveryDateChanged?.call(deliveryDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (deliveryDateChanged != null) {
      return deliveryDateChanged(deliveryDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return deliveryDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return deliveryDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (deliveryDateChanged != null) {
      return deliveryDateChanged(this);
    }
    return orElse();
  }
}

abstract class DeliveryDateChanged implements NewOrderFormEvent {
  const factory DeliveryDateChanged({required final DateTime deliveryDate}) =
      _$DeliveryDateChanged;

  DateTime get deliveryDate;
  @JsonKey(ignore: true)
  _$$DeliveryDateChangedCopyWith<_$DeliveryDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceChangedCopyWith<$Res> {
  factory _$$PriceChangedCopyWith(
          _$PriceChanged value, $Res Function(_$PriceChanged) then) =
      __$$PriceChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String price});
}

/// @nodoc
class __$$PriceChangedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$PriceChanged>
    implements _$$PriceChangedCopyWith<$Res> {
  __$$PriceChangedCopyWithImpl(
      _$PriceChanged _value, $Res Function(_$PriceChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$PriceChanged(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PriceChanged implements PriceChanged {
  const _$PriceChanged({required this.price});

  @override
  final String price;

  @override
  String toString() {
    return 'NewOrderFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceChanged &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceChangedCopyWith<_$PriceChanged> get copyWith =>
      __$$PriceChangedCopyWithImpl<_$PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return priceChanged?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return priceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class PriceChanged implements NewOrderFormEvent {
  const factory PriceChanged({required final String price}) = _$PriceChanged;

  String get price;
  @JsonKey(ignore: true)
  _$$PriceChangedCopyWith<_$PriceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskAddedCopyWith<$Res> {
  factory _$$TaskAddedCopyWith(
          _$TaskAdded value, $Res Function(_$TaskAdded) then) =
      __$$TaskAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskAddedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$TaskAdded>
    implements _$$TaskAddedCopyWith<$Res> {
  __$$TaskAddedCopyWithImpl(
      _$TaskAdded _value, $Res Function(_$TaskAdded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskAdded implements TaskAdded {
  const _$TaskAdded();

  @override
  String toString() {
    return 'NewOrderFormEvent.taskAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return taskAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return taskAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return taskAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return taskAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (taskAdded != null) {
      return taskAdded(this);
    }
    return orElse();
  }
}

abstract class TaskAdded implements NewOrderFormEvent {
  const factory TaskAdded() = _$TaskAdded;
}

/// @nodoc
abstract class _$$TaskDescriptionChangedCopyWith<$Res> {
  factory _$$TaskDescriptionChangedCopyWith(_$TaskDescriptionChanged value,
          $Res Function(_$TaskDescriptionChanged) then) =
      __$$TaskDescriptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId taskId, String taskDescription});
}

/// @nodoc
class __$$TaskDescriptionChangedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$TaskDescriptionChanged>
    implements _$$TaskDescriptionChangedCopyWith<$Res> {
  __$$TaskDescriptionChangedCopyWithImpl(_$TaskDescriptionChanged _value,
      $Res Function(_$TaskDescriptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? taskDescription = null,
  }) {
    return _then(_$TaskDescriptionChanged(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDescriptionChanged implements TaskDescriptionChanged {
  const _$TaskDescriptionChanged(
      {required this.taskId, required this.taskDescription});

  @override
  final UniqueId taskId;
  @override
  final String taskDescription;

  @override
  String toString() {
    return 'NewOrderFormEvent.taskDescriptionChanged(taskId: $taskId, taskDescription: $taskDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDescriptionChanged &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, taskDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDescriptionChangedCopyWith<_$TaskDescriptionChanged> get copyWith =>
      __$$TaskDescriptionChangedCopyWithImpl<_$TaskDescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return taskDescriptionChanged(taskId, taskDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return taskDescriptionChanged?.call(taskId, taskDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (taskDescriptionChanged != null) {
      return taskDescriptionChanged(taskId, taskDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return taskDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return taskDescriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (taskDescriptionChanged != null) {
      return taskDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class TaskDescriptionChanged implements NewOrderFormEvent {
  const factory TaskDescriptionChanged(
      {required final UniqueId taskId,
      required final String taskDescription}) = _$TaskDescriptionChanged;

  UniqueId get taskId;
  String get taskDescription;
  @JsonKey(ignore: true)
  _$$TaskDescriptionChangedCopyWith<_$TaskDescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDeletedCopyWith<$Res> {
  factory _$$TaskDeletedCopyWith(
          _$TaskDeleted value, $Res Function(_$TaskDeleted) then) =
      __$$TaskDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId taskId});
}

/// @nodoc
class __$$TaskDeletedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$TaskDeleted>
    implements _$$TaskDeletedCopyWith<$Res> {
  __$$TaskDeletedCopyWithImpl(
      _$TaskDeleted _value, $Res Function(_$TaskDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskDeleted(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$TaskDeleted implements TaskDeleted {
  const _$TaskDeleted({required this.taskId});

  @override
  final UniqueId taskId;

  @override
  String toString() {
    return 'NewOrderFormEvent.taskDeleted(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDeleted &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDeletedCopyWith<_$TaskDeleted> get copyWith =>
      __$$TaskDeletedCopyWithImpl<_$TaskDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return taskDeleted(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return taskDeleted?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (taskDeleted != null) {
      return taskDeleted(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return taskDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return taskDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (taskDeleted != null) {
      return taskDeleted(this);
    }
    return orElse();
  }
}

abstract class TaskDeleted implements NewOrderFormEvent {
  const factory TaskDeleted({required final UniqueId taskId}) = _$TaskDeleted;

  UniqueId get taskId;
  @JsonKey(ignore: true)
  _$$TaskDeletedCopyWith<_$TaskDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmOrderPressedCopyWith<$Res> {
  factory _$$ConfirmOrderPressedCopyWith(_$ConfirmOrderPressed value,
          $Res Function(_$ConfirmOrderPressed) then) =
      __$$ConfirmOrderPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmOrderPressedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$ConfirmOrderPressed>
    implements _$$ConfirmOrderPressedCopyWith<$Res> {
  __$$ConfirmOrderPressedCopyWithImpl(
      _$ConfirmOrderPressed _value, $Res Function(_$ConfirmOrderPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmOrderPressed implements ConfirmOrderPressed {
  const _$ConfirmOrderPressed();

  @override
  String toString() {
    return 'NewOrderFormEvent.confirmOrderPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmOrderPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return confirmOrderPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return confirmOrderPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (confirmOrderPressed != null) {
      return confirmOrderPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return confirmOrderPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return confirmOrderPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (confirmOrderPressed != null) {
      return confirmOrderPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmOrderPressed implements NewOrderFormEvent {
  const factory ConfirmOrderPressed() = _$ConfirmOrderPressed;
}

/// @nodoc
abstract class _$$UpdateOrderPressedCopyWith<$Res> {
  factory _$$UpdateOrderPressedCopyWith(_$UpdateOrderPressed value,
          $Res Function(_$UpdateOrderPressed) then) =
      __$$UpdateOrderPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId orderId});
}

/// @nodoc
class __$$UpdateOrderPressedCopyWithImpl<$Res>
    extends _$NewOrderFormEventCopyWithImpl<$Res, _$UpdateOrderPressed>
    implements _$$UpdateOrderPressedCopyWith<$Res> {
  __$$UpdateOrderPressedCopyWithImpl(
      _$UpdateOrderPressed _value, $Res Function(_$UpdateOrderPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$UpdateOrderPressed(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$UpdateOrderPressed implements UpdateOrderPressed {
  const _$UpdateOrderPressed({required this.orderId});

  @override
  final UniqueId orderId;

  @override
  String toString() {
    return 'NewOrderFormEvent.updateOrderPressed(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderPressed &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderPressedCopyWith<_$UpdateOrderPressed> get copyWith =>
      __$$UpdateOrderPressedCopyWithImpl<_$UpdateOrderPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UniqueId> orderIdOption) started,
    required TResult Function(String orderTitle) orderTitleChanged,
    required TResult Function(String clientName) clientNameChanged,
    required TResult Function(String clientPhoneNumber)
        clientPhoneNumberChanged,
    required TResult Function(String orderDescription) orderDescriptionChanged,
    required TResult Function(DateTime deliveryDate) deliveryDateChanged,
    required TResult Function(String price) priceChanged,
    required TResult Function() taskAdded,
    required TResult Function(UniqueId taskId, String taskDescription)
        taskDescriptionChanged,
    required TResult Function(UniqueId taskId) taskDeleted,
    required TResult Function() confirmOrderPressed,
    required TResult Function(UniqueId orderId) updateOrderPressed,
  }) {
    return updateOrderPressed(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<UniqueId> orderIdOption)? started,
    TResult? Function(String orderTitle)? orderTitleChanged,
    TResult? Function(String clientName)? clientNameChanged,
    TResult? Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult? Function(String orderDescription)? orderDescriptionChanged,
    TResult? Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult? Function(String price)? priceChanged,
    TResult? Function()? taskAdded,
    TResult? Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult? Function(UniqueId taskId)? taskDeleted,
    TResult? Function()? confirmOrderPressed,
    TResult? Function(UniqueId orderId)? updateOrderPressed,
  }) {
    return updateOrderPressed?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UniqueId> orderIdOption)? started,
    TResult Function(String orderTitle)? orderTitleChanged,
    TResult Function(String clientName)? clientNameChanged,
    TResult Function(String clientPhoneNumber)? clientPhoneNumberChanged,
    TResult Function(String orderDescription)? orderDescriptionChanged,
    TResult Function(DateTime deliveryDate)? deliveryDateChanged,
    TResult Function(String price)? priceChanged,
    TResult Function()? taskAdded,
    TResult Function(UniqueId taskId, String taskDescription)?
        taskDescriptionChanged,
    TResult Function(UniqueId taskId)? taskDeleted,
    TResult Function()? confirmOrderPressed,
    TResult Function(UniqueId orderId)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (updateOrderPressed != null) {
      return updateOrderPressed(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OrderTitleChanged value) orderTitleChanged,
    required TResult Function(ClientNameChanged value) clientNameChanged,
    required TResult Function(ClientPhoneNumberChanged value)
        clientPhoneNumberChanged,
    required TResult Function(OrderDescriptionChanged value)
        orderDescriptionChanged,
    required TResult Function(DeliveryDateChanged value) deliveryDateChanged,
    required TResult Function(PriceChanged value) priceChanged,
    required TResult Function(TaskAdded value) taskAdded,
    required TResult Function(TaskDescriptionChanged value)
        taskDescriptionChanged,
    required TResult Function(TaskDeleted value) taskDeleted,
    required TResult Function(ConfirmOrderPressed value) confirmOrderPressed,
    required TResult Function(UpdateOrderPressed value) updateOrderPressed,
  }) {
    return updateOrderPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OrderTitleChanged value)? orderTitleChanged,
    TResult? Function(ClientNameChanged value)? clientNameChanged,
    TResult? Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult? Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult? Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult? Function(PriceChanged value)? priceChanged,
    TResult? Function(TaskAdded value)? taskAdded,
    TResult? Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult? Function(TaskDeleted value)? taskDeleted,
    TResult? Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult? Function(UpdateOrderPressed value)? updateOrderPressed,
  }) {
    return updateOrderPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OrderTitleChanged value)? orderTitleChanged,
    TResult Function(ClientNameChanged value)? clientNameChanged,
    TResult Function(ClientPhoneNumberChanged value)? clientPhoneNumberChanged,
    TResult Function(OrderDescriptionChanged value)? orderDescriptionChanged,
    TResult Function(DeliveryDateChanged value)? deliveryDateChanged,
    TResult Function(PriceChanged value)? priceChanged,
    TResult Function(TaskAdded value)? taskAdded,
    TResult Function(TaskDescriptionChanged value)? taskDescriptionChanged,
    TResult Function(TaskDeleted value)? taskDeleted,
    TResult Function(ConfirmOrderPressed value)? confirmOrderPressed,
    TResult Function(UpdateOrderPressed value)? updateOrderPressed,
    required TResult orElse(),
  }) {
    if (updateOrderPressed != null) {
      return updateOrderPressed(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderPressed implements NewOrderFormEvent {
  const factory UpdateOrderPressed({required final UniqueId orderId}) =
      _$UpdateOrderPressed;

  UniqueId get orderId;
  @JsonKey(ignore: true)
  _$$UpdateOrderPressedCopyWith<_$UpdateOrderPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewOrderFormState {
  bool get inProgress => throw _privateConstructorUsedError;
  bool get autovalidate => throw _privateConstructorUsedError;
  String get orderTitle => throw _privateConstructorUsedError;
  Name get clientName => throw _privateConstructorUsedError;
  PhoneNumber get clientPhoneNumber => throw _privateConstructorUsedError;
  String get orderDescription => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  List<OrderTask> get tasks => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, FirebaseSuccess>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewOrderFormStateCopyWith<NewOrderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOrderFormStateCopyWith<$Res> {
  factory $NewOrderFormStateCopyWith(
          NewOrderFormState value, $Res Function(NewOrderFormState) then) =
      _$NewOrderFormStateCopyWithImpl<$Res, NewOrderFormState>;
  @useResult
  $Res call(
      {bool inProgress,
      bool autovalidate,
      String orderTitle,
      Name clientName,
      PhoneNumber clientPhoneNumber,
      String orderDescription,
      DateTime deliveryDate,
      Price price,
      List<OrderTask> tasks,
      Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption});
}

/// @nodoc
class _$NewOrderFormStateCopyWithImpl<$Res, $Val extends NewOrderFormState>
    implements $NewOrderFormStateCopyWith<$Res> {
  _$NewOrderFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? autovalidate = null,
    Object? orderTitle = null,
    Object? clientName = null,
    Object? clientPhoneNumber = null,
    Object? orderDescription = null,
    Object? deliveryDate = null,
    Object? price = null,
    Object? tasks = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      autovalidate: null == autovalidate
          ? _value.autovalidate
          : autovalidate // ignore: cast_nullable_to_non_nullable
              as bool,
      orderTitle: null == orderTitle
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as Name,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<OrderTask>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, FirebaseSuccess>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewOrderFormStateCopyWith<$Res>
    implements $NewOrderFormStateCopyWith<$Res> {
  factory _$$_NewOrderFormStateCopyWith(_$_NewOrderFormState value,
          $Res Function(_$_NewOrderFormState) then) =
      __$$_NewOrderFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProgress,
      bool autovalidate,
      String orderTitle,
      Name clientName,
      PhoneNumber clientPhoneNumber,
      String orderDescription,
      DateTime deliveryDate,
      Price price,
      List<OrderTask> tasks,
      Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption});
}

/// @nodoc
class __$$_NewOrderFormStateCopyWithImpl<$Res>
    extends _$NewOrderFormStateCopyWithImpl<$Res, _$_NewOrderFormState>
    implements _$$_NewOrderFormStateCopyWith<$Res> {
  __$$_NewOrderFormStateCopyWithImpl(
      _$_NewOrderFormState _value, $Res Function(_$_NewOrderFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? autovalidate = null,
    Object? orderTitle = null,
    Object? clientName = null,
    Object? clientPhoneNumber = null,
    Object? orderDescription = null,
    Object? deliveryDate = null,
    Object? price = null,
    Object? tasks = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_NewOrderFormState(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      autovalidate: null == autovalidate
          ? _value.autovalidate
          : autovalidate // ignore: cast_nullable_to_non_nullable
              as bool,
      orderTitle: null == orderTitle
          ? _value.orderTitle
          : orderTitle // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as Name,
      clientPhoneNumber: null == clientPhoneNumber
          ? _value.clientPhoneNumber
          : clientPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      orderDescription: null == orderDescription
          ? _value.orderDescription
          : orderDescription // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OrderTask>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, FirebaseSuccess>>,
    ));
  }
}

/// @nodoc

class _$_NewOrderFormState implements _NewOrderFormState {
  const _$_NewOrderFormState(
      {required this.inProgress,
      required this.autovalidate,
      required this.orderTitle,
      required this.clientName,
      required this.clientPhoneNumber,
      required this.orderDescription,
      required this.deliveryDate,
      required this.price,
      required final List<OrderTask> tasks,
      required this.failureOrSuccessOption})
      : _tasks = tasks;

  @override
  final bool inProgress;
  @override
  final bool autovalidate;
  @override
  final String orderTitle;
  @override
  final Name clientName;
  @override
  final PhoneNumber clientPhoneNumber;
  @override
  final String orderDescription;
  @override
  final DateTime deliveryDate;
  @override
  final Price price;
  final List<OrderTask> _tasks;
  @override
  List<OrderTask> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption;

  @override
  String toString() {
    return 'NewOrderFormState(inProgress: $inProgress, autovalidate: $autovalidate, orderTitle: $orderTitle, clientName: $clientName, clientPhoneNumber: $clientPhoneNumber, orderDescription: $orderDescription, deliveryDate: $deliveryDate, price: $price, tasks: $tasks, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewOrderFormState &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.autovalidate, autovalidate) ||
                other.autovalidate == autovalidate) &&
            (identical(other.orderTitle, orderTitle) ||
                other.orderTitle == orderTitle) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientPhoneNumber, clientPhoneNumber) ||
                other.clientPhoneNumber == clientPhoneNumber) &&
            (identical(other.orderDescription, orderDescription) ||
                other.orderDescription == orderDescription) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      inProgress,
      autovalidate,
      orderTitle,
      clientName,
      clientPhoneNumber,
      orderDescription,
      deliveryDate,
      price,
      const DeepCollectionEquality().hash(_tasks),
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewOrderFormStateCopyWith<_$_NewOrderFormState> get copyWith =>
      __$$_NewOrderFormStateCopyWithImpl<_$_NewOrderFormState>(
          this, _$identity);
}

abstract class _NewOrderFormState implements NewOrderFormState {
  const factory _NewOrderFormState(
      {required final bool inProgress,
      required final bool autovalidate,
      required final String orderTitle,
      required final Name clientName,
      required final PhoneNumber clientPhoneNumber,
      required final String orderDescription,
      required final DateTime deliveryDate,
      required final Price price,
      required final List<OrderTask> tasks,
      required final Option<Either<FirebaseFailure, FirebaseSuccess>>
          failureOrSuccessOption}) = _$_NewOrderFormState;

  @override
  bool get inProgress;
  @override
  bool get autovalidate;
  @override
  String get orderTitle;
  @override
  Name get clientName;
  @override
  PhoneNumber get clientPhoneNumber;
  @override
  String get orderDescription;
  @override
  DateTime get deliveryDate;
  @override
  Price get price;
  @override
  List<OrderTask> get tasks;
  @override
  Option<Either<FirebaseFailure, FirebaseSuccess>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_NewOrderFormStateCopyWith<_$_NewOrderFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
