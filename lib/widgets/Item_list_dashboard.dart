import 'package:flutter/material.dart';
import 'package:test_nfc/widgets/item_list_header.dart';

import '../model/inventory.dart';
import '../model/mock/mock_img_str.dart';
import '../theme/styles_const.dart';
import 'item_list_widgets.dart';

class ItemListDashBoardWidget extends StatelessWidget {
  ListInventoryModel listInventoryModel;

  ItemListDashBoardWidget({super.key, required this.listInventoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(kSmallDistance),
                child: Container(
                  decoration: kredClassicDecor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const ItemListHeaderWidget(),
                      Expanded(
                        child: listInventoryModel.data.isEmpty
                            ? const SizedBox(
                                width: 0,
                                height: 0,
                              )
                            : ListView.builder(
                                itemCount: listInventoryModel.data.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ItemListWidget(
                                    model: listInventoryModel.data[index],
                                    imgString: fileMockImg,
                                  );
                                }),
                      )
                    ],
                  ),
                ),
              );
  }
}



// return Padding(
//                 padding: const EdgeInsets.all(kSmallDistance),
//                 child: Container(
//                   decoration: kredClassicDecor,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       const ItemListHeaderWidget(),
//                       Expanded(
//                         child: listInventoryModel.data.isEmpty
//                             ? const SizedBox(
//                                 width: 0,
//                                 height: 0,
//                               )
//                             : ListView.builder(
//                                 itemCount: listInventoryModel.data.length,
//                                 itemBuilder: (BuildContext context, int index) {
//                                   return ItemListWidget(
//                                     model: listInventoryModel.data[index],
//                                     imgString: fileMockImg,
//                                   );
//                                 }),
//                       )
//                     ],
//                   ),
//                 ),
//               );
//   }
