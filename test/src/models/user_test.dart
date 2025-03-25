import 'package:ht_authentication_client/src/models/user.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('User', () {
    test('supports value equality', () {
      final user1 = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        authenticationStatus: AuthenticationStatus.unauthenticated,
        isEmailVerified: true,
      );
      final user2 = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        authenticationStatus: AuthenticationStatus.unauthenticated,
        isEmailVerified: true,
      );
      expect(user1, user2);
    });

    test('supports value inequality for different authenticationStatus', () {
      final user1 = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        authenticationStatus: AuthenticationStatus.unauthenticated,
        isEmailVerified: true,
      );
      final user2 = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        authenticationStatus: AuthenticationStatus.authenticated,
        isEmailVerified: true,
      );
      expect(user1, isNot(user2));
    });

    test('generates a UUID if uid is not provided', () {
      final user = User();
      expect(Uuid.isValidUUID(fromString: user.uid), isTrue);
    });

    test('fromJson creates a User from a Map with unauthenticated status', () {
      final json = {
        'uid': '1',
        'email': 'test@example.com',
        'displayName': 'Test User',
        'photoUrl': 'https://example.com/photo.jpg',
        'authenticationStatus': 'unauthenticated',
        'isEmailVerified': true,
        'isNewUser': false,
      };
      final user = User.fromJson(json);
      expect(user.uid, '1');
      expect(user.email, 'test@example.com');
      expect(user.displayName, 'Test User');
      expect(user.photoUrl, 'https://example.com/photo.jpg');
      expect(user.authenticationStatus, AuthenticationStatus.unauthenticated);
      expect(user.isEmailVerified, true);
      expect(user.isNewUser, false);
    });

    test('fromJson creates a User from a Map with anonymous status', () {
      final json = {
        'uid': '1',
        'email': 'test@example.com',
        'displayName': 'Test User',
        'photoUrl': 'https://example.com/photo.jpg',
        'authenticationStatus': 'anonymous',
        'isEmailVerified': true,
        'isNewUser': false,
      };
      final user = User.fromJson(json);
      expect(user.uid, '1');
      expect(user.email, 'test@example.com');
      expect(user.displayName, 'Test User');
      expect(user.photoUrl, 'https://example.com/photo.jpg');
      expect(user.authenticationStatus, AuthenticationStatus.anonymous);
      expect(user.isEmailVerified, true);
      expect(user.isNewUser, false);
    });

    test('fromJson creates a User from a Map with authenticated status', () {
      final json = {
        'uid': '1',
        'email': 'test@example.com',
        'displayName': 'Test User',
        'photoUrl': 'https://example.com/photo.jpg',
        'authenticationStatus': 'authenticated',
        'isEmailVerified': true,
        'isNewUser': false,
      };
      final user = User.fromJson(json);
      expect(user.uid, '1');
      expect(user.email, 'test@example.com');
      expect(user.displayName, 'Test User');
      expect(user.photoUrl, 'https://example.com/photo.jpg');
      expect(user.authenticationStatus, AuthenticationStatus.authenticated);
      expect(user.isEmailVerified, true);
      expect(user.isNewUser, false);
    });

    test('toJson creates a Map from a User with authenticated status', () {
      final user = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        authenticationStatus: AuthenticationStatus.authenticated,
        isEmailVerified: true,
      );
      final json = user.toJson();
      expect(json['uid'], '1');
      expect(json['email'], 'test@example.com');
      expect(json['displayName'], 'Test User');
      expect(json['photoUrl'], 'https://example.com/photo.jpg');
      expect(json['authenticationStatus'], 'authenticated');
      expect(json['isEmailVerified'], true);
      expect(json['isNewUser'], false);
    });

    test('toJson creates a Map from a User with anonymous status', () {
      final user = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        authenticationStatus: AuthenticationStatus.anonymous,
        isEmailVerified: true,
      );
      final json = user.toJson();
      expect(json['uid'], '1');
      expect(json['email'], 'test@example.com');
      expect(json['displayName'], 'Test User');
      expect(json['photoUrl'], 'https://example.com/photo.jpg');
      expect(json['authenticationStatus'], 'anonymous');
      expect(json['isEmailVerified'], true);
      expect(json['isNewUser'], false);
    });
  });
}
