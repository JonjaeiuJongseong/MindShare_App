// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'share.dart';

abstract class _Share extends Model {
  int uid;
  final User user;
  bool grabbable;
  int sharedTime;

  _Share({
    required this.uid,
    required this.user,
    required this.grabbable,
    required this.sharedTime,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'user': user.toJson(),
      'grabbable': grabbable,
      'sharedTime': sharedTime,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Share && other.user == user;
  }

  String getUniqueKey() {
    return user.getUniqueKey() + '_' + '';
  }
}

_ShareFromJson(json) {
  return Share(
    uid: json['uid'],
    user: User.fromJson(json['user']),
    grabbable: json['grabbable'],
    sharedTime: json['sharedTime'],
  );
}
