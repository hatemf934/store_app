import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/model_products.dart';

class GetAllProducts {
  GetAllProducts();
  Future<List<ModelProducts>> getproducts() async {
    List<dynamic> jsondata =
        await Api().get(url: "https://fakestoreapi.com/products");

    List<ModelProducts> modelProducts = [];
    for (int i = 0; i < jsondata.length; i++) {
      modelProducts.add(
        ModelProducts.fromjson(jsondata[i]),
      );
    }
    return modelProducts;
  }
}
