import 'package:fenix_interview/ui/constants.dart';
import 'package:fenix_interview/ui/utilities/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


ThemeData lightTheme() {
  return ThemeData(
    colorScheme: ColorScheme.light(),
    fontFamily: "Muli",
    appBarTheme: appBarTheme(1),

    primaryColor: ColorUtilities.purple_button,
    //primaryColor: ColorUtilities.dark_900,

    ///Text color 1
    primaryColorLight: ColorUtilities.text_300,

    ///Text color 2
    primaryColorDark: ColorUtilities.primary_700,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,

    ///terms conditions
    cardColor: ColorUtilities.text_500, //textfield text color
    highlightColor: ColorUtilities.light_100, //
    canvasColor: ColorUtilities.text_100,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ThemeData darkTheme() {
  return ThemeData(
    //scaffoldBackgroundColor: ColorUtilities.dark_900,

    //scaffoldBackgroundColor: ColorUtilities.deneme,
    scaffoldBackgroundColor: ColorUtilities.dark_800,

    colorScheme: ColorScheme.dark(),
    fontFamily: "Muli",
    appBarTheme: appBarTheme(2),

    primaryColor: ColorUtilities.purple_button,
    //primaryColor: ColorUtilities.light_100,

    ///Text color 1
    primaryColorLight: ColorUtilities.text_400,

    ///Text color 2
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
      iconTheme: IconThemeData(color: kIconColor),
      titleTextStyle: TextStyle(color: kPrimaryTextColor, fontSize: 18));
}
