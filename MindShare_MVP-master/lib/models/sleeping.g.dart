// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'sleeping.dart';

abstract class _Sleeping extends Model {
  int uid;
  final String name;

  _Sleeping({
    required this.uid,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Sleeping && other.name == name;
  }

  String getUniqueKey() {
    return name + '_' + '';
  }
}

_SleepingFromJson(json) {
  return Sleeping(
    uid: json['uid'],
    name: json['name'],
  );
}
