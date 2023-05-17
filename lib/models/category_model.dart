class CategoryModel {
  final int id;
  final String name;
  final String image;
  final DateTime creationAt;
  final DateTime updatedAt;

  CategoryModel({
    required this.creationAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.image,
  });

  factory CategoryModel.fromJson(jsonData) {
    return CategoryModel(
      creationAt: DateTime.parse(jsonData['creationAt']),
      updatedAt: DateTime.parse(jsonData['updatedAt']),
      id: jsonData['id'],
      name: jsonData['name'],
      image: jsonData['image'],
    );
  }
}
