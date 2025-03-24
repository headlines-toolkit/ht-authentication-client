import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'user.g.dart';

/// {@template user}
/// User model
///
/// Contains user information, including [uid], [email], [displayName],
/// [photoUrl], [isAnonymous], [isEmailVerified], and [isNewUser].
/// {@endtemplate}
@JsonSerializable()
class User extends Equatable {
  /// {@macro user}
  User({
    String? uid,
    this.email,
    this.displayName,
    this.photoUrl,
    this.isAnonymous = false,
    this.isEmailVerified = false,
    this.isNewUser = false,
  }) : uid = uid ?? const Uuid().v4();

  /// Deserializes a [Map] into a [User] instance.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Unique identifier for the user.
  ///
  /// If a [uid] is not provided, a default UUID will be generated.
  final String uid;

  /// Email address of the user.
  final String? email;

  /// Display name of the user.
  final String? displayName;

  /// URL of the user's profile photo.
  final String? photoUrl;

  /// Whether the user is anonymous.
  final bool isAnonymous;

  /// Whether the user's email address has been verified.
  final bool isEmailVerified;

  /// Whether the user is a new user.
  final bool isNewUser;

  /// Converts a [User] instance into a [Map].
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
    uid,
    email,
    displayName,
    photoUrl,
    isAnonymous,
    isEmailVerified,
    isNewUser,
  ];
}
