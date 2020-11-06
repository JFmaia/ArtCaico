import 'package:cloud_firestore/cloud_firestore.dart';

class Loja {
  String title;
  String description;
  bool favorito;
  String imageUrl;
  DocumentReference reference;

  Loja({
    this.imageUrl,
    this.title,
    this.description,
    this.favorito,
    this.reference,
  });

  factory Loja.fromDocument(DocumentSnapshot doc) {
    return Loja(
      title: doc['title'],
      description: doc['description'],
      favorito: doc['favorito'],
      imageUrl: doc['imageUrl'],
      reference: doc.reference,
    );
  }
  Future save() async {
    if (reference == null) {
      reference = await FirebaseFirestore.instance.collection('Lojas').add({
        'title': title,
        'description': description,
        'favorito': favorito,
        'imageUrl': imageUrl,
      });
    } else {
      reference.update({});
    }
  }

  Future delete() {
    return reference.delete();
  }
}
