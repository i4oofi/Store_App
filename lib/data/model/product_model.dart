class ProductModel {
  int id;
  String title;
  double price;
  String description;
  // String category;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      // required this.category,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        // تحويل price إلى double لأنه قد يأتي كـ int من API
        price: (jsonData['price'] as num).toDouble(),
        description: jsonData['description'],
        // category: jsonData['category'],
        image: jsonData['image'],
        // التصحيح هنا
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  double rate;
  int count;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(Map<String, dynamic> jsonData) {
    return RatingModel(
        // تحويل rate إلى double لأنه قد يأتي كـ int من API
        rate: (jsonData['rate'] as num).toDouble(),
        count: jsonData['count']);
  }
}
