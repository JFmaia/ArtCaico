import 'package:artcaico/app/models/product.dart';

class Loja {
  String title;
  DateTime dataInicio;
  String imageUrl;
  bool favorita;
  List<Product> products;

  Loja({
    this.title,
    this.dataInicio,
    this.imageUrl,
    this.favorita,
    this.products,
  });
}
