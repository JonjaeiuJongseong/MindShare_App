// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'clinic.dart';

abstract class _Clinic extends Model {
  int uid;
  final String name;
  final Location location;
  Address? address;

  _Clinic({
    required this.uid,
    required this.name,
    required this.location,
    required this.address,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'location': location.toJson(),
      'address': address?.toJson(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Clinic && other.name == name;
  }

  String getUniqueKey() {
    return name + '_' + '';
  }
}

_ClinicFromJson(json) {
  return Clinic(
    uid: json['uid'],
    name: json['name'],
    location: Location.fromJson(json['location']),
    address: Address?.fromJson(json['address']),
  );
}
