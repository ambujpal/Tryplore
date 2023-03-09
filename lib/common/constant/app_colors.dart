import 'package:flutter/material.dart';

class AppColors {
  static const primarySwatchColor = MaterialColor(0xFF66CB65, {
    50: Color.fromRGBO(254, 179, 0, .1),
    100: Color.fromRGBO(254, 179, 0, .2),
    200: Color.fromRGBO(254, 179, 0, .3),
    300: Color.fromRGBO(254, 179, 0, .4),
    400: Color.fromRGBO(254, 179, 0, .5),
    500: Color.fromRGBO(254, 179, 0, .6),
    600: Color.fromRGBO(254, 179, 0, .7),
    700: Color.fromRGBO(254, 179, 0, .8),
    800: Color.fromRGBO(254, 179, 0, .9),
    900: Color.fromRGBO(254, 179, 0, 1),
  });

  //Primary Color
  static const primaryLightest = Color(0XFFFFF0CC);
  static const primaryLight = Color(0XFFFFE199);
  static const primary = Color(0XFFFEB300);
  static const primaryDark = Color(0XFFCB8F00);
  static const primaryDarkest = Color(0XFF33240);

  //Error Color
  static const errorLightest = Color(0XFFFAE2E0);
  static const errorLight = Color(0XFFF0A8A1);
  static const error = Color(0XFFDC3423);
  static const errorDark = Color(0XFF5E160F);
  static const errorDarkest = Color(0XFF1F0705);

  //Warning Color
  static const warningLightest = Color(0XFFFAF2E0);
  static const warningLight = Color(0XFFF0D8A1);
  static const warning = Color(0XFFDBA524);
  static const warningDark = Color(0XFF5E470F);
  static const warningDarkest = Color(0XFF1F1805);

  //Success Color
  static const successLightest = Color(0XFFDBFFED);
  static const successLight = Color(0XFF92FFC9);
  static const success = Color(0XFF00FF80);
  static const successDark = Color(0XFF006D37);
  static const successDarkest = Color(0XFF002412);

  //Grey Color
  static const greyLightest = Color(0XFFfafcfe);
  static const greyLight = Color(0XFFbcc0c3);
  static const greyBefore = Color(0XFF8e979b);
  static const grey = Color(0XFF646c70);
  static const greyDark = Color(0XFF3c4143);
  static const greyDarkest = Color(0XFF141616);
}
