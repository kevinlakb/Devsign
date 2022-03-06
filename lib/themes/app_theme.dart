import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(68, 43, 134, 1);
  static const Color bgWhite = Color.fromARGB(60, 255, 255, 255);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 2,
        //titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
      ),

      // TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      // FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primary, shape: const StadiumBorder(), elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
