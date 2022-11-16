import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure({
    required T failedValue,
    required String error,
  }) = _ValueFailure<T>;

  factory ValueFailure.invalidValue({
    required T failedValue,
  }) =>
      ValueFailure(failedValue: failedValue, error: 'Invalid Value');
  factory ValueFailure.invalidEmailAddress({
    required T failedValue,
  }) =>
      ValueFailure(failedValue: failedValue, error: 'Invalid Email Address');
  factory ValueFailure.passwordTooShort({
    required T failedValue,
  }) =>
      ValueFailure(failedValue: failedValue, error: 'Password Too Short');
  factory ValueFailure.illogicName({
    required T failedValue,
  }) =>
      ValueFailure(failedValue: failedValue, error: 'Illogic Name');
  factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) =>
      ValueFailure(failedValue: failedValue, error: 'Invalid Phone Number');
  factory ValueFailure.priceNotValid({
    required T failedValue,
  }) =>
      ValueFailure(failedValue: failedValue, error: 'Price Not Valid');
}
