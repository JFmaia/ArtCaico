import 'package:artcaico/app/models/loja.dart';

abstract class IArtcaicoRepository {
  Stream<List<Loja>> getTodos();
}
