import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mindshare/util/ms_res.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MSScreen extends MSRes{
  MSScreen._internal();
  static final _instance = MSScreen._internal();

  factory MSScreen() => _instance;

  final width = 375.0;
  final height = 812.0;
  late var screen;
  var scale = 0.0;
  var statusBarHeight = 0.0;

  @override
  init(context) {
    screen = MediaQuery.of(context).size;
    scale = screen.width / width;
    if (kIsWeb == false && Platform.isAndroid)
      statusBarHeight = MediaQuery.of(context).viewPadding.top;
  }

  size(double size) => size*scale;
  hsize(double size) => size*(screen.height/height);
}