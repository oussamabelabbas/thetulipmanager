import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/app_user.dart';
import '../../../domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckRequested>(_onAuthCheckRequested);
    on<UserRecieved>(_onUserRecieved);
    on<SignOutPressed>(_onSignOutPressed);
  }

  StreamSubscription? _userStreamSubscription;

  void _onAuthCheckRequested(AuthCheckRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.inProgress());

    await _userStreamSubscription?.cancel();

    _userStreamSubscription = _authFacade.watchSignedInUser().listen(
          (userOption) => add(UserRecieved(userOption)),
        );
  }

  void _onUserRecieved(UserRecieved event, Emitter<AuthState> emit) async {
    emit(event.userOption.fold(
      () => const AuthState.unauthenticated(),
      (user) => AuthState.authenticated(user),
    ));
  }

  void _onSignOutPressed(SignOutPressed event, Emitter<AuthState> emit) async {
    emit(const AuthState.inProgress());
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }

  @override
  Future<void> close() {
    _userStreamSubscription?.cancel();
    return super.close();
  }
}
