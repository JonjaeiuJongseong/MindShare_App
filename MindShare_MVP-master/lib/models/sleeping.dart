
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
part 'sleeping.g.dart';

@ModelObject
class Sleeping extends _Sleeping{
  Sleeping({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String name
  }):super(uid:uid, name:name);

  factory Sleeping.fromJson(json) => _SleepingFromJson(json);
}
