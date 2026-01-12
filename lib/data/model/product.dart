class ProductModel {
  final String image;
  final String title;
  final double price;

  ProductModel({
    required this.image,
    required this.title,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      image: json['image'] ?? '',
      title: json['title'] ?? '',
      price: (json['price'] as num).toDouble(),
    );
  }
}
