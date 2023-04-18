import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:test_nfc/model/inventory.dart';

import '../theme/styles_const.dart';

class ItemListWidget extends StatelessWidget {
  // final String img;
  final InventoryModel model;
  final String imgString;

  const ItemListWidget(
      {super.key, required this.model, required this.imgString});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ksmallMarginTopButtom,
      child: Padding(
        padding: kdefaultPadding,
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(flex: 1, child: Image.memory(base64Decode(imgString))),
            const SizedBox(
              width: kDefaultDistance,
            ),
            Expanded(flex: 7, child: Text(model.itemModel.itemName)),
            Expanded(
              flex: 1,
              child: Text("${model.price}"),
            ),
          ],
        ),
      ),
    );
  }
}
