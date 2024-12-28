import 'package:ecommerce/core/services/get_all_products.dart';
import 'package:ecommerce/data/model/product_model.dart';
import 'package:ecommerce/views/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('New Trend'),
        actions: [
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: GetAllProducts().getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Error: ${snapshot.error}'); // للتحقق من الخطأ
            return Center(child: Text('${snapshot.error}'));
          }
          if (snapshot.hasData) {
            List<ProductModel> product = snapshot.data!;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                mainAxisSpacing: 60,
              ),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Stack(
                    clipBehavior: Clip.none, // مهم لتجاوز حدود الـ Stack
                    children: [
                      SizedBox(
                        height: 280,
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CustomCard(product: product[index]),
                        ),
                      ),
                      Positioned(
                        top: -5, // تحريك الصورة لأعلى
                        left: 40, // ضبط موقع الصورة أفقياً
                        child: Image(
                          height: 90,
                          width: 100,
                          image: NetworkImage(product[index].image),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
