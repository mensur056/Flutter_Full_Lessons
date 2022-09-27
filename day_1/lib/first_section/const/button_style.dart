import 'package:day_1/first_section/const/color.dart';
import 'package:flutter/material.dart';

class MyButtonStyle {
  static ButtonStyle elevatedStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(MyColors.myBlueColor),
      alignment: const Alignment(0, 1),
      padding: MaterialStateProperty.all(const EdgeInsets.all(40)));
}
