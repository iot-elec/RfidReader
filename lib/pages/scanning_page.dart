import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_nfc/model/inventory.dart';
import 'package:test_nfc/model/mock/data.dart';
import 'package:test_nfc/service/nfc.dart';
import 'package:test_nfc/theme/styles_const.dart';
import 'package:test_nfc/widgets/Item_list_dashboard.dart';

import 'package:test_nfc/widgets/item_list_widgets.dart';

import 'package:test_nfc/model/mock/mock_img_str.dart';

import '../widgets/item_list_header.dart';

class ScanningPage extends StatefulWidget {
  const ScanningPage({super.key});
  static const id = "/scanning";

  @override
  State<ScanningPage> createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  int _counter = 0;
  ListInventoryModel listInventoryModel = ListInventoryModel(data: []);

  Future<void> tryReader() async {
    // NFC nfc = NFC();
    // await nfc.init();

    // List<int> res = await nfc.readCard(readerIndex: 0);

    // mock data test
    var r = json.decode(inventoryDataMock);
    setState(() {
      listInventoryModel = listInventoryModel.fromJson(r);
      _counter++;
    });
  }

  Future<void> _incrementCounter() async {
    await tryReader();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: ItemListDashBoardWidget(
                listInventoryModel: listInventoryModel,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(kSmallDistance),
                child: Container(
                  decoration: kredClassicDecor,
                  child: Column(
                    children: [
                      const Expanded(flex: 7, child: SizedBox()),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(kverySmallDistance),
                          child: Expanded(
                            child: Container(
                              margin: ksmallMargin,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  const Text(
                                    "Total (£)",
                                    style: kBodyMedium,
                                  ),
                                  const SizedBox(
                                    height: kverySmallDistance,
                                  ),
                                  Container(
                                    child: listInventoryModel.data.isEmpty
                                        ? Text(0.toString(), style: kTitleMediumLarge)
                                        : Text(
                                            listInventoryModel.getSumprice().toString(),
                                            style: kTitleMediumLarge),
                                  ),
                                  const SizedBox(
                                    height: kverySmallDistance,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(kSmallDistance), backgroundColor: kwhiteOpacity50),
                                      onPressed: () => Navigator.pushNamed(context, "/success"),
                                      child: const Expanded(
                                        child: Text(
                                          "Pay",
                                          style: kTitleMediumLarge,
                                          textAlign: TextAlign.left,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
