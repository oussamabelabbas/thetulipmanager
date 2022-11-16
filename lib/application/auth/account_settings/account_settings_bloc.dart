import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:thetulipmanager/domain/auth/i_auth_facade.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/value_objects.dart';

part 'account_settings_event.dart';
part 'account_settings_state.dart';
part 'account_settings_bloc.freezed.dart';

@injectable
class AccountSettingsBloc extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  final IAuthFacade _authFacade;
  AccountSettingsBloc(this._authFacade) : super(AccountSettingsState.initial()) {
    on<SendVerificationEmailPressed>(_onSendVerificationEmailPressed);
    on<DisplayNameChanged>(_onDisplayNameChanged);
    on<EmailAddressChanged>(_onEmailAddressChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<UpdateDisplayNamePressed>(_onUpdateDisplayNamePressed);
    on<UpdateEmailAddressPressed>(_onUpdateEmailAddressPressed);
    on<UpdatePasswordPressed>(_onUpdatePasswordPressed);
  }

  void _onDisplayNameChanged(DisplayNameChanged event, Emitter<AccountSettingsState> emit) {
    emit(state.copyWith(displayName: Name(event.displayName)));
  }

  void _onEmailAddressChanged(EmailAddressChanged event, Emitter<AccountSettingsState> emit) {
    emit(state.copyWith(emailAddress: EmailAddress(event.emailAddress)));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<AccountSettingsState> emit) {
    emit(state.copyWith(password: Password(event.password)));
  }

  void _onSendVerificationEmailPressed(SendVerificationEmailPressed event, Emitter<AccountSettingsState> emit) async {
    emit(state.copyWith(inProgress: true, autovalidate: false, failureOrSuccessOption: none()));
    Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.sendEmailVerification();
    emit(state.copyWith(inProgress: true, failureOrSuccessOption: some(failureOrSuccess)));
  }

  void _onUpdateDisplayNamePressed(UpdateDisplayNamePressed event, Emitter<AccountSettingsState> emit) async {
    emit(state.copyWith(inProgress: true, autovalidate: true, failureOrSuccessOption: none()));

    if (!state.displayName.isValid()) return;

    Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.updateDisplayName(
      displayName: state.displayName,
    );
    emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(failureOrSuccess)));
  }

  void _onUpdateEmailAddressPressed(UpdateEmailAddressPressed event, Emitter<AccountSettingsState> emit) async {
    if (!state.emailAddress.isValid()) return;

    Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.updateEmailAddress(
      emailAddress: state.emailAddress,
    );
    emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(failureOrSuccess)));
  }

  void _onUpdatePasswordPressed(UpdatePasswordPressed event, Emitter<AccountSettingsState> emit) async {
    if (!state.password.isValid()) return;

    Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.updatePassword(
      password: state.password,
    );
    emit(state.copyWith(inProgress: false, failureOrSuccessOption: some(failureOrSuccess)));
  }
}
