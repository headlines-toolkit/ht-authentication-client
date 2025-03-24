// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
  uid: json['uid'] as String?,
  email: json['email'] as String?,
  displayName: json['displayName'] as String?,
  photoUrl: json['photoUrl'] as String?,
  isAnonymous: json['isAnonymous'] as bool? ?? false,
  isEmailVerified: json['isEmailVerified'] as bool? ?? false,
  isNewUser: json['isNewUser'] as bool? ?? false,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'displayName': instance.displayName,
  'photoUrl': instance.photoUrl,
  'isAnonymous': instance.isAnonymous,
  'isEmailVerified': instance.isEmailVerified,
  'isNewUser': instance.isNewUser,
};
