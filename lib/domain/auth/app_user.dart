import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_object.dart';
import 'value_objects.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    UniqueId? id,
    required EmailAddress emailAddress,
    required Name displayName,
  }) = _AppUser;

  factory AppUser.empty() => AppUser(
        emailAddress: EmailAddress(''),
        displayName: Name(''),
      );
}
