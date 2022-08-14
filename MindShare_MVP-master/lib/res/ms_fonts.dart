import 'package:flutter/material.dart';
import 'package:mindshare/res/ms_screen.dart';
import 'package:mindshare/util/ms_res.dart';

class MSFonts extends MSRes{
  MSFonts._internal();
  static final _instance = MSFonts._internal();

  factory MSFonts() => _instance;

  final _defaultDPR = 1.0;

  static get fontFamily => 'Suit';

  late double _h1;
  late double _h2;
  late double _h3;
  late double _h4;
  late double _subtitle1;
  late double _subtitle2;
  late double _b1;
  late double _b2;
  late double _b3;
  late double _b4;
  late double _caption1;
  late double _caption2;
  late double _number;

  final scale = MSScreen().scale;

  double getLetterSpacing(double fontSize, double rate) => fontSize*rate;

  double size(double refSize) => scale * refSize * _defaultDPR;
  double iconSize(double refSize) => scale * refSize * 1.0;

  @override
  init(context) {
    _h1 = size(36.0);
    _h2 = size(30.0);
    _h3 = size(28.0);
    _h4 = size(26.0);
    _subtitle1 = size(22.0);
    _subtitle2 = size(18.0);
    _b1 = size(17.0);
    _b2 = size(16.0);
    _b3 = size(15.0);
    _b4 = size(14.0);
    _caption1 = size(13.0);
    _caption2 = size(12.0);
    _number = size(9.0);
  }

  get h1 => _h1;
  get h2 => _h2;
  get h3 => _h3;
  get h4 => _h4;
  get subtitle1 => _subtitle1;
  get subtitle2 => _subtitle2;
  get b1 => _b1;
  get b2 => _b2;
  get b3 => _b3;
  get b4 => _b4;
  get caption1 => _caption1;
  get caption2 => _caption2;
  get number => _number;
}