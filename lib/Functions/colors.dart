import 'package:flutter/material.dart';
import 'dart:math';

class AppColor {
  MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}

class Palette {
  static const Color main = Color(0xffff6717);
  static const Color textd = Color(0xffececec);
  static const Color sucess = Color(0xff73914c);
  static const Color failed = Color(0xff945959);
  static const Color textl = Color(0xFFFFFFFF);
  static const Color textdisc = Color(0xffc4c4c4);
  static const Color border = Color(0xff252525);
  static const Color bgd = Color(0xff161b2c);
  static const Color bgl = Color(0xff4d4d96);
  static const Color bgl2 = Color(0xff9d9d9d);
  static const Color l1 = Color(0xff964242);
  static const Color l2 = Color(0xff966c42);
  static const Color l3 = Color(0xff819642);
  static const Color l4 = Color(0xff429676);
  static const Color l5 = Color(0xff427396);
  static const Color l6 = Color(0xff8058b0);
  static const Color l7 = Color(0xff74249d);
  static const Color l8 = Color(0xff988576);
  static const Color mainthf = Color(0xc0234b04);
  static const Color alert = Color(0xff9d0808);
  static const Color infomsg = Color(0xc0b64e0d);
}
