import 'package:calculadora_dart/theme/theme_blue.dart';
import 'package:calculadora_dart/theme/theme_green.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static Color colorX = Color(0xff99ff05);
  static List<Color> colorOptions = [
    Colors.purple,
    Colors.green,
    Colors.teal,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    colorX
  ];

  AppTheme._();

  static List<String> colorText = <String>[
    "Purple",
    "Green",
    "Teal",
    "Yellow",
    "Orange",
    "Pink",
    "Personalizado"
  ];

  static TextTheme textTheme = TextTheme(
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    // Añade más estilos de texto según necesites
  );

  static List<ColorScheme> colorOptionsShemeL = [
    MaterialThemeGreen(textTheme).light().colorScheme,
    //lightColorSchemeBlue,
    MaterialThemeGreen(textTheme).lightMediumContrast().colorScheme,
    MaterialThemeGreen(textTheme).lightHighContrast().colorScheme,
    MaterialThemeGreen(textTheme).light().colorScheme
  ];

  static List<ColorScheme> colorOptionsShemeD = [
    MaterialThemeGreen(textTheme).dark().colorScheme,
    //darkColorSchemeBlue,
    MaterialThemeGreen(textTheme).darkMediumContrast().colorScheme,
    MaterialThemeGreen(textTheme).darkHighContrast().colorScheme,
    MaterialThemeGreen(textTheme).dark().colorScheme
  ];

  static List<Color> colorOptionsLD = <Color>[
    Colors.green,
    Colors.greenAccent,
    Colors.lightGreen,
    Colors.red
  ];

  static List<String> colorTextLD = <String>[
    "Green",
    "GreenAccent",
    "lightGreen",
    "red"
  ];

  static ThemeData themeDataLight = ThemeData(
      useMaterial3: useMaterial3,
      colorScheme: AppTheme.colorOptionsShemeL[AppTheme.colorSelected]);
  static ThemeData themeDataDark = ThemeData(
      useMaterial3: useMaterial3,
      colorScheme: AppTheme.colorOptionsShemeD[AppTheme.colorSelected]);

  static bool useMaterial3 = false;
  static bool useLightMode = true;
  static int colorSelected = 1;
  static ThemeData themeData = ThemeData(
      colorSchemeSeed: AppTheme.colorOptions[AppTheme.colorSelected],
      useMaterial3: AppTheme.useMaterial3,
      brightness: AppTheme.useLightMode ? Brightness.light : Brightness.dark);
}
