import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static ThemeData lightModeThemeData = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400),
      labelSmall: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w400),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
      selectedIconTheme: IconThemeData(color: Colors.black, size: 50),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(183, 147, 95, 1),
    ),
      dividerTheme:
          const DividerThemeData(color: Color.fromRGBO(183, 147, 95, 1)));

  static ThemeData darkModeThemeData = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w400),
      bodySmall: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400),
      labelSmall: TextStyle(
          fontFamily: 'El Messiri',
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w400),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
      selectedIconTheme:
          IconThemeData(color: Color.fromRGBO(250, 204, 29, 1), size: 50),
      unselectedItemColor: Colors.white,
      selectedItemColor: Color.fromRGBO(250, 204, 29, 1),
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(20, 26, 46, 1),
    ),
    dividerTheme: DividerThemeData(color: Color.fromRGBO(250, 204, 29, 1)),
  );
}


