
import 'package:mindshare/util/code_gen/annotations.dart';
import '../util/memory_db/memory_db.dart';
import '../util/model.dart';
import '../util/repository.dart';

part 'location.g.dart';

@ModelObject
class Location extends _Location{
  Location({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String name
  }):super(uid:uid, name:name);

  factory Location.fromJson(json) => _LocationFromJson(json);
}

class LocationRepository extends Repository{
  LocationRepository():super(db:MemoryDB());

  @override
  init() {
    add(Location(uid:0, name:'서대문구'));
    add(Location(uid:0, name:'관악구'));
    add(Location(uid:0, name:'판교'));
    add(Location(uid:0, name:'기타 지역'));
  }
}