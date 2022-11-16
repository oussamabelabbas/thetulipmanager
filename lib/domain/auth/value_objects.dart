import 'package:dartz/dartz.dart';

import '../core/value_failure.dart';
import '../core/value_object.dart';
import 'value_validators.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> failureOrValue;

  factory Name(String input) {
    return Name._(validateName(input));
  }
  const Name._(this.failureOrValue);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> failureOrValue;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }
  const PhoneNumber._(this.failureOrValue);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> failureOrValue;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.failureOrValue);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> failureOrValue;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.failureOrValue);
}

class Price extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> failureOrValue;

  factory Price(String input) {
    return Price._(validatePrice(input));
  }

  const Price._(this.failureOrValue);
}
