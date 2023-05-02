import 'package:flutter/material.dart';
import 'package:test_nfc/widgets/start_page_template.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const id = "/welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StartPageTemplateWidgets(
            headerText: "Welcome to ON-MART",
            buttonText: "Start Scanning",
            onPressed: () => Navigator.pushNamed(context, "/scanning"),
            leftFlexAmount: 2,
    ));
  }
}
