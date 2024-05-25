import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class Styles {
  static Color primaryColor = const Color(0xFF687daf);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color backGroundColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}

ThemeData lightMode = ThemeData(
  textTheme: const TextTheme(
      bodyText1: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black)),
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: Styles.backGroundColor,
  appBarTheme:  AppBarTheme(
     systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, statusBarColor:Styles.backGroundColor),
    titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Styles.backGroundColor,
    elevation: 0,
  ),
  bottomNavigationBarTheme:  BottomNavigationBarThemeData(
   backgroundColor: Styles.backGroundColor,
      type: BottomNavigationBarType.shifting, elevation:5),
);
