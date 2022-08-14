// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'shared.dart';

abstract class _Shared extends Model {
  final Share share;
  final Doctor doctor;

  _Shared({
    required this.share,
    required this.doctor,
  });

  Map<String, dynamic> toJson() {
    return {
      'share': share.toJson(),
      'doctor': doctor.toJson(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Shared && other.share == share && other.doctor == doctor;
  }

  String getUniqueKey() {
    return share.getUniqueKey() + '_' + doctor.getUniqueKey() + '_' + '';
  }
}

_SharedFromJson(json) {
  return Shared(
    share: Share.fromJson(json['share']),
    doctor: Doctor.fromJson(json['doctor']),
  );
}
