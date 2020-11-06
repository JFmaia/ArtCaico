import 'package:artcaico/app/modules/home/models/loja.dart';

abstract class IArtcaicoRepository {
  Stream<List<Loja>> getLojas();
}
