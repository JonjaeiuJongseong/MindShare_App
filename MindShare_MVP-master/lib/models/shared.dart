
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import 'doctor.dart';
import 'share.dart';
part 'shared.g.dart';

@ModelObject
class Shared extends _Shared{
  Shared({
    @generated @comparator @fixed required Share share,
    @generated @comparator @fixed required Doctor doctor
  }):super(share:share, doctor:doctor);

  factory Shared.fromJson(json) => _SharedFromJson(json);
}
