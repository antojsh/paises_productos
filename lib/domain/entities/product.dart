class Product {
  String sku;
  String brand;
  String description;
  String nameProduct;
  String image;
  int price;
  int barCode;

  Product(
      {this.sku,
      this.brand,
      this.description,
      this.nameProduct,
      this.image,
      this.price,
      this.barCode});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      sku: json['sku'] ?? 0,
      brand: json['marca'] ?? "",
      description: json['description'] ?? "",
      nameProduct: json['nameProduct'] ?? "",
      image: json['image'] ?? "",
      price: json['precio'] ?? "",
      barCode: json['barCode'] ?? null,
    );
  }

  static List<Product> fromJSONList(List<dynamic> jsonlist) {
    List<Product> items = List<Product>();
    jsonlist.forEach((dynamic json) {
      items.add(Product.fromJson(json));
    });
    return items;
  }
}
