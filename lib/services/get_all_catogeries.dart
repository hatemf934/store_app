import 'dart:convert';
import 'package:http/http.dart' as http;

class AllCatogeriesServices {
  Future<List<dynamic>> getgatogery() async {
    http.Response response = await http
        .get(Uri.parse("https://fakestoreapi.com/products/categories"));
    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
}
// دي مستخدمتش فيها api class عشان اميز بينهم لما اراجع