import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshare/controllers/diary_controller.dart';
import 'package:mindshare/models/diary.dart';
import 'package:mindshare/ui/layout/ms_layout.dart';

import '../../ms_route.dart';
import '../../res/ms_colors.dart';
import '../../res/ms_fonts.dart';
import '../../res/ms_screen.dart';
import '../../util/ms_datetime.dart';
import '../../util/ms_page.dart';
import '../layout/ms_app_bar.dart';

class PageDiary extends GetView<DiaryController>{

  _getBackgroundColor(id) {
    switch (id) {
      case 'happy':
        return MSColors.yellowGradientRadial1;
      case 'sad':
        return MSColors.blueGradientRadial1;
      case 'annoyed':
        return MSColors.greenGradientRadial1;
      case 'scared':
        return MSColors.greenGradientRadial1;
      case 'angry':
        return MSColors.yellowGradientRadial1;
      default:
        return MSColors.neutralGradientRadial1;
    }
  }
  @override
  Widget build(BuildContext context) {
    MSPage.initRes(context);
    final ms = MSScreen();
    final mf = MSFonts();
    return MSLayout(
      background: BoxDecoration(
          gradient: _getBackgroundColor(controller.selectedEmotion)),
      appbar: MSAppBar(
        back: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.arrow_back_ios, color: MSColors.neutral700,
              size: mf.iconSize(16)),
          onPressed: () => Get.back(),),
        title: Text(
            MSDateTime.formatted(controller.today.value, 'yyyy.MM.dd.')
                + MSDateTime.getKoreanWeekDay(controller.today.value),
            style: TextStyle(
                color: MSColors.neutral700,
                fontWeight: FontWeight.w600,
                fontSize: mf.b2,
                letterSpacing: mf.getLetterSpacing(mf.b2, -0.005))),
        action: TextButton(child: Text('완료',
            style: TextStyle(color: MSColors.neutral700,
              fontWeight: FontWeight.w600,
              fontSize: mf.b2,)),
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: (){Get.offAllNamed(MSRoute.homePage);},),
      ),
      body: Stack(children: [],)
    );
  }
}