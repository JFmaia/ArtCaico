import 'package:artcaico/app/models/produtc.dart';

class Lojas {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<Product> products;
  final DateTime date;
  bool isFavorite;

  Lojas({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.products,
    this.date,
    this.isFavorite,
  });
}
