import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Option<User> getSignedInUser();
  Stream<Option<User>> watchSignedInUser();
  Future<Either<AuthFailure, Unit>> sendEmailVerification();
  Future<Either<AuthFailure, Unit>> continueWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> createAccountWithEmailAndPassword({
    required Name displayName,
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> updateEmailAddress({required EmailAddress emailAddress});
  Future<Either<AuthFailure, Unit>> updateDisplayName({required Name displayName});
  Future<Either<AuthFailure, Unit>> updatePassword({required Password password});

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({required EmailAddress emailAddress});
  Future<void> signOut();
}
