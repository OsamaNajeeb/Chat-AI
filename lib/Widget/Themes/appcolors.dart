import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppColors {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color navColors = const Color(0xff3f3f3f);
  static Color lime = const Color(0xff90e71b);


  static TextStyle textStyle =
  TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headLineStyle1 =
  TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle2 =
  TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle3 =
  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey.shade500);
}
