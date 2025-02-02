import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/model_products.dart';

class PostAddProduts {
  Future<ModelProducts> getproducts(
      {required String title,
      required String desc,
      required String price}) async {
    Map<String, dynamic> data =
        await Api().post(url: "https://fakestoreapi.com/products", body: {
      "title": title,
      "price": price,
      "description": desc,
    });
    return ModelProducts.fromjson(data);
  }
}
