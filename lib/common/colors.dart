import 'dart:ui';

class AppColor {
  static Color _colorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    return Color(int.parse('FF' + hexColor, radix: 16));
  }

  static Color colorGray = _colorFromHex('#666666');
  static Color colorWhite = _colorFromHex('#FFFFFF');
  static Color colorDodgerBlue = _colorFromHex('#1c9efe');
  static Color colorBlack = _colorFromHex('#000000');
  static Color colorBackGround = _colorFromHex('#4468fd');
  static Color colorLiteOrange = _colorFromHex('#f3a25b');
  static Color colorBlare = _colorFromHex('#ecf4ff');
  static Color colorGrayLite = _colorFromHex('#D8D8D8');




}