import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshare/res/ms_colors.dart';
import 'package:mindshare/res/ms_fonts.dart';
import 'package:mindshare/util/ms_datetime.dart';
import 'package:mindshare/res/ms_screen.dart';

import '../../controllers/diary_controller.dart';
import '../../ms_route.dart';
import '../../util/ms_page.dart';
import '../layout/ms_app_bar.dart';
import '../layout/ms_layout.dart';

class PageHome extends GetView<DiaryController> {

  _textButton(String title, onPressed){
    final ms = MSScreen();
    final mf = MSFonts();
    return Container(width: ms.size(130.0), height: ms.hsize(40.0),
      child: OutlinedButton(onPressed: onPressed,
          style: OutlinedButton.styleFrom(shape: StadiumBorder()),
          child: Text(title,
              style: TextStyle(color: MSColors.neutral800, fontSize: mf.b2,
                  fontWeight: FontWeight.w500)))
    );
  }

  _underLineButton(String title, onPressed){
    final ms = MSScreen();
    final mf = MSFonts();
    return Container(width: ms.size(100.0), height: ms.hsize(18.0),
        padding: EdgeInsets.only(left:ms.size(7.0)),
        child: GestureDetector(onTap: onPressed,
            child: Text(title,
                style: TextStyle(color: MSColors.neutral800, fontSize: mf.caption2,
                    fontWeight: FontWeight.w500, decoration: TextDecoration.underline)))
    );
  }

  _recordEmotionWidget(){
    return Column(children: [
      _textButton('감정 기록하기>', (){Get.toNamed(MSRoute.diaryEmotionPage);}),
    ]);
  }

  _retrieveEmotionWidget() {
    final ms = MSScreen();
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textButton('이날 기록보기>', () {}),
              Container(height: ms.hsize(16.0)),
              _underLineButton('슬픈 날 모아보기>', () {})
            ]);
  }

  @override
  Widget build(BuildContext context) {
    MSPage.initRes(context);
    final ms = MSScreen();
    final mf = MSFonts();
    return Obx(() {
      return MSLayout(
          background: controller.background,
          appbar: MSAppBar(
              leading: Icon(Icons.menu,
                  color: MSColors.neutral700, size: mf.iconSize(24.0)),
              title: Text(
                  MSDateTime.formatted(controller.today.value, 'yyyy.MM.dd.')
                      + MSDateTime.getKoreanWeekDay(controller.today.value),
                  style: TextStyle(
                      color: MSColors.neutral700,
                      fontWeight: FontWeight.w600,
                      fontSize: mf.b2,
                      letterSpacing: mf.getLetterSpacing(mf.b2, -0.005))),
              action: Icon(Icons.notifications_none,
                  color: MSColors.neutral700, size: mf.iconSize(24.0))),
          body: Stack(children: [
            Positioned(top: ms.hsize(44.0), left: ms.size(22),
                child: Container(
                    width: ms.size(175.0),
                    height: ms.hsize(135.0),
                    child: RichText(
                      softWrap: true,
                        maxLines: 3,
                        text: TextSpan(
                            text: controller.emotionMessage[0],
                            style: TextStyle(color: MSColors.neutral800,
                                fontSize: mf.h1, fontWeight: FontWeight.w100),
                            children: <TextSpan>[
                              TextSpan(text: controller.emotionMessage[1],
                                  style: TextStyle(fontWeight: FontWeight
                                      .w700)),
                              TextSpan(text: controller.emotionMessage[2])
                            ]
                        )))),
            Positioned(top: ms.hsize(205.0), left: ms.size(15),
              child: Container(width: ms.size(130.0), height: ms.hsize(74),
                child: (controller.emotionId == 'default')
                    ? _recordEmotionWidget() : _retrieveEmotionWidget())),
            Positioned(top:ms.hsize(162.0), right:ms.size(39),
                child: Container(width: ms.size(146.0), height: ms.hsize(74.0),
                    child: Image.asset('assets/images/il_happy_cloud1.png', fit:BoxFit.fill))),
            Positioned(bottom:ms.hsize(330.0), right:ms.size(24),
                child: Container(width: ms.size(168.0), height: ms.hsize(123.0),
                    child: Image.asset('assets/images/il_default_ch.png', fit:BoxFit.fill))),
            Positioned(bottom:ms.hsize(330.0), left:ms.size(41),
                child: Container(width: ms.size(64.0), height: ms.hsize(67.0),
                  child: Image.asset('assets/images/il_default_tree.png', fit:BoxFit.fill))),
            Positioned(top:ms.hsize(419.0), right:ms.size(22),
              child: Container(width: ms.size(100), height: ms.hsize(32.0),
                child: Image.asset('assets/images/show_calendar.png', fit:BoxFit.fill))),
            Positioned(bottom:ms.hsize(55.0), 
              child: Container(width: ms.screen.width,
                  alignment: Alignment.center,
                  child:Image.asset('assets/images/mindshare_default.png', fit:BoxFit.cover))),
            Positioned(bottom: 0,
                child: Container(decoration: BoxDecoration(
                    gradient: MSColors.neutralGradientLinear,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40))),
                    height: ms.hsize(330.0),
                    width: ms.screen.width,
                    child: Container()))
          ],)
      );
    });
  }
}