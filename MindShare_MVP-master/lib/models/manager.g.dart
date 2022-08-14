// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'manager.dart';

abstract class _Manager extends Model {
  final User user;
  String name;
  String? organization;
  String? contactNumber;

  _Manager({
    required this.user,
    required this.name,
    required this.organization,
    required this.contactNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'name': name,
      'organization': organization,
      'contactNumber': contactNumber,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Manager && other.user == user;
  }

  String getUniqueKey() {
    return user.getUniqueKey() + '_' + '';
  }
}

_ManagerFromJson(json) {
  return Manager(
    user: User.fromJson(json['user']),
    name: json['name'],
    organization: json['organization'],
    contactNumber: json['contactNumber'],
  );
}
