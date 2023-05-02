import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:test_nfc/model/inventory.dart';

import 'package:http/http.dart' as http;
import 'apiconstance.dart';

class InventoryService {
  String baseUrl =
      ApiConstants.baseUrl + ApiConstants.getInventoryDetailsBaseEndpoint;

  Future<InventoryModel> getInventoryModel(List<int> inventoryId) async {
    String data = "[${inventoryId.map((i) => i.toString()).join(", ")}]";
    if (kDebugMode) {
      print(data);
    }
    String url = baseUrl + data;
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response);
      return InventoryModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

}
