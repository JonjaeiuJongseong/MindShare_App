import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindshare/res/ms_screen.dart';

class MSAppBar extends StatelessWidget{
  final Widget? back;
  final Widget? leading;
  final Widget? title;
  final Widget? action;

  const MSAppBar({super.key, this.back, this.leading, this.title, this.action});

  _getWidgets(){
    final widgets = <Widget>[];
    if (back != null) widgets.add(back!);
    if (leading != null) widgets.add(leading!);
    widgets.add(Spacer());
    if (action != null) widgets.add(action!);
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final ms = MSScreen();
    return Stack(
      children: [
        Positioned(top:ms.hsize(60)+ms.statusBarHeight,
          child:Container(width: ms.screen.width, height: ms.hsize(24.0),
            child: Row(children: _getWidgets(), crossAxisAlignment: CrossAxisAlignment.start,),
          padding: EdgeInsets.fromLTRB(ms.size(22.0), 0, ms.size(22.0), 0),
        )),
        (title != null)
            ? Positioned(child:Container(width: ms.screen.width, height: ms.hsize(24.0),
                child: title, alignment: Alignment.center,),
                top:ms.hsize(60)+ms.statusBarHeight)
            : Container()
      ],
    );
  }
}
