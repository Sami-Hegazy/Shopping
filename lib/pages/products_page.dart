import 'package:flutter/material.dart';
import '../component/custom_app_bar.dart';
import '../component/custom_card.dart';
import '../helper/constant.dart';
import '../models/products_model.dart';
import '../services/get_all_product_service.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  static String id = 'productsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: MyAppBar(
        ontTap: () {
          Navigator.of(context).pop();
        },
        title: 'New Trend',
        leadingIcon: Icons.arrow_back_ios,
        actionIcons: Icons.shopping_cart,
      ),
      body: FutureBuilder<List<ProductsModel>>(
        future: GetAllProductService().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductsModel> data = snapshot.data!;
            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.60,
                crossAxisSpacing: 8,
                mainAxisSpacing: 24,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CustomCard(products: data[index]);
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator(color: olive));
          }
        },
      ),
    );
  }
}
