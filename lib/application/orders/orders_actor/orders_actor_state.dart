part of 'orders_actor_bloc.dart';

@freezed
class OrdersActorState with _$OrdersActorState {
  const factory OrdersActorState({
    required bool isBusy, //if true nothing works without a loading
    required Option<Either<FirebaseFailure, FirebaseSuccess>> failureOrSuccessOption,
  }) = _OrdersActorState;

  factory OrdersActorState.initial() => OrdersActorState(
        isBusy: false,
        failureOrSuccessOption: none(),
      );
}
