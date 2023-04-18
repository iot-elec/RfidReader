import 'package:flutter/material.dart';

import '../theme/styles_const.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const id = "/welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment: Alignment.topLeft,
        width: double.infinity,
        padding: const EdgeInsets.all(kMediumDistance),
        decoration: kgreenLinearGradientDecor,
        child: Align(
          alignment: Alignment.topLeft,
          child: Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      const Align(
                          alignment: Alignment.topLeft,
                          child:
                              Text("Welcome to ON-MART", style: kTitleLarge)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.14,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                          child: const Text(
                            "Start Scanning",
                            style: kTitleMediumLarge,
                            textAlign: TextAlign.left,
                          ),
                          onPressed: () => Navigator.pushNamed(context, "/scanning"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
