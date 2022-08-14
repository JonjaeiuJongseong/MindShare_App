// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'uploadedimage.dart';

abstract class _UploadedImage extends Model {
  int uid;
  final String url;

  _UploadedImage({
    required this.uid,
    required this.url,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'url': url,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is UploadedImage && other.url == url;
  }

  String getUniqueKey() {
    return url + '_' + '';
  }
}

_UploadedImageFromJson(json) {
  return UploadedImage(
    uid: json['uid'],
    url: json['url'],
  );
}
