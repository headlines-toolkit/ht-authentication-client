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

/// {@template send_sign_in_link_exception}
/// Exception thrown when sending the sign-in link fails.
/// {@endtemplate}
class SendSignInLinkException extends AuthException {
  /// {@macro send_sign_in_link_exception}
  const SendSignInLinkException(super.error, super.stackTrace);
}

/// {@template invalid_sign_in_link_exception}
/// Exception thrown when the sign-in link is invalid or expired.
/// {@endtemplate}
class InvalidSignInLinkException extends AuthException {
  /// {@macro invalid_sign_in_link_exception}
  const InvalidSignInLinkException(super.error, super.stackTrace);
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

  /// Sends a sign-in link to the provided email address.
  ///
  /// Throws a [SendSignInLinkException] if sending the link fails.
  Future<void> sendSignInLinkToEmail({required String email});

  /// Checks if the incoming link is a valid sign-in link.
  Future<bool> isSignInWithEmailLink({required String emailLink});

  /// Signs in the user using the email and the validated sign-in link.
  ///
  /// Throws an [InvalidSignInLinkException] if the link is invalid or expired.
  /// Throws a [UserNotFoundException] if the email is not found (optional).
  Future<void> signInWithEmailLink({
    required String email,
    required String emailLink,
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
