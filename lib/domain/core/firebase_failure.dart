import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_failure.freezed.dart';

@freezed
class FirebaseFailure with _$FirebaseFailure {
  const factory FirebaseFailure({
    required String message,
  }) = _FirebaseFailure;

  factory FirebaseFailure.tooManyClients() =>
      const FirebaseFailure(message: 'Found multiple clients with a single phone number');
  factory FirebaseFailure.serverError() => const FirebaseFailure(message: 'Server Error');
}
