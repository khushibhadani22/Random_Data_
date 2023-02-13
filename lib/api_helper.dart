import 'dart:convert';
import 'package:http/http.dart' as http;

import 'model.dart';

class APIHelper {
  APIHelper._();
  static final APIHelper apiHelper = APIHelper._();

  Future<RanDom?> fetchData() async {
    String apikey = "8e87a865e36c97b117a13692";
    String api = "https://randomuser.me/api";

    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map decodedData = jsonDecode(res.body);

      RanDom random = RanDom.fromJson(json: decodedData);
      return random;
    }
    return null;
  }
}
