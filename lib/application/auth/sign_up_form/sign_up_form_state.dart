part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required Option<User> userOption,
    required bool inProgress,
    required bool autoValidate,
    required bool isPasswordObscure,
    required EmailAddress emailAddress,
    required Password password,
    required Name displayName,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _SignUpFormState;

  factory SignUpFormState.initial(Option<User> _userOption) => SignUpFormState(
        userOption: _userOption,
        inProgress: false,
        autoValidate: false,
        isPasswordObscure: true,
        emailAddress: EmailAddress(_userOption.fold(() => '', (u) => u.email ?? '')),
        password: Password(''),
        displayName: Name(_userOption.fold(() => '', (u) => u.displayName ?? '')),
        failureOrSuccessOption: none(),
      );
}
