import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/app_bar_theme.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/bottom_sheet_theme.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/checkbox_theme.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/elevated_button_theme.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/outlined_button_theme.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/text_theme.dart';
import 'package:flutterecommerceapp/utils/themes/customThemes/textfield_theme.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: TAppBar.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButton.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonedTheme.lightOutlinedButtonedTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: TAppBar.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButton.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonedTheme.darkOutlinedButtonedTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );

}


