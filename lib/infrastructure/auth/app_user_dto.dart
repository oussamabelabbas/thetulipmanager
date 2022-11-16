import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/app_user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_object.dart';

part 'app_user_dto.freezed.dart';
part 'app_user_dto.g.dart';

@freezed
abstract class AppUserDto implements _$AppUserDto {
  const factory AppUserDto({
    @JsonKey(ignore: true) String? uid,
    required String emailAddress,
    required String displayName,
  }) = _AppUserDto;

  factory AppUserDto.fromDomain(AppUser appUser) => AppUserDto(
        emailAddress: appUser.emailAddress.getOrCrash(),
        displayName: appUser.displayName.getOrCrash(),
      );
  AppUser toDomain() => AppUser(
        id: UniqueId.fromUniqueString(uid!),
        emailAddress: EmailAddress(emailAddress),
        displayName: Name(displayName),
      );

  const AppUserDto._();

  factory AppUserDto.fromJson(Map<String, dynamic> json) => _$AppUserDtoFromJson(json);

  factory AppUserDto.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      AppUserDto.fromJson(snapshot.data()!).copyWith(uid: snapshot.id);
}
