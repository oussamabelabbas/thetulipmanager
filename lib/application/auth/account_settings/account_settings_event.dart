part of 'account_settings_bloc.dart';

@freezed
class AccountSettingsEvent with _$AccountSettingsEvent {
  const factory AccountSettingsEvent.sendVerificationEmailPressed() = SendVerificationEmailPressed;
  const factory AccountSettingsEvent.displayNameChanged({required String displayName}) = DisplayNameChanged;
  const factory AccountSettingsEvent.emailAddressChanged({required String emailAddress}) = EmailAddressChanged;
  const factory AccountSettingsEvent.passwordChanged({required String password}) = PasswordChanged;
  const factory AccountSettingsEvent.updateDisplayNamePressed() = UpdateDisplayNamePressed;
  const factory AccountSettingsEvent.updateEmailAddressPressed() = UpdateEmailAddressPressed;
  const factory AccountSettingsEvent.updatePasswordPressed() = UpdatePasswordPressed;
}
