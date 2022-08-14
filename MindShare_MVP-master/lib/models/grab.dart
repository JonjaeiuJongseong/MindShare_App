
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import '../util/ms_datetime.dart';
import 'doctor.dart';
import 'manager.dart';
import 'share.dart';
part 'grab.g.dart';

@ModelObject
class Grab extends _Grab{
  Grab({
    @generated @fixed @comparator required Share share,
    @generated @fixed @comparator required Doctor doctor,
    int timestamp = Model.UNDEFINED_VALUE_INT,
    @generated Manager? manager,
  }):super(share:share, doctor:doctor, timestamp:timestamp, manager:manager){
    this.timestamp = (timestamp == Model.UNDEFINED_VALUE_INT)
        ? MSDateTime.timestamp
        : timestamp;
  }

  factory Grab.fromJson(json) => _GrabFromJson(json);
}
