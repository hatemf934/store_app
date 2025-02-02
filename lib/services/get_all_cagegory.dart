import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/model_products.dart';

class AllCagegoryServices {
  Future<List<ModelProducts>> getcagegory(String categoryname) async {
    List<dynamic> jsondata = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$categoryname");

    List<ModelProducts> modelcagegory = [];
    for (var i = 0; i < jsondata.length; i++) {
      modelcagegory.add(ModelProducts.fromjson(jsondata[i]));
    }
    return modelcagegory;
  }
}
