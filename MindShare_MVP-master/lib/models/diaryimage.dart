
import 'package:mindshare/models/uploadedimage.dart';
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
import 'diary.dart';
part 'diaryimage.g.dart';

@ModelObject
class DiaryImage extends _DiaryImage{
  DiaryImage({
    @generated @comparator @fixed required Diary diary,
    @generated @comparator @fixed required UploadedImage image
  }):super(diary:diary, image:image);

  factory DiaryImage.fromJson(json) => _DiaryImageFromJson(json);
}
