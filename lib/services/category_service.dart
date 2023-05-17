import '../helper/api.dart';
import '../helper/constant.dart';
import '../models/products_model.dart';

class CategoryService {
  Future<List<ProductsModel>> getAllProducts({required int categoryId}) async {
    List response =
        await Api().get(url: '$baseUrl/categories/$categoryId/products');

    List<ProductsModel> productsList = [];
    for (var i = 0; i < response.length; i++) {
      productsList.add(ProductsModel.fromJson(response[i]));
    }

    return productsList;
  }
}
