// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'diary.dart';

abstract class _Diary extends Model {
  int uid;
  final User user;
  Emotion? emotion;
  Sleeping? sleeping;
  String? title;
  String? diary;
  bool isPrivate;
  bool isScrap;
  final String diaryDate;
  int createTime;
  int lastUpdateTime;

  _Diary({
    required this.uid,
    required this.user,
    required this.emotion,
    required this.sleeping,
    required this.title,
    required this.diary,
    required this.isPrivate,
    required this.isScrap,
    required this.diaryDate,
    required this.createTime,
    required this.lastUpdateTime,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'user': user.toJson(),
      'emotion': emotion?.toJson(),
      'sleeping': sleeping?.toJson(),
      'title': title,
      'diary': diary,
      'isPrivate': isPrivate,
      'isScrap': isScrap,
      'diaryDate': diaryDate,
      'createTime': createTime,
      'lastUpdateTime': lastUpdateTime,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Diary && other.user == user && other.diaryDate == diaryDate;
  }

  String getUniqueKey() {
    return user.getUniqueKey() + '_' + diaryDate + '_' + '';
  }
}

_DiaryFromJson(json) {
  return Diary(
    uid: json['uid'],
    user: User.fromJson(json['user']),
    emotion: Emotion?.fromJson(json['emotion']),
    sleeping: Sleeping?.fromJson(json['sleeping']),
    title: json['title'],
    diary: json['diary'],
    isPrivate: json['isPrivate'],
    isScrap: json['isScrap'],
    diaryDate: json['diaryDate'],
    createTime: json['createTime'],
    lastUpdateTime: json['lastUpdateTime'],
  );
}
