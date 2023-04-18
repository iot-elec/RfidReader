import 'package:flutter/material.dart';
import 'package:test_nfc/theme/styles_const.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);
  static const id = "/success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kMediumDistance),
        decoration: kgreenLinearGradientDecor,
        child: Column(
          children: [
            const Text("Payment Sucessful. Press Next Customer to open the gate and leave the store"),
            ElevatedButton(
              child: const Text("Next Customer"),
              onPressed: () {
                print("pressed");
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            )
          ],
      ),
    ));
  }
}
