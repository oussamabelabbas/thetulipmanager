import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import 'value_failure.dart';
import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get failureOrValue;

  bool isValid() => failureOrValue.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => failureOrValue.fold(
        (l) => left(l),
        (r) => right(unit),
      );

  T getOrCrash() => failureOrValue.fold((f) => throw UnexpectedValueError(f), id);

  T getOrElse(T value) => failureOrValue.fold((_) => value, id);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.failureOrValue == failureOrValue;
  }

  @override
  int get hashCode => failureOrValue.hashCode;

  @override
  String toString() => 'Value($failureOrValue)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> failureOrValue;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.failureOrValue);
}
