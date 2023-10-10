import 'package:fenix_interview/ui/constants.dart';
import 'package:fenix_interview/ui/utilities/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


ThemeData lightTheme() {
  return ThemeData(
    fontFamily: "Muli",
    appBarTheme: appBarTheme(1),


    ///Text color 1
    primaryColorLight: ColorUtilities.text_300,

    ///Text color 2
    primaryColorDark: ColorUtilities.primary_700,
    scaffoldBackgroundColor: Colors.white,

    ///terms conditions
    cardColor: ColorUtilities.text_500, //textfield text color
    highlightColor: ColorUtilities.light_100, //
    canvasColor: ColorUtilities.text_100,
    visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: const ColorScheme.light().copyWith(background: Colors.white),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorUtilities.dark_800,
    colorScheme: const ColorScheme.dark(),
    appBarTheme: appBarTheme(2),
    primaryColorLight: ColorUtilities.text_400,
    primaryColorDark: ColorUtilities.primary_400, //terms conditions
    cardColor: ColorUtilities.text_500, //textfield text color
    highlightColor: ColorUtilities.dark_800,
    canvasColor: ColorUtilities.dark_800,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}


AppBarTheme appBarTheme(int data) {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: data == 1 ? Brightness.light : Brightness.dark),
      iconTheme: const IconThemeData(color: kIconColor),
      titleTextStyle: const TextStyle(color: kPrimaryTextColor, fontSize: 18));
}
