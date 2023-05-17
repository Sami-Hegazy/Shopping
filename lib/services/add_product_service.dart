import 'package:store_app/models/products_model.dart';

import '../helper/api.dart';
import '../helper/constant.dart';

class AddProductService {
  Future<ProductsModel> addProduct({
    required String title,
    required String price,
    required String description,
    required int categoryId,
    required List<String> images,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$baseUrl /products/',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "categoryId": categoryId,
        "images": images
      },
    );

    return ProductsModel.fromJson(data);
  }
}
