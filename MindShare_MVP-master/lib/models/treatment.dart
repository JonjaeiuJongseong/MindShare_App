
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
part 'treatment.g.dart';

@ModelObject
class Treatment extends _Treatment{
  Treatment({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String name
  }):super(uid:uid, name:name);

  factory Treatment.fromJson(json) => _TreatmentFromJson(json);
}
