import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;
  SignUpFormBloc(this._authFacade) : super(SignUpFormState.initial(_authFacade.getSignedInUser())) {
    on<Started>(_onStarted);
    on<EmailAddressChanged>(_onEmailAddressChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<DisplayNameChanged>(_onDisplayNameChanged);
    on<PasswordObscurityChanged>(_onPasswordObscurityChanged);
    on<CreateAccountPressed>(_onCreateAccountPressed);
  }

  void _onStarted(Started event, Emitter<SignUpFormState> emit) async {}

  void _onEmailAddressChanged(EmailAddressChanged event, Emitter<SignUpFormState> emit) async {
    emit(state.copyWith(emailAddress: EmailAddress(event.emailAddress.trim())));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignUpFormState> emit) async {
    emit(state.copyWith(password: Password(event.password.trim())));
  }

  void _onDisplayNameChanged(DisplayNameChanged event, Emitter<SignUpFormState> emit) async {
    emit(state.copyWith(displayName: Name(event.displayName.trim())));
  }

  void _onPasswordObscurityChanged(PasswordObscurityChanged event, Emitter<SignUpFormState> emit) async {
    emit(state.copyWith(isPasswordObscure: !state.isPasswordObscure));
  }

  void _onCreateAccountPressed(CreateAccountPressed event, Emitter<SignUpFormState> emit) async {
    emit(state.copyWith(
      inProgress: true,
      autoValidate: false,
      failureOrSuccessOption: none(),
    ));

    if (!_areValuesValid()) {
      emit(state.copyWith(
        failureOrSuccessOption: none(),
        autoValidate: true,
        inProgress: false,
      ));
      return;
    }

    Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.createAccountWithEmailAndPassword(
      displayName: state.displayName,
      emailAddress: state.emailAddress,
      password: state.password,
    );

    emit(state.copyWith(
      inProgress: false,
      autoValidate: false,
      failureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  bool _areValuesValid() => state.emailAddress.isValid() && state.displayName.isValid() && state.password.isValid();
}
