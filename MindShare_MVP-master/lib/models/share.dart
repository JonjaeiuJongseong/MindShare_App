
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import '../util/ms_datetime.dart';
import 'user.dart';
part 'share.g.dart';

@ModelObject
class Share extends _Share{
  Share({
    int uid = Model.UNDEFINED_VALUE_INT,
    @generated @fixed @comparator required User user,
    bool grabbable = false,
    int sharedTime = Model.UNDEFINED_VALUE_INT
  }):super(uid:uid, user:user, grabbable:grabbable, sharedTime:sharedTime){
    this.sharedTime = (sharedTime == Model.UNDEFINED_VALUE_INT)
        ? MSDateTime.timestamp
        : sharedTime;
  }

  factory Share.fromJson(json) => _ShareFromJson(json);
}
