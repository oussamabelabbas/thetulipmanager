import 'package:dartz/dartz.dart';

import '../core/value_failure.dart';

Either<ValueFailure<String>, String> validateName(String input) {
  if (input.length >= 3) return right(input);
  return left(ValueFailure.illogicName(failedValue: input));
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if (input.startsWith('+213') && input.length == 13) return right(input);
  return left(ValueFailure.invalidPhoneNumber(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'''(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])''';
  if (RegExp(emailRegex).hasMatch(input)) return right(input);
  return left(ValueFailure.invalidEmailAddress(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length < 8) return left(ValueFailure.passwordTooShort(failedValue: input));
  return right(input);
}

Either<ValueFailure<String>, String> validatePrice(String input) {
  const emailRegex = r'''[0-9]+''';
  if (RegExp(emailRegex).hasMatch(input)) return right(input);
  return left(ValueFailure.priceNotValid(failedValue: input));
}
