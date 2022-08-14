// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'diaryimage.dart';

abstract class _DiaryImage extends Model {
  final Diary diary;
  final UploadedImage image;

  _DiaryImage({
    required this.diary,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      'diary': diary.toJson(),
      'image': image.toJson(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is DiaryImage && other.diary == diary && other.image == image;
  }

  String getUniqueKey() {
    return diary.getUniqueKey() + '_' + image.getUniqueKey() + '_' + '';
  }
}

_DiaryImageFromJson(json) {
  return DiaryImage(
    diary: Diary.fromJson(json['diary']),
    image: UploadedImage.fromJson(json['image']),
  );
}
