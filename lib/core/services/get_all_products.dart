import 'package:ecommerce/data/model/product_model.dart';
import 'package:ecommerce/core/helper/api.dart';

class GetAllProducts {
  Future<List<ProductModel>> getProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
