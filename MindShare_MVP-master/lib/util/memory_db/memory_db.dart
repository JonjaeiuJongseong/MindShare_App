
import '../database.dart';
import '../model.dart';

class MemoryDB extends Database{
  final records = <Model>[];

  @override
  read() {
    return records;
  }

  @override
  bool add(record) {
    if(_isExist(record) == false) {
      records.add(record);
      return true;
    }
    return false;
  }

  _isExist(record) => records.any((e)=>e==record);

  @override
  connect(name, adapter) {}

  @override
  delete(record) {}

  @override
  update(record) {}
}