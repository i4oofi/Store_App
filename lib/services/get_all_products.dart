import 'package:ecommerce/helper/api.dart';
import 'package:ecommerce/model/product_model.dart';

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
