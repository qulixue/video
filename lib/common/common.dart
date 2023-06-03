import 'package:flutter/material.dart';

class CommonTextStyle {
  static const TextStyle greyW500S20 = TextStyle(
      color: CommonColor.grey, fontSize: 20, fontWeight: FontWeight.w500);
  static const TextStyle purpleW500S20 = TextStyle(
      color: CommonColor.colorPurpleEnd, fontSize: 20, fontWeight: FontWeight.w500);
}

class CommonColor {
  static const Color grey = Color(0xff6b6b6b);
  static const Color colorHintText = Color(0xff545454);
  static const Color colorPurpleStart = Color(0xff9663FF);
  static const Color colorPurpleEnd = Color(0xff7231EB);
}
