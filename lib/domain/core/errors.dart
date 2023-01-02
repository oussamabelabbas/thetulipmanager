import 'value_failure.dart';

class UserAlreadyExistsError extends Error {}

class ClientAlreadyExistsError extends Error {}

class NotAuthenticatedError extends Error {}

class FatalError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const String explanation = 'Encountred a ValueFailure at an unrecoverable point. Terminating...';
    return Error.safeToString("$explanation \nFailure was: $valueFailure");
  }
}
