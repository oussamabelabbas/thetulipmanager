part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required bool inProgress,
    required bool autoValidate,
    required bool isPasswordObscure,
    required EmailAddress emailAddress,
    required Password password,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        inProgress: false,
        autoValidate: false,
        isPasswordObscure: true,
        emailAddress: EmailAddress(''),
        password: Password(''),
        failureOrSuccessOption: none(),
      );
}
