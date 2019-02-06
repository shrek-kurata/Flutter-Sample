import 'package:flutter/material.dart';

final ThemeData PenmarkThemeData = new ThemeData(
    brightness: Brightness.light,
    primaryColor: PenmarkColor.color["primaryColor"],
    primaryColorBrightness: Brightness.light,
    accentColor: PenmarkColor.color["secondaryColor"],
    accentColorBrightness: Brightness.light
);

class PenmarkColor {
  PenmarkColor._(); // this basically makes it so you can instantiate this class
  static const Map<String, Color> color = const <String, Color>{
    "primaryColor": const Color(0x6200EE),
    "secondaryColor": const Color(0x03DAC5),
    "errorColor": const Color(0xB00020),
    "surfaceColor": const Color(0xFFFFFFF),
  };
}