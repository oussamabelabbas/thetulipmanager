import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/orders/client.dart';

part 'client_dto.freezed.dart';
part 'client_dto.g.dart';

@freezed
abstract class ClientDto implements _$ClientDto {
  const factory ClientDto({
    @JsonKey(ignore: true) String? clientId,
    required String clientName,
    required String clientAddress,
    required int clientWilayaCode,
    required String clientPhoneNumber,
  }) = _ClientDto;

  factory ClientDto.fromDomain(Client client) => ClientDto(
        clientId: client.clientId?.getOrCrash(),
        clientName: client.clientName.getOrCrash(),
        clientAddress: client.clientAddress,
        clientWilayaCode: client.clientWilaya.wilayaCode,
        clientPhoneNumber: client.clientPhoneNumber.getOrCrash(),
      );

  Client toDomain() => Client(
        clientId: UniqueId.fromUniqueString(clientId!),
        clientPhoneNumber: PhoneNumber(clientPhoneNumber),
        clientName: Name(clientName),
        clientWilaya: Wilaya.values.firstWhere((wilaya) => wilaya.wilayaCode == clientWilayaCode),
        clientAddress: clientAddress,
      );

  const ClientDto._();

  factory ClientDto.fromJson(Map<String, dynamic> json) => _$ClientDtoFromJson(json);

  factory ClientDto.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      ClientDto.fromJson(snapshot.data() ?? {}).copyWith(
        clientId: snapshot.id,
      );
}
