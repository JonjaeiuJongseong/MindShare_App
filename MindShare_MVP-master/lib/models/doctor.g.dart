// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'doctor.dart';

abstract class _Doctor extends Model {
  final User user;
  String name;
  UploadedImage? photo;
  Clinic? clinic;
  Treatment? treatment;
  String? career;
  String? introlTitle;
  String? style;
  String? contactNumber;
  bool isActive;

  _Doctor({
    required this.user,
    required this.name,
    required this.photo,
    required this.clinic,
    required this.treatment,
    required this.career,
    required this.introlTitle,
    required this.style,
    required this.contactNumber,
    required this.isActive,
  });

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'name': name,
      'photo': photo?.toJson(),
      'clinic': clinic?.toJson(),
      'treatment': treatment?.toJson(),
      'career': career,
      'introlTitle': introlTitle,
      'style': style,
      'contactNumber': contactNumber,
      'isActive': isActive,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Doctor && other.user == user;
  }

  String getUniqueKey() {
    return user.getUniqueKey() + '_' + '';
  }
}

_DoctorFromJson(json) {
  return Doctor(
    user: User.fromJson(json['user']),
    name: json['name'],
    photo: UploadedImage?.fromJson(json['photo']),
    clinic: Clinic?.fromJson(json['clinic']),
    treatment: Treatment?.fromJson(json['treatment']),
    career: json['career'],
    introlTitle: json['introlTitle'],
    style: json['style'],
    contactNumber: json['contactNumber'],
    isActive: json['isActive'],
  );
}
