// To parse this JSON data, do
//
//     final productStoreModel = productStoreModelFromMap(jsonString);

import 'dart:convert';

class ProductStoreModel {
  ProductStoreModel({
    this.name,
    this.price,
    this.imageProduct,
  });

  final String name;
  final double price;
  final String imageProduct;

  ProductStoreModel copyWith({
    String name,
    double price,
    String imageProduct,
  }) =>
      ProductStoreModel(
        name: name ?? this.name,
        price: price ?? this.price,
        imageProduct: imageProduct ?? this.imageProduct,
      );

  factory ProductStoreModel.fromJson(String str) =>
      ProductStoreModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductStoreModel.fromMap(Map<String, dynamic> json) =>
      ProductStoreModel(
        name: json["name"],
        price: json["price"].toDouble(),
        imageProduct: json["image_product"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "price": price,
        "image_product": imageProduct,
      };
  static List<ProductStoreModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map<ProductStoreModel>((item) => ProductStoreModel.fromMap(item))
        .toList();
  }
}
