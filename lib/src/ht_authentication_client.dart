import 'package:equatable/equatable.dart';
import 'package:ht_authentication_client/src/models/user.dart';

/// {@template auth_exception}
/// Base class for all authentication exceptions.
/// {@endtemplate}
abstract class AuthException extends Equatable implements Exception {
  /// {@macro auth_exception}
  const AuthException(this.error, this.stackTrace);

  /// The error which was caught.
  final Object error;

  /// The stack trace associated with the error.
  final StackTrace stackTrace;

  @override
  List<Object?> get props => [error, stackTrace];
}

/// {@template email_sign_in_exception}
/// Exception thrown when email sign-in fails.
/// {@endtemplate}
class EmailSignInException extends AuthException {
  /// {@macro email_sign_in_exception}
  const EmailSignInException(super.error, super.stackTrace);
}

/// {@template google_sign_in_exception}
/// Exception thrown when Google sign-in fails.
/// {@endtemplate}
class GoogleSignInException extends AuthException {
  /// {@macro google_sign_in_exception}
  const GoogleSignInException(super.error, super.stackTrace);
}

/// {@template anonymous_login_exception}
/// Exception thrown when anonymous login fails.
/// {@endtemplate}
class AnonymousLoginException extends AuthException {
  /// {@macro anonymous_login_exception}
  const AnonymousLoginException(super.error, super.stackTrace);
}

/// {@template logout_exception}
/// Exception thrown when logout fails.
/// {@endtemplate}
class LogoutException extends AuthException {
  /// {@macro logout_exception}
  const LogoutException(super.error, super.stackTrace);
}

/// {@template delete_account_exception}
/// Exception thrown when account deletion fails.
/// {@endtemplate}
class DeleteAccountException extends AuthException {
  /// {@macro delete_account_exception}
  const DeleteAccountException(super.error, super.stackTrace);
}

/// {@template user_not_found_exception}
/// Exception thrown when a user is not found.
/// {@endtemplate}
class UserNotFoundException extends AuthException {
  /// {@macro user_not_found_exception}
  const UserNotFoundException(super.error, super.stackTrace);
}

/// {@template invalid_credentials_exception}
/// Exception thrown when invalid credentials are provided.
/// {@endtemplate}
class InvalidCredentialsException extends AuthException {
  /// {@macro invalid_credentials_exception}
  const InvalidCredentialsException(super.error, super.stackTrace);
}

/// {@template ht_authentication_client}
/// An abstract authentication client that supports email login, Google login,
/// anonymous login, logout, delete account, and provides a stream of user
/// authentication state.
/// {@endtemplate}
abstract class HtAuthenticationClient {
  /// {@macro ht_authentication_client}
  const HtAuthenticationClient();

  /// Stream of [User] authentication state.
  Stream<User> get user;

  /// Signs in with email and password.
  ///
  /// Throws an [EmailSignInException] if sign-in fails.
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs in with Google.
  ///
  /// Throws a [GoogleSignInException] if sign-in fails.
  Future<void> signInWithGoogle();

  /// Signs in anonymously.
  ///
  /// Throws an [AnonymousLoginException] if sign-in fails.
  Future<void> signInAnonymously();

  /// Signs out the current user.
  ///
  /// Throws a [LogoutException] if sign-out fails.
  Future<void> signOut();

  /// Deletes the current user's account.
  ///
  /// Throws a [DeleteAccountException] if account deletion fails.
  Future<void> deleteAccount();
}
