// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'address.dart';

abstract class _Address extends Model {
  int uid;
  final String address;
  double x;
  double y;

  _Address({
    required this.uid,
    required this.address,
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'address': address,
      'x': x,
      'y': y,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Address && other.address == address;
  }

  String getUniqueKey() {
    return address + '_' + '';
  }
}

_AddressFromJson(json) {
  return Address(
    uid: json['uid'],
    address: json['address'],
    x: json['x'],
    y: json['y'],
  );
}
