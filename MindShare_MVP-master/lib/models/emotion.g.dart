// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ModelObjectGenerator
// **************************************************************************

part of 'emotion.dart';

abstract class _Emotion extends Model {
  int uid;
  final String id;
  final String name;

  _Emotion({
    required this.uid,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'id': id,
      'name': name,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is Emotion && other.id == id && other.name == name;
  }

  String getUniqueKey() {
    return id + '_' + name + '_' + '';
  }
}

_EmotionFromJson(json) {
  return Emotion(
    uid: json['uid'],
    id: json['id'],
    name: json['name'],
  );
}
