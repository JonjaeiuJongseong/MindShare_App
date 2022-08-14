// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'user.dart';

abstract class _User extends Model {
  int uid;
  final String email;
  String nickName;
  Location? location;
  int enrolledTime;

  _User({
    required this.uid,
    required this.email,
    required this.nickName,
    required this.location,
    required this.enrolledTime,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'nickName': nickName,
      'location': location?.toJson(),
      'enrolledTime': enrolledTime,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is User && other.email == email;
  }

  String getUniqueKey() {
    return email + '_' + '';
  }
}

_UserFromJson(json) {
  return User(
    uid: json['uid'],
    email: json['email'],
    nickName: json['nickName'],
    location: Location?.fromJson(json['location']),
    enrolledTime: json['enrolledTime'],
  );
}
