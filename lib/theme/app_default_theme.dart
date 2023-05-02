
import 'package:flutter/material.dart';

import 'styles_const.dart';

ThemeData kAppDefaultTheme = ThemeData.fallback().copyWith(
  pageTransitionsTheme: kPageTransitionTheme,
    scaffoldBackgroundColor: kblack100,
    appBarTheme: kAppBarTheme,
    primaryColor: kgreen500,
    cardTheme: kDefaultCardTheme,
    textTheme: kTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(style: kButtonStyle),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
);