class ListProductModel {
  final List<ProductModel> productList;
  ListProductModel({required this.productList});

  factory ListProductModel.fromJson(List<dynamic> json) {
    List<ProductModel> data =
        json.map((e) => ProductModel.fromJson(e)).toList();
    return ListProductModel(productList: data);
  }
}

class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String image;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "image": image,
      };
}
