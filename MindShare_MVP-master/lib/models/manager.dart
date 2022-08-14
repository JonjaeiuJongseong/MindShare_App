
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import 'user.dart';
part 'manager.g.dart';

@ModelObject
class Manager extends _Manager{
  Manager({
    @generated @comparator @fixed required User user,
    String name = Model.UNDEFINED_VALUE,
    String? organization,
    String? contactNumber
  }):super(user:user, name:name, organization:organization,
      contactNumber:contactNumber);

  factory Manager.fromJson(json) => _ManagerFromJson(json);
}
