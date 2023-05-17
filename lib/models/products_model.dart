import 'package:store_app/models/category_model.dart';

class ProductsModel {
  final int id;
  final String title;
  final int price;
  final String description;
  final List<String> images;
  final DateTime creationAt;
  final DateTime updatedAt;
  final CategoryModel categoryModel;

  ProductsModel({
    required this.creationAt,
    required this.updatedAt,
    required this.categoryModel,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
  });

  factory ProductsModel.fromJson(jsonData) {
    return ProductsModel(
      creationAt: DateTime.parse(jsonData['creationAt']),
      updatedAt: DateTime.parse(jsonData['updatedAt']),
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      images: List<String>.from(jsonData['images']),
      categoryModel: CategoryModel.fromJson(jsonData['category']),
    );
  }
}
