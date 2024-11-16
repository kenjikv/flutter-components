
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.amber;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    
    primaryColor: Colors.indigo,

    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 10
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary
      )
    ),

    buttonTheme: ButtonThemeData(
      buttonColor: primary
    ),

  );

}