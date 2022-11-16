part of 'account_settings_bloc.dart';

@freezed
class AccountSettingsState with _$AccountSettingsState {
  const factory AccountSettingsState({
    required bool inProgress,
    required bool autovalidate,
    required Name displayName,
    required EmailAddress emailAddress,
    required Password password,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _AccountSettingsState;

  factory AccountSettingsState.initial() => AccountSettingsState(
        inProgress: false,
        autovalidate: false,
        displayName: Name(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        failureOrSuccessOption: none(),
      );
}
