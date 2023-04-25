import 'package:flutter/material.dart';
import 'package:startup_projects/consts/color_constants.dart';
import 'package:startup_projects/views/widgets/theme/text_theme.dart';

//whole application theme data
class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorConst.blue,
    textTheme:TTextTheme.textTheme,
    appBarTheme: const AppBarTheme(backgroundColor: ColorConst.blue),
  );
}
