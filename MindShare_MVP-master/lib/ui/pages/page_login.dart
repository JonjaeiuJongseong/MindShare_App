import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:mindshare/controllers/diary_controller.dart';
import 'package:mindshare/res/ms_screen.dart';
import 'package:mindshare/ui/layout/ms_layout.dart';
import 'package:mindshare/ui/pages/kakao_login.dart';
import 'package:mindshare/ui/pages/main_view_model.dart';
import 'package:mindshare/ui/pages/page_home.dart';

import '../../controllers/login_controller.dart';
import '../../res/ms_colors.dart';
import '../../res/ms_fonts.dart';
import '../../util/ms_page.dart';

class PageLogin extends GetView<LoginController> {
  final viewModel = MainViewModel(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    KakaoSdk.init(nativeAppKey: '72f67a0fbc782694f3ef445a67ee3879');
    MSPage.initRes(context);
    final ms = MSScreen();
    final mf = MSFonts();
    return MSLayout(
        background: BoxDecoration(color: MSColors.neutral150),
        body: Stack(
          children: [
            Positioned(
                top: ms.hsize(184),
                child: Container(
                    width: ms.screen.width,
                    alignment: Alignment.center,
                    child: Text('Login'.tr,
                        style: TextStyle(
                            fontSize: mf.h3,
                            fontWeight: FontWeight.w600,
                            color: MSColors.neutral900)))),
            Positioned(
                top: ms.hsize(575),
                child: Container(
                    width: ms.screen.width,
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: ms.size(320),
                              height: ms.size(64),
                              child: ElevatedButton(
                                  child: Text(
                                    'Kakao'.tr,
                                    style: TextStyle(
                                        fontSize: mf.b2,
                                        fontWeight: FontWeight.w500,
                                        color: MSColors.neutral600),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MSColors.materialColor(
                                          MSColors.neutral0)),
                                  onPressed: () async {
                                    await viewModel.Kakaologin();
                                  })),
                          Container(height: ms.size(15)),
                          Container(
                              width: ms.size(320),
                              height: ms.size(64),
                              child: ElevatedButton(
                                  child: Text(
                                    'Apple'.tr,
                                    style: TextStyle(
                                        fontSize: mf.b2,
                                        fontWeight: FontWeight.w500,
                                        color: MSColors.neutral600),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MSColors.materialColor(
                                          MSColors.neutral0)),
                                  onPressed: () => controller.login())),
                        ])))
          ],
        ));
  }

}