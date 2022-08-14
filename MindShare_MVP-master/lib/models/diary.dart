import 'package:mindshare/models/emotion.dart';
import 'package:mindshare/models/sleeping.dart';
import 'package:mindshare/util/code_gen/annotations.dart';
import 'package:mindshare/util/repository.dart';

import '../util/memory_db/memory_db.dart';
import '../util/model.dart';
import '../util/ms_datetime.dart';
import 'user.dart';
part 'diary.g.dart';

@ModelObject
class Diary extends _Diary{
  Diary({
    int uid = Model.UNDEFINED_VALUE_INT,
    @generated @comparator @fixed required User user,
    @generated Emotion? emotion,
    @generated Sleeping? sleeping,
    String? title,
    String? diary,
    bool isPrivate = false,
    bool isScrap = false,
    @comparator @fixed required String diaryDate,
    int createTime = Model.UNDEFINED_VALUE_INT,
    int lastUpdateTime = Model.UNDEFINED_VALUE_INT
  }):super(uid:uid, user:user, emotion:emotion, sleeping:sleeping, title:title,
    diary:diary, isPrivate:isPrivate, isScrap:isScrap, diaryDate:diaryDate,
    createTime:createTime, lastUpdateTime:lastUpdateTime) {
    this.createTime = (createTime == Model.UNDEFINED_VALUE_INT)
        ? MSDateTime.timestamp
        : createTime;
    this.lastUpdateTime = (lastUpdateTime == Model.UNDEFINED_VALUE_INT)
        ? MSDateTime.timestamp
        : lastUpdateTime;
  }

  factory Diary.fromJson(json) => _DiaryFromJson(json);
}

class DiaryRepository extends Repository{
  DiaryRepository():super(db:MemoryDB());
}