import 'package:flutter/material.dart';
import 'package:mindshare/util/ms_res.dart';

class MSColors extends MSRes{
  MSColors._internal();
  static final _instance = MSColors._internal();

  factory MSColors() => _instance;

  static get neutral900 => Color(0xFF07090A);
  static get neutral850 => Color(0xFF1B2126);
  static get neutral800 => Color(0xFF3F4041);
  static get neutral700 => Color(0xFF525252);
  static get neutral600 => Color(0xFF636768);
  static get neutral500 => Color(0xFF84888A);

  static get neutral200 => Color(0xFFDFE1E1);
  static get neutral150 => Color(0xFFEFEFEF);
  static get neutral100 => Color(0xFFD9D9D9);
  static get neutral0   => Color(0xFFFFFFFF);
  static get neutral0_70 => Color(0xB3FFFFFF);
  static get neutralGradientLinear_4080 =>
      LinearGradient(colors: [Color(0x66FFFFFF), Color(0xCCFFFFFF)]);
  static get neutralGradientLinear =>
      LinearGradient(colors: [Color(0x30BCCED4), Color(0x60FFFFFF)]);
  static get neutralGradientRadial1 =>
      RadialGradient(colors: [Color(0xFFBCCED4), Color(0xFFFFFFFF)], radius: 1.5);

  static get blue500 => Color(0xFF3094FC);
  static get blueGradientLinear =>
      LinearGradient(colors: [Color(0xFF3195FC), Color(0xFF7CD4FF)]);
  static get blueGradientRadial1 =>
      RadialGradient(colors: [Color(0xFF75D0FF), Color(0xFFFFFFFF)], radius: 1.5);
  static get blue500_15 => Color(0x263094FC);
  static get blueGradientRadial2 =>
      RadialGradient(colors: [Color(0xFF6FC2FF), Color(00000000)]);

  static get green500 => Color(0xFF00B66B);
  static get greenGradientLinear =>
      LinearGradient(colors: [Color(0xFF00AB65), Color(0xFF69DE7D)]);
  static get greenGradientRadial1 =>
      RadialGradient(colors: [Color(0xFF88DCAB), Color(0xFFFFFFFF)], radius: 1.5);
  static get green500_15 => Color(0x2600B66B);
  static get greenGradientRadial2 =>
      RadialGradient(colors: [Color(0xFF21CB85), Color(0x00000000)]);

  static get yellow500 => Color(0xFFFBB330);
  static get yellowGradientLinear =>
      LinearGradient(colors: [Color(0xFFF0A21B), Color(0xFFF6D24D)]);
  static get yellowGradientRadial1 =>
      RadialGradient(colors: [Color(0xFFFADE82), Color(0xFFFFFFFF)], radius: 1.5);
  static get yellow500_15 => Color(0x26FBB330);
  static get yellowGradientRadial2 => 
      RadialGradient(colors: [Color(0xFFFFDB5B), Color(0x00000000)]);

  static get purple500 => Color(0xFF886BE2);
  static get purple500_15 => Color(0x26886BE2);
  static get red500 => Color(0xFFEA5436);
  static get red500_15 => Color(0x26EA5436);

  static get skyblue500 => Color(0xFF3AB5E6);
  static get skyblueGradientRadial =>
      RadialGradient(colors: [Color(0xFFBADDE9), Color(0xFFFFFFFF)]);

  static materialColor(color) => MaterialStateProperty.all<Color>(color);

  @override
  init(context) {
  }
}
