part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailAddressChanged(String emailAddress) = EmailAddressChanged;
  const factory SignInFormEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignInFormEvent.passwordObscurityChanged() = PasswordObscurityChanged;
  const factory SignInFormEvent.resetPasswordPressed() = ResetPasswordPressed;
  const factory SignInFormEvent.signInPressed() = SignInPressed;
  const factory SignInFormEvent.continueWithGooglePressed() = ContinueWithGooglePressed;
}
