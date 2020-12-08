// To parse this JSON data, do
//
//     final storesAllModel = storesAllModelFromMap(jsonString);

import 'dart:convert';

class StoreAll {
  StoreAll({
    this.id,
    this.address,
    this.description,
    this.imageUrl,
    this.isFavorite,
    this.title,
    this.phone,
  });
  final String id;
  final String address;
  final String description;
  final String imageUrl;
  final bool isFavorite;
  final String title;
  final int phone;

  StoreAll copyWith({
    String id,
    String address,
    String description,
    String imageUrl,
    bool isFavorite,
    String nickName,
    int phone,
  }) =>
      StoreAll(
        id: id ?? this.id,
        address: address ?? this.address,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        isFavorite: isFavorite ?? this.isFavorite,
        title: nickName ?? this.title,
        phone: phone ?? this.phone,
      );

  factory StoreAll.fromJson(String str) => StoreAll.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StoreAll.fromMap(Map<String, dynamic> json) => StoreAll(
        id: json["id"],
        address: json["Address"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        isFavorite: json["isFavorite"] == null ? null : json["isFavorite"],
        title: json["title"],
        phone: json["phone"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "Address": address,
        "description": description,
        "imageUrl": imageUrl,
        "isFavorite": isFavorite == null ? null : isFavorite,
        "title": title,
        "phone": phone,
      };
  static List<StoreAll> fromJsonList(List list) {
    if (list == null) return null;
    return list.map<StoreAll>((item) => StoreAll.fromMap(item)).toList();
  }
}
