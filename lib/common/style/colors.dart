import 'package:flutter/material.dart';

class SaracenColors{
  static Color hexColor (String? colorHexCode) {
    String colorNew = '0xFF' + colorHexCode!;
    colorNew = colorNew.replaceAll('#', '');
    int colorInt = int.parse(colorNew);

    return Color(colorInt);
  }

  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0x0FFFFFFF),
      100: Color(0x1FFFFFFF),
      200: Color(0x2FFFFFFF),
      300: Color(0x3FFFFFFF),
      400: Color(0x4FFFFFFF),
      500: Color(0x5FFFFFFF),
      600: Color(0x6FFFFFFF),
      700: Color(0x7FFFFFFF),
      800: Color(0x8FFFFFFF),
      900: Color(0x9FFFFFFF),
    },
  );

  static const MaterialColor black = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0x0F000000),
      100: Color(0x1F000000),
      200: Color(0x2F000000),
      300: Color(0x3F000000),
      400: Color(0x4F000000),
      500: Color(0x5F000000),
      600: Color(0x6F000000),
      700: Color(0x7F000000),
      800: Color(0x8F000000),
      900: Color(0x9F000000),
    },
  );


  static const MaterialColor dark1 = MaterialColor(
    0xFF303031,
    <int,Color> {
      50: Color(0x0F303031),
      100: Color(0x1F303031),
      200: Color(0x2F303031),
      300: Color(0x3F303031),
      400: Color(0x4F303031),
      500: Color(0x5F303031),
      600: Color(0x6F303031),
      700: Color(0x7F303031),
      800: Color(0x8F303031),
      900: Color(0x9F303031),
    },
  );

  static const MaterialColor dark2 = MaterialColor(
    0xFF18191A,
    <int,Color> {
      50: Color(0x0F18191A),
      100: Color(0x1F18191A),
      200: Color(0x2F18191A),
      300: Color(0x3F18191A),
      400: Color(0x4F18191A),
      500: Color(0x5F18191A),
      600: Color(0x6F18191A),
      700: Color(0x7F18191A),
      800: Color(0x8F18191A),
      900: Color(0x9F18191A),
    },
  );

  static const MaterialColor dark3 = MaterialColor(
    0xFF3F3F3F,
    <int,Color> {
      50: Color(0x0F3F3F3F),
      100: Color(0x1F3F3F3F),
      200: Color(0x2F3F3F3F),
      300: Color(0x3F3F3F3F),
      400: Color(0x4F3F3F3F),
      500: Color(0x5F3F3F3F),
      600: Color(0x6F3F3F3F),
      700: Color(0x7F3F3F3F),
      800: Color(0x8F3F3F3F),
      900: Color(0x9F3F3F3F),
    },
  );

  static const MaterialColor pink1 =  MaterialColor(
      0xFFE95885,
      <int, Color> {
        50: Color(0x0FE95885),
        100: Color(0x1FE95885),
        200: Color(0x2FE95885),
        300: Color(0x3FE95885),
        400: Color(0x4FE95885),
        500: Color(0x5FE95885),
        600: Color(0x6FE95885),
        700: Color(0x7FE95885),
        800: Color(0x8FE95885),
        900: Color(0x9FE95885),
      }
  );

  static const MaterialColor pink2 =  MaterialColor(
      0xFFF1DBE2,
      <int, Color> {
        50: Color(0x0FF1DBE2),
        100: Color(0x1FF1DBE2),
        200: Color(0x2FF1DBE2),
        300: Color(0x3FF1DBE2),
        400: Color(0x4FF1DBE2),
        500: Color(0x5FF1DBE2),
        600: Color(0x6FF1DBE2),
        700: Color(0x7FF1DBE2),
        800: Color(0x8FF1DBE2),
        900: Color(0x9FF1DBE2),
      }
  );

  static const MaterialColor pink3 =  MaterialColor(
      0xFFF174AC,
      <int, Color> {
        50: Color(0x0FF174AC),
        100: Color(0x1FF174AC),
        200: Color(0x2FF174AC),
        300: Color(0x3FF174AC),
        400: Color(0x4FF174AC),
        500: Color(0x5FF174AC),
        600: Color(0x6FF174AC),
        700: Color(0x7FF174AC),
        800: Color(0x8FF174AC),
        900: Color(0x9FF174AC),
      }
  );

  static const MaterialColor gray1 =  MaterialColor(
      0xFFEAEAEA,
      <int, Color> {
        50: Color(0x0FEAEAEA),
        100: Color(0x1FEAEAEA),
        200: Color(0x2FEAEAEA),
        300: Color(0x3FEAEAEA),
        400: Color(0x4FEAEAEA),
        500: Color(0x5FEAEAEA),
        600: Color(0x6FEAEAEA),
        700: Color(0x7FEAEAEA),
        800: Color(0x8FEAEAEA),
        900: Color(0x9FEAEAEA),
      }
  );

  static const MaterialColor gray2 =  MaterialColor(
      0xFFB1B3B9,
      <int, Color> {
        50: Color(0x0FB1B3B9),
        100: Color(0x1FB1B3B9),
        200: Color(0x2FB1B3B9),
        300: Color(0x3FB1B3B9),
        400: Color(0x4FB1B3B9),
        500: Color(0x5FB1B3B9),
        600: Color(0x6FB1B3B9),
        700: Color(0x7FB1B3B9),
        800: Color(0x8FB1B3B9),
        900: Color(0x9FB1B3B9),
      }
  );

  static const MaterialColor kakao = MaterialColor(
    0xFFfae001,
    <int,Color> {
      50: Color(0x0Ffae001),
      100: Color(0x1Ffae001),
      200: Color(0x2Ffae001),
      300: Color(0x3Ffae001),
      400: Color(0x4Ffae001),
      500: Color(0x5Ffae001),
      600: Color(0x6Ffae001),
      700: Color(0x7Ffae001),
      800: Color(0x8Ffae001),
      900: Color(0x9Ffae001),
    },
  );
}