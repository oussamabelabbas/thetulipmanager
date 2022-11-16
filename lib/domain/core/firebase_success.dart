import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_success.freezed.dart';

@freezed
class FirebaseSuccess with _$FirebaseSuccess {
  const factory FirebaseSuccess.success() = _Success;
  const factory FirebaseSuccess.orderCreated() = _OrderCreated;
  const factory FirebaseSuccess.taskStateUpdated() = _TaskStateUpdated;
  const factory FirebaseSuccess.markedAsDone({required String id}) = _MarkedAsDone;
  const factory FirebaseSuccess.markedAsArchived({required String id}) = _MarkedAsArchived;
  const factory FirebaseSuccess.orderDeleted({required String id}) = _OrderDeleted;
}
