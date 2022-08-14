// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'setting.dart';

abstract class _Setting extends Model {
  final User user;
  bool remindable;
  bool invitable;

  _Setting({
    required this.user,
    required this.remindable,
    required this.invitable,
  });

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'remindable': remindable,
      'invitable': invitable,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Setting && other.user == user;
  }

  String getUniqueKey() {
    return user.getUniqueKey() + '_' + '';
  }
}

_SettingFromJson(json) {
  return Setting(
    user: User.fromJson(json['user']),
    remindable: json['remindable'],
    invitable: json['invitable'],
  );
}
