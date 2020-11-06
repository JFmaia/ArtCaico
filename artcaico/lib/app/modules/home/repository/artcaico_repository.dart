import 'package:artcaico/app/modules/home/models/loja.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'artcaico_repository_impl.dart';

class ArtcaicoRepository implements IArtcaicoRepository {
  final FirebaseFirestore firestore;

  ArtcaicoRepository(this.firestore);

  @override
  Stream<List<Loja>> getLojas() {
    return firestore.collection('Lojas').snapshots().map((query) {
      return query.docs.map((doc) {
        return Loja.fromDocument(doc);
      }).toList();
    });
  }
}
