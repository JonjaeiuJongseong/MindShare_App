import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindshare/res/ms_screen.dart';

import '../../res/ms_colors.dart';
import '../../res/ms_fonts.dart';

class MSLayout extends StatelessWidget{
  final BoxDecoration? background;
  final Widget? appbar;
  final Widget? body;

  const MSLayout({super.key, this.background, this.appbar, this.body});

  @override
  Widget build(BuildContext context) {
    final ms = MSScreen();
    return Scaffold(
        body: Container(
            decoration: background ?? null,
            child: Column(children: [
              (appbar != null)
                ? Container(height: ms.hsize(84.0) + ms.statusBarHeight,
                  child: appbar ?? Container(),
                  alignment: Alignment.bottomCenter)
                : Container(),
              Expanded(child: body ?? Container())
            ],)
        ));
  }
}