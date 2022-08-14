
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import 'user.dart';
part 'setting.g.dart';

@ModelObject
class Setting extends _Setting{
  Setting({
    @generated @comparator @fixed required User user,
    bool remindable = true,
    bool invitable = true
  }):super(user:user, remindable:remindable, invitable:invitable);

  factory Setting.fromJson(json) => _SettingFromJson(json);
}
