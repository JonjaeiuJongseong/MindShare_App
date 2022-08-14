// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'grab.dart';

abstract class _Grab extends Model {
  final Share share;
  final Doctor doctor;
  int timestamp;
  Manager? manager;

  _Grab({
    required this.share,
    required this.doctor,
    required this.timestamp,
    required this.manager,
  });

  Map<String, dynamic> toJson() {
    return {
      'share': share.toJson(),
      'doctor': doctor.toJson(),
      'timestamp': timestamp,
      'manager': manager?.toJson(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Grab && other.share == share && other.doctor == doctor;
  }

  String getUniqueKey() {
    return share.getUniqueKey() + '_' + doctor.getUniqueKey() + '_' + '';
  }
}

_GrabFromJson(json) {
  return Grab(
    share: Share.fromJson(json['share']),
    doctor: Doctor.fromJson(json['doctor']),
    timestamp: json['timestamp'],
    manager: Manager?.fromJson(json['manager']),
  );
}
