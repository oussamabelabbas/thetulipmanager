import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/value_objects.dart';
import '../core/value_object.dart';

part 'client.freezed.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required UniqueId id,
    required Name name,
    required PhoneNumber phoneNumber,
  }) = _Client;
}
