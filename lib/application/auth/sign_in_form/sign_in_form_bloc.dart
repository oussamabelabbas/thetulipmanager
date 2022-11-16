import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:thetulipmanager/domain/auth/i_auth_facade.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailAddressChanged>(_onEmailAddressChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<PasswordObscurityChanged>(_onPasswordObscurityChanged);
    on<ResetPasswordPressed>(_onResetPasswordPressed);
    on<SignInPressed>(_onSignInPressed);
    on<ContinueWithGooglePressed>(_onContinueWithGooglePressed);
  }

  void _onEmailAddressChanged(EmailAddressChanged event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(emailAddress: EmailAddress(event.emailAddress.trim())));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(password: Password(event.password.trim())));
  }

  void _onPasswordObscurityChanged(PasswordObscurityChanged event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(isPasswordObscure: !state.isPasswordObscure));
  }

  void _onResetPasswordPressed(ResetPasswordPressed event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      autoValidate: false,
      inProgress: true,
      failureOrSuccessOption: none(),
    ));

    bool isEmailValid = state.emailAddress.isValid();

    if (!isEmailValid) {
      emit(state.copyWith(
        failureOrSuccessOption: none(),
        autoValidate: true,
        inProgress: false,
      ));
      return;
    }

    Either<AuthFailure, Unit> failureOrSuccess =
        await _authFacade.sendPasswordResetEmail(emailAddress: state.emailAddress);

    emit(state.copyWith(
      inProgress: false,
      autoValidate: false,
      failureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  void _onSignInPressed(SignInPressed event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      autoValidate: false,
      inProgress: true,
      failureOrSuccessOption: none(),
    ));

    bool isEmailValid = state.emailAddress.isValid();
    bool isPasswordValid = state.password.isValid();

    if (!(isEmailValid && isPasswordValid)) {
      emit(state.copyWith(
        failureOrSuccessOption: none(),
        autoValidate: true,
        inProgress: false,
      ));
      return;
    }

    Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
      emailAddress: state.emailAddress,
      password: state.password,
    );

    emit(state.copyWith(
      inProgress: false,
      autoValidate: false,
      failureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  void _onContinueWithGooglePressed(ContinueWithGooglePressed event, Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      autoValidate: false,
      inProgress: true,
      failureOrSuccessOption: none(),
    ));

    Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.continueWithGoogle();

    emit(state.copyWith(
      inProgress: false,
      autoValidate: false,
      failureOrSuccessOption: some(failureOrSuccess),
    ));
  }
}
