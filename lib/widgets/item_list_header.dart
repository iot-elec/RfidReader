import 'package:flutter/material.dart';

import '../theme/styles_const.dart';

class ItemListHeaderWidget extends StatelessWidget {
  // final String img;

  const ItemListHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        margin: ksmallMarginbuttom,
        child: Padding(
          padding: kdefaultPadding,
          child: Row(
            children: const [
              Expanded(flex: 1, child: SizedBox()),
              SizedBox(
                width: kDefaultDistance,
              ),
              Expanded(flex: 7, child: Text("Items")),
              Expanded(flex: 1, child: Text("Price (£)")),
            ],
          ),
        ),
      ),
    );
  }
}
