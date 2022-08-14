import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshare/controllers/diary_controller.dart';
import 'package:mindshare/res/ms_screen.dart';
import 'package:mindshare/ui/layout/ms_layout.dart';

import '../../ms_route.dart';
import '../../res/ms_colors.dart';
import '../../res/ms_fonts.dart';
import '../../util/ms_datetime.dart';
import '../../util/ms_page.dart';
import '../layout/ms_app_bar.dart';

class PageDiaryEmotion extends GetView<DiaryController>{
  @override
  Widget build(BuildContext context) {
    MSPage.initRes(context);
    final mf = MSFonts();
    final ms = MSScreen();

    _getButtonTextColor(id) {
      switch (id) {
        case 'happy':
          return MSColors.yellow500;
        case 'sad':
          return MSColors.blue500;
        case 'annoyed':
          return MSColors.green500;
        case 'scared':
          return MSColors.purple500;
        case 'angry':
          return MSColors.red500;
        default:
          return MSColors.neutral500;
      }
    }

    _getButtonColor(id) {
      switch (id) {
        case 'happy':
          return MSColors.yellow500_15;
        case 'sad':
          return MSColors.blue500_15;
        case 'annoyed':
          return MSColors.green500_15;
        case 'scared':
          return MSColors.purple500_15;
        case 'angry':
          return MSColors.red500_15;
        default:
          return MSColors.neutral500;
      }
    }

    _getButtonImage(id) {
      switch (id) {
        case 'happy':
          return 'assets/images/emotion_happy.png';
        case 'sad':
          return 'assets/images/emotion_sad.png';
        case 'annoyed':
          return 'assets/images/emotion_annoyed.png';
        case 'scared':
          return 'assets/images/emotion_afraid.png';
        case 'angry':
          return 'assets/images/emotion_angry.png';
        default:
          'assets/images/emotion_angry.png';
      }
    }

    _emotionButton(index) {
      final emotion = controller.emotions[index];
      return GestureDetector(onTap: () => controller.selectEmotion(index+1),
          child: Container(
              padding: EdgeInsets.fromLTRB(ms.hsize(4), 0, ms.hsize(4), 0),
              width: ms.hsize(93.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: _getButtonColor(emotion.id),
                  shape: BoxShape.circle,
                  border: (controller.selectedEmotion == emotion.id)
                      ? Border.all(width:1.0, color: MSColors.neutral0)
                      : Border.all(width:0.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: ms.size(39), height: ms.size(39),
                      child: Image.asset(
                          _getButtonImage(emotion.id)!, fit: BoxFit.fill)),
                  SizedBox(height: ms.size(4)),
                  Text(emotion.name,
                      style: TextStyle(color: _getButtonTextColor(emotion.id),
                          fontSize: mf.caption1, fontWeight: FontWeight.w600))
                ],)));
    }

    return MSLayout(
        background: BoxDecoration(color: MSColors.neutral900),
        appbar: MSAppBar(
          back: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.arrow_back_ios, color: MSColors.neutral0,
                size: mf.iconSize(14)), onPressed: () => Get.back(),),
          title: Text(
              MSDateTime.formatted(controller.today.value, 'yyyy.MM.dd.')
                  + MSDateTime.getKoreanWeekDay(controller.today.value),
              style: TextStyle(
                  color: MSColors.neutral200,
                  fontWeight: FontWeight.w600,
                  fontSize: mf.b2,
                  letterSpacing: mf.getLetterSpacing(mf.b2, -0.005))),
        ),
        body: GetBuilder<DiaryController>(builder: (controller) {
          return Stack(
              children: [
                Positioned(top: ms.hsize(72),
                    child: Container(width: ms.screen.width,
                        alignment: Alignment.center,
                        child: RichText(
                            text: TextSpan(
                                text: '오늘 ',
                                style: TextStyle(color: MSColors.neutral0,
                                    fontSize: mf.subtitle1,
                                    fontWeight: FontWeight.w200),
                                children: <TextSpan>[
                                  TextSpan(text: '어떤 감정',
                                      style: TextStyle(fontWeight: FontWeight
                                          .w700)),
                                  TextSpan(text: '을 느꼈나요?')
                                ]
                            )))),
                Positioned(top: ms.hsize(150),
                    child: Container(
                        width: ms.screen.width, height: ms.size(85), child:
                    ListView.builder(scrollDirection: Axis.horizontal,
                        itemCount: controller.emotions.length,
                        itemBuilder: (context, index) => _emotionButton(index))
                    )),
                Positioned(bottom: 0, child: Container(height: ms.hsize(92),
                  width: ms.screen.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: _getButtonTextColor(controller.selectedEmotion)),
                  child: TextButton(onPressed: () {
                    Get.toNamed(MSRoute.diaryPage);
                  },
                  child: Text('선택 완료',
                      style: TextStyle(color: MSColors.neutral0,
                          fontSize: mf.subtitle2,
                          fontWeight: FontWeight.w600)))
                ))
              ]);
        })
    );
  }
}