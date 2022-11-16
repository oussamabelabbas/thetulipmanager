import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:thetulipmanager/domain/auth/value_objects.dart';
import 'package:thetulipmanager/domain/auth/auth_failure.dart';
import 'package:thetulipmanager/domain/core/errors.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../core/extensions.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade extends IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final GoogleSignIn googleSignIn;

  AuthFacade(
    this.firebaseAuth,
    this.firebaseFirestore,
    this.googleSignIn,
  );

  @override
  Option<User> getSignedInUser() => optionOf(firebaseAuth.currentUser);

  @override
  Stream<Option<User>> watchSignedInUser() async* {
    yield* firebaseAuth.userChanges().map((user) => optionOf(user));
  }

  @override
  Future<Either<AuthFailure, Unit>> sendEmailVerification() async {
    try {
      User user = getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      if (user.emailVerified) return right(unit);

      await user.sendEmailVerification();

      return right(unit);
    } on FirebaseAuthException catch (exc) {
      return left(AuthFailure.firebaseException(exc.message ?? 'Something went wrong'));
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> createAccountWithEmailAndPassword({
    required Name displayName,
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      String emailAddressString = emailAddress.getOrCrash();
      String passwordString = password.getOrCrash();

      await firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      await updateDisplayName(displayName: displayName);

      await sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (exc) {
      return left(AuthFailure.firebaseException(exc.message ?? 'Something went wrong'));
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      String emailAddressString = emailAddress.getOrCrash();
      String passwordString = password.getOrCrash();

      await firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );

      await sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (exc) {
      return left(AuthFailure.firebaseException(exc.message ?? 'Something went wrong'));
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> continueWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount == null) throw 'Something went wrong';

      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await firebaseAuth.signInWithCredential(credential);

      return right(unit);
    } on FirebaseAuthException catch (exc) {
      return left(AuthFailure.firebaseException(exc.message ?? 'Something went wrong'));
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updateDisplayName({required Name displayName}) async {
    try {
      User user = getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      String displayNameString = displayName.getOrCrash();
      await user.updateDisplayName(displayNameString);

      DocumentSnapshot userSnapshot = await firebaseFirestore.usersCollection().doc(user.uid).get();
      if (userSnapshot.exists) {
        await firebaseFirestore.usersCollection().doc(user.uid).update({
          'displayName': displayNameString,
        });
      }

      return right(unit);
    } on NotAuthenticatedError catch (_) {
      return left(AuthFailure.unauthenticated());
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updateEmailAddress({required EmailAddress emailAddress}) async {
    try {
      User user = getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      String emailAddressString = emailAddress.getOrCrash();
      await user.updateEmail(emailAddressString);

      DocumentSnapshot userSnapshot = await firebaseFirestore.usersCollection().doc(user.uid).get();
      if (userSnapshot.exists) {
        await firebaseFirestore.usersCollection().doc(user.uid).update({
          'emailAddress': emailAddress.getOrCrash(),
        });
      }

      await sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (exc) {
      return left(AuthFailure.firebaseException(exc.message ?? 'Something went wrong'));
    } on NotAuthenticatedError catch (_) {
      return left(AuthFailure.unauthenticated());
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword({required Password password}) async {
    try {
      User user = getSignedInUser().getOrElse(() => throw NotAuthenticatedError());

      await user.updatePassword(password.getOrCrash());

      return right(unit);
    } on FirebaseAuthException catch (exc) {
      return left(AuthFailure.firebaseException(exc.message ?? 'Something went wrong'));
    } on NotAuthenticatedError catch (_) {
      return left(AuthFailure.unauthenticated());
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    try {
      String emailAddressString = emailAddress.getOrCrash();
      await firebaseAuth.sendPasswordResetEmail(email: emailAddressString);

      return right(unit);
    } on FirebaseAuthException catch (exc) {
      return left(AuthFailure.firebaseException(exc.message ?? 'Something went wrong'));
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<void> signOut() async => await Future.wait([
        if (await googleSignIn.isSignedIn()) googleSignIn.signOut(),
        firebaseAuth.signOut(),
      ]);
}
