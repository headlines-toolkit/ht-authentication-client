//
// ignore_for_file: avoid_redundant_argument_values

import 'package:ht_authentication_client/ht_authentication_client.dart';
import 'package:test/test.dart';

void main() {
  group('EmailSignInException', () {
    test('supports value equality', () {
      const exception1 = EmailSignInException('error', StackTrace.empty);
      const exception2 = EmailSignInException('error', StackTrace.empty);
      expect(exception1, exception2);
    });
  });

  group('GoogleSignInException', () {
    test('supports value equality', () {
      const exception1 = GoogleSignInException('error', StackTrace.empty);
      const exception2 = GoogleSignInException('error', StackTrace.empty);
      expect(exception1, exception2);
    });
  });

  group('AnonymousLoginException', () {
    test('supports value equality', () {
      const exception1 = AnonymousLoginException('error', StackTrace.empty);
      const exception2 = AnonymousLoginException('error', StackTrace.empty);
      expect(exception1, exception2);
    });
  });

  group('LogoutException', () {
    test('supports value equality', () {
      const exception1 = LogoutException('error', StackTrace.empty);
      const exception2 = LogoutException('error', StackTrace.empty);
      expect(exception1, exception2);
    });
  });

  group('DeleteAccountException', () {
    test('supports value equality', () {
      const exception1 = DeleteAccountException('error', StackTrace.empty);
      const exception2 = DeleteAccountException('error', StackTrace.empty);
      expect(exception1, exception2);
    });
  });

  group('UserNotFoundException', () {
    test('supports value equality', () {
      const exception1 = UserNotFoundException('error', StackTrace.empty);
      const exception2 = UserNotFoundException('error', StackTrace.empty);
      expect(exception1, exception2);
    });
  });

  group('InvalidCredentialsException', () {
    test('supports value equality', () {
      const exception1 = InvalidCredentialsException('error', StackTrace.empty);
      const exception2 = InvalidCredentialsException('error', StackTrace.empty);
      expect(exception1, exception2);
    });
  });
}
