
import 'package:mindshare/models/treatment.dart';
import 'package:mindshare/models/uploadedimage.dart';
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import 'clinic.dart';
import 'user.dart';
part 'doctor.g.dart';

@ModelObject
class Doctor extends _Doctor{
  Doctor({
    @generated @comparator @fixed required User user,
    String name = Model.UNDEFINED_VALUE,
    @generated UploadedImage? photo,
    @generated Clinic? clinic,
    @generated Treatment? treatment,
    String? career,
    String? introlTitle,
    String? style,
    String? contactNumber,
    bool isActive = true
  }):super(user:user, name:name, photo:photo, clinic:clinic,
      treatment:treatment, career:career, introlTitle:introlTitle, style:style,
      contactNumber:contactNumber, isActive:isActive);

  factory Doctor.fromJson(json) => _DoctorFromJson(json);
}
