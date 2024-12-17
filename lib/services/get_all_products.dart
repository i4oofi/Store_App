import 'dart:convert';
import 'package:ecommerce/model/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProducts {
  Future<List<ProductModel>> getProducts() async {
    Uri url = Uri.parse('https://fakestoreapi.com/products');
    http.Response response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);

        List<ProductModel> productList = [];
        for (int i = 0; i < data.length; i++) {
          productList.add(ProductModel.fromJson(data[i]));
        }
        return productList;
      } else {
        throw Exception('${response.statusCode}');
      }
    } on Exception catch (e) {
      throw Exception('$e');
    }
  }
}
