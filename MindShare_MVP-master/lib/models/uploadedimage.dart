
import 'package:mindshare/util/code_gen/annotations.dart';

import '../util/model.dart';
part 'uploadedimage.g.dart';

@ModelObject
class UploadedImage extends _UploadedImage{
  UploadedImage({
    int uid = Model.UNDEFINED_VALUE_INT,
    @comparator @fixed required String url
  }):super(uid:uid, url:url);

  factory UploadedImage.fromJson(json) => _UploadedImageFromJson(json);
}
