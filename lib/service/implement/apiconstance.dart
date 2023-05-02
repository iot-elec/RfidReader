
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  String baseUrl = dotenv.get('BASEURL', fallback: 'API_URL not found');
  static String getInventoryDetailsBaseEndpoint = '/v1/get-inventory-details/';
  static String paymentsEndpoint = '/v1/checkout';

  ApiConstants(); 
}