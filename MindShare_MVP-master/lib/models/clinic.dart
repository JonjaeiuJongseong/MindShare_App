
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import 'address.dart';
import 'location.dart';
part 'clinic.g.dart';

@ModelObject
class Clinic extends _Clinic{
  Clinic({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String name,
    @generated @fixed required Location location,
    @generated Address? address
  }):super(uid:uid, name:name, location:location, address:address);

  factory Clinic.fromJson(json) => _ClinicFromJson(json);
}
