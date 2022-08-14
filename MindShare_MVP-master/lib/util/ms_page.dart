import '../res/ms_colors.dart';
import '../res/ms_fonts.dart';
import '../res/ms_screen.dart';

class MSPage{
  static initRes(context){
    MSScreen()..init(context);
    MSFonts()..init(context);
    MSColors()..init(context);
  }
}