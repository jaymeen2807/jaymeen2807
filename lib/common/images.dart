import 'package:flutter/widgets.dart';

class AppImage {
  static String healthLogo = 'assets/images/health_logo.png';
  static String calendar = 'assets/images/calendar.png';
  static String card = 'assets/images/card.png';
}

class AppIcon {
  AppIcon._();

  static const phoneIcon = 'phoneicon';
  static const lockIcon = 'lockicon';
  static const visibilityOnIcon = 'visibilityon';
  static const visibilityOffIcon = 'visibilityoff';
  static const dollarIcon = 'dollars';




  static const IconData IC_LOCK = IconData(0xe80f, fontFamily: lockIcon);
  static const IconData IC_PHONE = IconData(0xe801, fontFamily: phoneIcon);
  static const IconData IC_VISIBILITY_ON =
  IconData(0xe801, fontFamily: visibilityOnIcon);
  static const IconData IC_VISIBILITY_OFF =
  IconData(0xe800, fontFamily: visibilityOffIcon);
  static const IconData dollar = IconData(0xe800, fontFamily: dollarIcon);

}