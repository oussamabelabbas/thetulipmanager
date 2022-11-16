import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_failure.freezed.dart';

@freezed
class FirebaseFailure with _$FirebaseFailure {
  const factory FirebaseFailure({
    required String message,
  }) = _FirebaseFailure;

  factory FirebaseFailure.firebaseException({required String text}) => FirebaseFailure(message: text);
  factory FirebaseFailure.serverError() => const FirebaseFailure(message: 'Server Error');
}
