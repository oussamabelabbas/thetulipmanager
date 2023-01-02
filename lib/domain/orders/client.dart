import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/value_objects.dart';
import '../core/value_object.dart';

part 'client.freezed.dart';

@freezed
class Client with _$Client {
  const factory Client({
    UniqueId? clientId,
    required PhoneNumber clientPhoneNumber,
    required Name clientName,
    required Wilaya clientWilaya,
    required String clientAddress,
  }) = _Client;
}

enum Wilaya {
  adrar('Adrar', 1),
  chlef('Chlef', 2),
  laghouat('Laghouat', 3),
  oumElBouaghi('Oum El Bouaghi', 4),
  batna('Batna', 5),
  bejaia('Béjaïa', 6),
  biskra('Biskra', 7),
  bechar('Béchar', 8),
  blida('Blida', 9),
  bouira('Bouïra', 10),
  tamanrasset('Tamanrasset', 11),
  tebessa('Tébessa', 12),
  tlemcen('Tlemcen', 13),
  tiaret('Tiaret', 14),
  tiziOuzou('Tizi Ouzou', 15),
  algiers('Algiers', 16),
  djelfa('Djelfa', 17),
  jijel('Jijel', 18),
  setif('Sétif', 19),
  saida('Saïda', 20),
  skikda('Skikda', 21),
  sidiBelAbbes('Sidi Bel Abbès', 22),
  annaba('Annaba', 23),
  guelma('Guelma', 24),
  constantine('Constantine', 25),
  medea('Médéa', 26),
  mostaganem('Mostaganem', 27),
  msila('M\'Sila', 28),
  mascara('Mascara', 29),
  ouargla('Ouargla', 30),
  oran('Oran', 31),
  elBayadh('El Bayadh', 32),
  illizi('Illizi', 33),
  bordjBouArreridj('Bordj Bou Arréridj', 34),
  boumerdes('Boumerdès', 35),
  elTarf('El Tarf', 36),
  tindouf('Tindouf', 37),
  tissemsilt('Tissemsilt', 38),
  elOued('El Oued', 39),
  khenchela('Khenchela', 40),
  soukAhras('Souk Ahras', 41),
  tipaza('Tipaza', 42),
  mila('Mila', 43),
  ainDefla('Aïn Defla', 44),
  naama('Naâma', 45),
  ainTemouchent('Aïn Témouchent', 46),
  ghardaia('Ghardaïa', 47),
  relizane('Relizane', 48),
  elMghair('El M\'Ghair', 49),
  elMenia('El Menia', 50),
  ouledDjellal('Ouled Djellal', 51),
  bordjBajiMokhtar('Bordj Baji Mokhtar', 52),
  beniAbbes('Béni Abbès', 53),
  timimoun('Timimoun', 54),
  touggourt('Touggourt', 55),
  djanet('Djanet', 56),
  inSalah('In Salah', 57),
  inGuezzam('In Guezzam', 58),
  other('Not From Algeria', 0);

  const Wilaya(this.wilayaName, this.wilayaCode);

  final String wilayaName;
  final int wilayaCode;

  String get codeName => '$wilayaCode - $wilayaName';
}
