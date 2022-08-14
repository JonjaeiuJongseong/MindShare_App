import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshare/models/emotion.dart';
import 'package:mindshare/models/user.dart';
import 'package:mindshare/util/repository_manager.dart';

import '../../models/diary.dart';
import '../res/ms_colors.dart';
import '../util/ms_datetime.dart';

class DiaryControllerBinding implements Bindings{
  final repositoryManbager;

  DiaryControllerBinding(this.repositoryManbager);

  @override
  void dependencies() =>
      Get.put<DiaryController>(
          DiaryController(repositoryManager:repositoryManbager));
}

class DiaryController extends GetxController{
  final RepositoryManager repositoryManager;
  late UserRepository _userRepository;
  late DiaryRepository _diaryRepository;
  late EmotionRepository _emotionRepository;
  final today = DateTime.now().obs;
  final selectedDay = DateTime.now().obs;
  late Diary diary;
  late String emotionId;
  late BoxDecoration background;
  final emotionMessage = List<String>.filled(3, '');
  late Color emotionMessageColor;
  String selectedEmotion = 'default';

  setDiary() {
    final diaries = _diaryRepository
        .get((e) => e.diaryDate == MSDateTime.formattedDate(selectedDay.value));

    print (_userRepository.user!.toJson());
    if (diaries == null || diaries.isEmpty)
        diary = Diary(user:_userRepository.user!,
            diaryDate:MSDateTime.formattedDate(today.value));
    else diary = diaries.first;
  }

  DiaryController({required this.repositoryManager}){
    _userRepository = repositoryManager.get<User>();
    _diaryRepository = repositoryManager.get<Diary>();
    _emotionRepository = repositoryManager.get<Emotion>();
    setDiary();
    if (diary.emotion == null) _setEmotion('default');
    else _setEmotion(diary.emotion!.id);
  }

  get emotions {
    return _emotionRepository.get((e) => e.id != 'default');
  }

  selectEmotion(index){
    selectedEmotion = _emotionRepository.get((e) => e.uid == index).first.id;
    update();
  }

  _setEmotion(String id){
    emotionId = id;
    switch (id){
      case 'sad':
        background = BoxDecoration(gradient: MSColors.blueGradientRadial1);
        emotionMessage[0] = '오늘 나의 감정은 ';
        emotionMessage[1] = '슬픔';
        emotionMessage[2] = '이야';
        emotionMessageColor = MSColors.blue500;
        break;
      case 'happy':
        background = BoxDecoration(gradient: MSColors.yellowGradientRadial1);
        emotionMessage[0] = '오늘 나의 감정은 ';
        emotionMessage[1] = '기쁨';
        emotionMessage[2] = '이야';
        emotionMessageColor = MSColors.yellow500;
        break;
      case 'annoyed':
        background = BoxDecoration(gradient: MSColors.greenGradientRadial1);
        emotionMessage[0] = '오늘 나의 감정은 ';
        emotionMessage[1] = '짜증';
        emotionMessage[2] = '이야';
        emotionMessageColor = MSColors.green500;
        break;
      default:
        background = BoxDecoration(gradient: MSColors.neutralGradientRadial1);
        emotionMessage[0] = '오늘 당신이 느낀 ';
        emotionMessage[1] = '감정';
        emotionMessage[2] = '을 알려줄래요?';
        emotionMessageColor = Color(0xFF1A1A1A);
        break;
    }
  }
}