import 'package:e_commerce/data/models/models.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static var client = http.Client();

  static Future<List<Welcome>?> fetchProducts() async {
    var url = 'https://fakestoreapi.com/products';
    var response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    } else {
      return null;
    }
  }
}
