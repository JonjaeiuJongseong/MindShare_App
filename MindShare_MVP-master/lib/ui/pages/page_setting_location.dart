import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshare/controllers/login_controller.dart';

import '../../models/location.dart';
import '../../res/ms_colors.dart';
import '../../res/ms_fonts.dart';
import '../../res/ms_screen.dart';
import '../../util/ms_page.dart';
import '../layout/ms_layout.dart';

class PageSettingLocation extends GetView<LoginController>{

  _getLocationWidgets(locations) {
    final ms = MSScreen();
    final mf = MSFonts();
    final widgets = <Widget>[];
    for (final Location location in locations) {
      final widget = Container(
          width: ms.size(320),
          height: ms.size(64),
          child: ElevatedButton(
              child: Text(location.name, style: TextStyle(
                  fontSize: mf.b2,
                  fontWeight: FontWeight.w500,
                  color: MSColors.neutral600),),
              style: ButtonStyle(
                  backgroundColor: MSColors.materialColor(
                      MSColors.neutral0)),
              onPressed: () {
                controller.setLocation(location);
                controller.goNext();
              }));
      final space = Container(height: ms.size(15));
      widgets.add(widget);
      widgets.add(space);
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    MSPage.initRes(context);
    final ms = MSScreen();
    final mf = MSFonts();
    return MSLayout(
        background: BoxDecoration(color: MSColors.neutral150),
        body: Stack(children: [
          Positioned(top: ms.hsize(184),
              child: Container(width: ms.screen.width,
                  alignment: Alignment.center,
                  child: Text('LocationSetting'.tr,
                      style: TextStyle(
                          fontSize: mf.h3,
                          fontWeight: FontWeight.w600,
                          color: MSColors.neutral900
                      )))),
          Positioned(top: ms.hsize(228),
              child: Container(width: ms.screen.width,
                  padding: EdgeInsets.fromLTRB(ms.size(7), ms.hsize(8), ms.size(7), 0),
                  alignment: Alignment.center,
                  child: Text('LocationSettingDescription'.tr,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: mf.b2,
                          fontWeight: FontWeight.w400,
                          color: MSColors.neutral900
                      )))),
          Positioned(top: ms.hsize(335),
              child: Container(width: ms.screen.width,
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: _getLocationWidgets(controller.locations)))
          )
        ]
        )
    );
  }
}