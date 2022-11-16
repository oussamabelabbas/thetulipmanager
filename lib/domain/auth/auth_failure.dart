import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure({
    required String message,
  }) = _AuthFailure;

  factory AuthFailure.firebaseException(String text) => AuthFailure(message: text);
  factory AuthFailure.invalidEmailAddress() => const AuthFailure(message: 'Invalid Email Address');
  factory AuthFailure.deviceNotSupported() => const AuthFailure(message: 'Device Not Supported');
  factory AuthFailure.emailAlreadyInUse() => const AuthFailure(message: 'Email Already In Use');
  factory AuthFailure.unexpectedValue() => const AuthFailure(message: 'Unexpected Value');
  factory AuthFailure.tooManyRequests() => const AuthFailure(message: 'Too Many Requests');
  factory AuthFailure.unauthenticated() => const AuthFailure(message: 'Unauthenticated');
  factory AuthFailure.sessionExpired() => const AuthFailure(message: 'Session Expired');
  factory AuthFailure.noUserFound() => const AuthFailure(message: 'No User Found');
  factory AuthFailure.serverError() => const AuthFailure(message: 'Server Error');
  factory AuthFailure.fatalFailure() => const AuthFailure(message: 'Fatal Failure');
}
