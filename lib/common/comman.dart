

import 'package:flutter/painting.dart';

class AppStyle {
  static textViewStyleBold(
      Color color,
      double fontSize,
      ) {
    return TextStyle(
        color: color, fontFamily: 'proximanova_bold', fontSize: fontSize);
  }
  static textViewStyleUltraBold(
      Color color,
      double fontSize,
      ) {
    return TextStyle(
        color: color, fontFamily: 'proximanova_altbold', fontSize: fontSize);
  }

  static textViewStyleRegular(
      Color color,
      double fontSize,
      ) {
    return TextStyle(
        color: color, fontFamily: 'proximanova_regular', fontSize: fontSize);
  }
}