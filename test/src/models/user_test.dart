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
        isEmailVerified: true,
      );
      final user2 = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        isEmailVerified: true,
      );
      expect(user1, user2);
    });

    test('generates a UUID if uid is not provided', () {
      final user = User();
      expect(Uuid.isValidUUID(fromString: user.uid), isTrue);
    });

    test('fromJson creates a User from a Map', () {
      final json = {
        'uid': '1',
        'email': 'test@example.com',
        'displayName': 'Test User',
        'photoUrl': 'https://example.com/photo.jpg',
        'isAnonymous': false,
        'isEmailVerified': true,
        'isNewUser': false,
      };
      final user = User.fromJson(json);
      expect(user.uid, '1');
      expect(user.email, 'test@example.com');
      expect(user.displayName, 'Test User');
      expect(user.photoUrl, 'https://example.com/photo.jpg');
      expect(user.isAnonymous, false);
      expect(user.isEmailVerified, true);
      expect(user.isNewUser, false);
    });

    test('toJson creates a Map from a User', () {
      final user = User(
        uid: '1',
        email: 'test@example.com',
        displayName: 'Test User',
        photoUrl: 'https://example.com/photo.jpg',
        isEmailVerified: true,
      );
      final json = user.toJson();
      expect(json['uid'], '1');
      expect(json['email'], 'test@example.com');
      expect(json['displayName'], 'Test User');
      expect(json['photoUrl'], 'https://example.com/photo.jpg');
      expect(json['isAnonymous'], false);
      expect(json['isEmailVerified'], true);
      expect(json['isNewUser'], false);
    });
  });
}
