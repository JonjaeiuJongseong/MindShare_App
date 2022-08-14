
import 'package:mindshare/util/code_gen/annotations.dart';
import 'package:mindshare/util/memory_db/memory_db.dart';
import 'package:mindshare/util/ms_datetime.dart';

import '../util/model.dart';
import '../util/repository.dart';
import 'location.dart';

part 'user.g.dart';

@ModelObject
class User extends _User{
  User({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String email,
    String nickName = Model.UNDEFINED_VALUE,
    @generated Location? location,
    int enrolledTime = Model.UNDEFINED_VALUE_INT
  }):super(uid:uid, email:email, nickName:nickName, location:location,
      enrolledTime:enrolledTime){
    this.enrolledTime = (enrolledTime == Model.UNDEFINED_VALUE_INT)
        ? MSDateTime.timestamp
        : enrolledTime;
  }

  factory User.fromJson(json) => _UserFromJson(json);
}

class UserRepository extends Repository{
  UserRepository():super(db:MemoryDB());
  User? user;

  setUser(user){
    this.user = user;
  }
}
