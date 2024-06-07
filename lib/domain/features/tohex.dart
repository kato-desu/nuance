import 'package:flutter/material.dart';

String toHex(Color color) {    //Colorを文字列の色コードに変換
  final colorStr = color.value.toRadixString(16).toString();
  if (colorStr.length == 8) {
    final hexcolor = colorStr.substring(2);
    final transparent = colorStr.substring(0, 2);
    if (transparent == "ff") {
      return "#$hexcolor";
    } else {
      return "#" + hexcolor + transparent;
    }
  } else {
    return "#" + colorStr + "00";
  }
}