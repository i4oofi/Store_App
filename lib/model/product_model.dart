class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
        rating: jsonData[RatingModel.fromJson(jsonData)]);
  }
}

class RatingModel {
  double rate;
  int count;
  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(count: jsonData['count'], rate: jsonData['rate']);
  }
}
