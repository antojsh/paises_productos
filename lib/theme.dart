import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productos_y_paises/app_config.dart';

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 30),
      elevation: 20,
      centerTitle: true,
      brightness: Brightness.light,
      color: AppColors.mainColor,
      // textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      //   headline6: TextStyle(fontSize: 20, color: AppColors.mainColor),
      // ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme()
        .apply(
          bodyColor: AppColors.secondColor,
        )
        .copyWith(
          bodyText1: TextStyle(color: AppColors.mainColor),
          bodyText2: TextStyle(color: AppColors.secondColor),
        ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: AppColors.mainColor),
      hintStyle: TextStyle(
        color: AppColors.secondColor,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 20,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.mainColor),
        gapPadding: 5,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.mainColor),
        gapPadding: 5,
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData();
}