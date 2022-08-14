// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'treatment.dart';

abstract class _Treatment extends Model {
  int uid;
  final String name;

  _Treatment({
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
    return other is Treatment && other.name == name;
  }

  String getUniqueKey() {
    return name + '_' + '';
  }
}

_TreatmentFromJson(json) {
  return Treatment(
    uid: json['uid'],
    name: json['name'],
  );
}
