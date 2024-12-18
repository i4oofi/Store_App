import 'package:ecommerce/helper/api.dart';
import 'package:ecommerce/model/product_model.dart';

class GetCategoryName {
  Future<List<ProductModel>> getCategoryName({required String category}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$category');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
