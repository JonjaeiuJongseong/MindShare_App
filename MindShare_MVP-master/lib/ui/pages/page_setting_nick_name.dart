import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshare/ui/layout/ms_layout.dart';

import '../../controllers/login_controller.dart';
import '../../res/ms_colors.dart';
import '../../res/ms_fonts.dart';
import '../../res/ms_screen.dart';
import '../../util/ms_page.dart';

class PageSettingNickName extends GetView<LoginController>{
  @override
  Widget build(BuildContext context) {
    MSPage.initRes(context);
    final ms = MSScreen();
    final mf = MSFonts();
    final editController = TextEditingController();
    return MSLayout(
        background: BoxDecoration(color: MSColors.neutral150),
        body: Stack(children: [
          Positioned(top: ms.hsize(184),
              child: Container(width: ms.screen.width,
                  alignment: Alignment.center,
                  child: Text('NickNameSetting'.tr,
                      style: TextStyle(
                          fontSize: mf.h3,
                          fontWeight: FontWeight.w600,
                          color: MSColors.neutral900
                      )))),
          Positioned(top: ms.hsize(281),
              child: Container(width: ms.screen.width,
                  alignment: Alignment.center,
                  child: Container(width: ms.size(320),
                      height: ms.hsize(64),
                      child: TextField(
                          controller: editController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  ms.size(39), ms.hsize(21), ms.size(39),
                                  ms.hsize(23)),
                              filled: true,
                              fillColor: MSColors.neutral0,
                              hoverColor: MSColors.neutral0,
                              focusColor: MSColors.neutral0,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'NickName'.tr,
                              hintStyle: TextStyle(fontSize: mf.b2,
                                  fontWeight: FontWeight.w500,
                                  color: MSColors.neutral600)
                          ))))),
          Positioned(top: ms.hsize(654),
              child: Container(width: ms.screen.width,
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: ms.size(320),
                            height: ms.size(64),
                            child: ElevatedButton(
                                child: Text('Next'.tr, style: TextStyle(
                                    fontSize: mf.b2,
                                    fontWeight: FontWeight.w500,
                                    color: MSColors.neutral600),),
                                style: ButtonStyle(
                                    backgroundColor: MSColors.materialColor(
                                        MSColors.neutral0)),
                                onPressed: () {
                                    controller.setNickName(
                                        editController.text.toString());
                                    controller.goNext();
                                })),
                      ])))
        ]
        )
    );
  }
}