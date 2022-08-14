
import 'package:mindshare/util/code_gen/annotations.dart';
import 'package:mindshare/util/repository.dart';

import '../util/memory_db/memory_db.dart';
import '../util/model.dart';
part 'emotion.g.dart';

@ModelObject
class Emotion extends _Emotion{
  Emotion({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String id,
    @comparator @fixed required String name
  }):super(uid:uid, id:id, name:name);

  factory Emotion.fromJson(json) => _EmotionFromJson(json);
}

class EmotionRepository extends Repository{
  EmotionRepository():super(db:MemoryDB());

  @override
  init() {
    add(Emotion(uid:0, id:'default', name:'감정'));
    add(Emotion(uid:1, id:'sad', name:'슬픔'));
    add(Emotion(uid:2, id:'happy', name:'기쁨'));
    add(Emotion(uid:3, id:'annoyed', name:'짜증'));
    add(Emotion(uid:4, id:'scared', name:'두려움'));
    add(Emotion(uid:5, id:'angry', name:'분노'));
  }
}
