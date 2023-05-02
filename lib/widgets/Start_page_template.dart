import 'package:flutter/material.dart';
import 'package:test_nfc/theme/styles_const.dart';

class StartPageTemplateWidgets extends StatelessWidget {
  final String headerText;
  final String buttonText;
  final String headerDetailsText;
  final Function onPressed;
  final int leftFlexAmount;

  const StartPageTemplateWidgets(
      {super.key,
      required this.headerText,
      required this.buttonText,
      required this.onPressed,
      this.headerDetailsText = "",
      this.leftFlexAmount = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.topLeft,
      width: double.infinity,
      padding: const EdgeInsets.all(kMediumDistance),
      decoration: kbackgroundImageDecor,
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
        decoration: kwhiteOpacityDecor,
        child: Align(
          alignment: Alignment.topLeft,
          child: Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(headerText, style: kTitleLarge)),
                      const SizedBox(
                        height: kSmallDistance,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(headerDetailsText, style: kBodyLarge)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.14,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                          child: Text(
                            buttonText,
                            style: kTitleMediumLarge,
                            textAlign: TextAlign.left,
                          ),
                          onPressed: () => onPressed(),
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
