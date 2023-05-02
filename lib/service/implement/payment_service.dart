import 'dart:convert';

import 'package:test_nfc/model/inventory.dart';

import 'package:http/http.dart' as http;
import 'apiconstance.dart';

class PaymentService {
  String url = ApiConstants.baseUrl + ApiConstants.paymentsEndpoint;

  Future<int> postPayment(List<List<int>> listOfTagIds) async {
    // "id": ["[18, 78, 75, 4, 144, 0]","[253, 71, 75, 4, 144, 0]"]

    List<String> tagsOfIdList = listOfTagIds.map((l) => l.toString()).toList();

    print(tagsOfIdList);

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        "Content-Type": "application/json",
      },
      body: jsonEncode(<String, List<String>>{
        "id": tagsOfIdList,
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return 200;
    } else {
      return response.statusCode;
    }
  }
}
