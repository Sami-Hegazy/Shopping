import 'package:store_app/models/products_model.dart';
import '../helper/api.dart';
import '../helper/constant.dart';

class GetAllProductService {
  Future<List<ProductsModel>> getAllProducts() async {
    List data = await Api().get(url: '$baseUrl/products');

    List<ProductsModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductsModel.fromJson(data[i]));
    }
    return productsList;
  }
}
