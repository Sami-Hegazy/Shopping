import '../helper/api.dart';
import '../helper/constant.dart';
import '../models/products_model.dart';

class UpdateProductService {
  Future<ProductsModel> updateProduct({
    int? id,
    String? title,
    String? price,
    String? description,
    int? categoryId,
    List<String>? images,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: '$baseUrl /products/$id',
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
