import 'package:flutter/material.dart';
import 'package:test_nfc/widgets/start_page_template.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);
  static const id = "/success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StartPageTemplateWidgets(
            headerText: "Payment Sucessful",
            buttonText: "Next Customer",
            onPressed: () =>
                Navigator.of(context).popUntil((route) => route.isFirst),
            headerDetailsText:
                "Press Next Customer to open the gate and leave the store"));
  }
}
