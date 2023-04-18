import 'package:flutter/material.dart';
import 'package:test_nfc/pages/scanning_page.dart';
import 'package:test_nfc/pages/success_page.dart';
import 'package:test_nfc/pages/welcome_page.dart';
import 'package:test_nfc/theme/app_default_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kAppDefaultTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/welcome":
            return MaterialPageRoute(builder: (context) => const WelcomePage());
          case "/scanning":
            return MaterialPageRoute(builder: (context) => const ScanningPage());
          case "/success":
            return MaterialPageRoute(builder: (context) => const SuccessPage());
          default:
            return MaterialPageRoute(builder: (context) => const WelcomePage());
        }
      },
    );
  }
}

