import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/orders/client.dart';

part 'client_dto.freezed.dart';
part 'client_dto.g.dart';

@freezed
abstract class ClientDto implements _$ClientDto {
  const factory ClientDto({
    required String id,
    required String name,
    required String phoneNumber,
  }) = _ClientDto;

  factory ClientDto.fromDomain(Client client) => ClientDto(
        id: client.id.getOrCrash(),
        name: client.name.getOrCrash(),
        phoneNumber: client.phoneNumber.getOrCrash(),
      );

  Client toDomain() => Client(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        phoneNumber: PhoneNumber(phoneNumber),
      );

  const ClientDto._();

  factory ClientDto.fromJson(Map<String, dynamic> json) => _$ClientDtoFromJson(json);
}
