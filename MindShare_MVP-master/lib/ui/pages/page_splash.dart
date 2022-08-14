import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller.dart';
import '../../res/ms_fonts.dart';
import '../../util/ms_page.dart';
import '../layout/ms_layout.dart';

class PageSplash extends GetView<LoginController>{

  @override
  Widget build(BuildContext context) {
    MSPage.initRes(context);
    final mf = MSFonts();
    Future.delayed(Duration(seconds: 3), () => controller.goNext());
    return MSLayout(
        body: Center(
            child: Container(child: Text('AppName'.tr, style: TextStyle(
                fontSize: mf.h1, fontWeight: FontWeight.bold))))
    );
  }
}