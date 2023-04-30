import 'dart:convert';

import 'package:test_nfc/model/inventory.dart';

import 'package:http/http.dart' as http;
import 'apiconstance.dart';

class PaymentService {
  String baseUrl = ApiConstants.baseUrl + ApiConstants.paymentsEndpoint;

  Future<void> postPayment(List<int> listOfTagIds) async {
    // "id": ["[18, 78, 75, 4, 144, 0]","[253, 71, 75, 4, 144, 0]"]
    String tagsOfIdList =
        "[${listOfTagIds.map((i) => i.toString()).join(", ")}]";

    final response = await http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'id': tagsOfIdList,
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return;
    } else {
      throw Exception('Cannot pay the money successfully');
    }
  }
}
