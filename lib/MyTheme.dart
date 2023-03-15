import 'package:flutter/material.dart';

class MyThemeData{
  static Color colorBlack=Color.fromRGBO(36, 36, 36, 1.0);
  static Color colorGold=Color.fromRGBO(183, 147, 95, 1.0);
  static Color darkprimery=Color.fromRGBO(20, 26, 46, 1.0);
  static Color yellowColor=Color.fromRGBO(250, 204, 29, 1.0);

  static ThemeData light=ThemeData(
    primaryColor: colorGold,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(brightness: Brightness.light,
          primary: colorGold,
          onPrimary: Colors.white,
          secondary:colorBlack ,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: colorBlack,
          surface: Colors.grey,
          onSurface: Colors.white),

      appBarTheme: AppBarTheme(
        centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color:colorBlack)
      ),
      textTheme: TextTheme(

        headline1: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: colorBlack),
      ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       backgroundColor: colorGold,
       unselectedItemColor: Colors.white,
       selectedItemColor: colorBlack,
     )
  );

  static ThemeData Dark=ThemeData(
    primaryColor: darkprimery,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(brightness: Brightness.dark,
          primary: darkprimery,
          onPrimary: Colors.white,
          secondary:yellowColor ,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: yellowColor,
          surface: Colors.grey,
          onSurface: Colors.white),

      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white)
      ),
      textTheme: TextTheme(

        headline1: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
        subtitle1: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:yellowColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkprimery,
        unselectedItemColor: Colors.white,
        selectedItemColor: yellowColor,
      )
  );
}