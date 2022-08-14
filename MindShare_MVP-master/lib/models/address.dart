
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
part 'address.g.dart';

@ModelObject
class Address extends _Address{
  Address({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String address,
    double x = 0.0,
    double y = 0.0
}):super(uid:uid, address:address, x:x, y:y);

  factory Address.fromJson(json) => _AddressFromJson(json);
}
