part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.started() = Started;
  const factory SignUpFormEvent.emailAddressChanged(String emailAddress) = EmailAddressChanged;
  const factory SignUpFormEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignUpFormEvent.displayNameChanged(String displayName) = DisplayNameChanged;
  const factory SignUpFormEvent.passwordObscurityChanged() = PasswordObscurityChanged;
  const factory SignUpFormEvent.completeAccountPressed() = CompleteAccountPressed;
  const factory SignUpFormEvent.createAccountPressed() = CreateAccountPressed;
}
