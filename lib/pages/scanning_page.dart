import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_nfc/model/inventory.dart';
import 'package:test_nfc/model/mock/data.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_nfc/service/nfc.dart';
import 'package:test_nfc/theme/styles_const.dart';
import 'package:test_nfc/widgets/Item_list_dashboard.dart';

import 'package:test_nfc/widgets/item_list_widgets.dart';

import 'package:test_nfc/model/mock/mock_img_str.dart';

import '../widgets/item_list_header.dart';

class ScanningPage2 extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ScanningPage extends HookWidget {
  static const id = "/scanning";

  @override
  Widget build(BuildContext context) {
    final listInventoryModel = useState(ListInventoryModel(data: []));
    final _counter = useState(0);

    useEffect( () {
    // side effects code here.
    //subscription to a stream, opening a WebSocket connection, or performing HTTP requests
      Future<void> tagReaderasync() async {
        NFC nfc = NFC();
        await nfc.init();

        if (nfc.checkReader()) {

          List<int> res = await nfc.readCard(readerIndex: 0);
          await nfc.removeCard();

          if (kDebugMode) {
            print(res);
          }          

          if (listInventoryModel.value.data.isNotEmpty ) {
            if (!listInventoryModel.value.checkIfInventoryIdIsAdded(res)) {
              if (kDebugMode) {
                print("call api");
              }
              // call api to get new inventory data
            } 
          } 

          // mock data test
          var r = json.decode(inventoryDataMock);
          listInventoryModel.value = listInventoryModel.value.fromJson(r);
        }
        // return listInventoryModel.fromJson(r);
      }
      tagReaderasync();
    });

    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: ItemListDashBoardWidget(
                listInventoryModel: listInventoryModel.value,
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
                      const Expanded(flex: 6, child: SizedBox()),
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
                                    child: listInventoryModel.value.data.isEmpty
                                        ? Text(0.toString(),
                                            style: kTitleMediumLarge)
                                        : Text(
                                            listInventoryModel.value
                                                .getSumprice()
                                                .toString(),
                                            style: kTitleMediumLarge),
                                  ),
                                  const SizedBox(
                                    height: kverySmallDistance,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.all(
                                              kSmallDistance),
                                          backgroundColor: kwhiteOpacity50),
                                      onPressed: () => Navigator.pushNamed(
                                          context, "/success"),
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

    );
  }
}
