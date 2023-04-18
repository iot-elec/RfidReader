import 'package:flutter/material.dart';

const double kverySmallDistance = 5;
const double kssmallDistance = 10;
const double kSmallDistance = 20;
const double kDefaultDistance = 20;
const double kMediumDistance = 30;

const Color kgreen100 = Color(0xFFB4EFBA);
const Color kgreen200 = Color(0xFFEFFEF1);
const Color kgreen500 = Color(0xFF095307);
const Color kgreen600 = Color(0xFFE5FFDC);
const Color kgreen700 = Color(0xe8197B2E);
const Color kgreen800 = Color(0xff0f6f24);

const Color kred100 = Color(0xFFFFE1C5);
const Color kred400 = Color(0xFFDA0000);
const Color kred800 = Color(0xFF660000);

const Color korange300 = Color(0xffFFB72D);
const Color korange500 = Color(0xFFFF7E21);

const Color kyellow100 = Color(0xFFF0F451);

const Color kwhiteOpacity50 = Color(0x80FFFFFF);

const Color kblack100 = Color(0xFFF1F1F1);
const Color kblack700 = Color(0xFF333333);
const Color kblack800 = Color(0xff222222);
const Color kblack900 = Color(0xff111111);

const EdgeInsetsGeometry ksmallPadding = EdgeInsets.all(kSmallDistance);
const EdgeInsetsGeometry kdefaultPadding = EdgeInsets.all(kDefaultDistance);

const EdgeInsetsGeometry ksmallMargin =
    EdgeInsets.all(kSmallDistance);

const EdgeInsetsGeometry ksmallMarginTopButtom =
    EdgeInsets.only(top: kverySmallDistance, bottom: kverySmallDistance);

const EdgeInsetsGeometry ksmallMarginbuttom =
    EdgeInsets.only(bottom: kverySmallDistance);

const BorderRadius kDefaultRadius = BorderRadius.all(Radius.circular(10));

const LinearGradient kgreenLinearGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [kgreen100, kgreen200]);

const BoxDecoration kgreenLinearGradientDecor =
    BoxDecoration(gradient: kgreenLinearGradient);

const BoxDecoration kredClassicDecor =
    BoxDecoration(color: kred100, borderRadius: kDefaultRadius);

BoxDecoration klightredContainerDecor = const BoxDecoration(
  color: kwhiteOpacity50,
  borderRadius: kDefaultRadius,
  boxShadow: [
    BoxShadow(
      color: Color(0x331D2136),
      spreadRadius: 0.1,
      blurRadius: 4,
      offset: Offset(0, 4), 
    ),
  ],
);

const ShapeBorder kAllRoundBorder =
    RoundedRectangleBorder(borderRadius: kDefaultRadius);
const ShapeBorder buttomRoundBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)));

const kDefaultCardTheme = CardTheme(
  margin: EdgeInsets.all(kSmallDistance),
  shadowColor: Color(0x331D2136),
  color: kwhiteOpacity50,
  shape: kAllRoundBorder,
  elevation: 8,
);

const kButtomRoundCardTheme = CardTheme(
  margin: EdgeInsets.all(15),
  shadowColor: Color(0x331D2136),
  color: Color(0xFF24263B),
  shape: buttomRoundBorder,
  elevation: 8,
);

var kButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: kgreen500,
    backgroundColor: kred100,
    padding: const EdgeInsets.all(kMediumDistance));

Color get newMethod => Colors.white;

const kFontNotoSans = 'NotoSans';
const kFontNiramit = 'Niramit';

const kTitleLarge = TextStyle(
  color: kgreen500,
  fontSize: 50,
  fontFamily: kFontNotoSans,
  fontWeight: FontWeight.w400,
  letterSpacing: 1,
);

const kTitleMediumLarge = TextStyle(
  color: kgreen500,
  fontSize: 36,
  fontFamily: kFontNotoSans,
  fontWeight: FontWeight.w400,
  letterSpacing: 1,
);

const kTitleMedium = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontFamily: kFontNiramit,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
);

const kHeadlineMedium =
    TextStyle(color: Colors.white, fontSize: 18, fontFamily: kFontNotoSans);

const kBodyMedium =
    TextStyle(color: kgreen500, fontSize: 20, fontFamily: kFontNotoSans);

const kBodySmall =
    TextStyle(color: kgreen500, fontSize: 12, fontFamily: kFontNotoSans);

const TextTheme kTextTheme = TextTheme(
  titleMedium: kTitleMedium,
  headlineMedium: kHeadlineMedium,
  bodyMedium: kBodyMedium,
  bodySmall: kBodySmall,
);

const AppBarTheme kAppBarTheme = AppBarTheme(
  titleTextStyle: kTitleMedium,
  toolbarHeight: 65,
);
