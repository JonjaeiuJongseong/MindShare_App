// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'location.dart';

abstract class _Location extends Model {
  int uid;
  final String name;

  _Location({
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
    return other is Location && other.name == name;
  }

  String getUniqueKey() {
    return name + '_' + '';
  }
}

_LocationFromJson(json) {
  return Location(
    uid: json['uid'],
    name: json['name'],
  );
}
