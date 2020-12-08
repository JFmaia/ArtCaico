import 'package:artca/app/modules/start/submodules/home/models/product_store_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:hasura_connect/hasura_connect.dart';

part 'product_repository.g.dart';

@Injectable()
class ProductRepository extends Disposable {
  final HasuraConnect connect;

  ProductRepository(this.connect);

  Future<List<ProductStoreModel>> getProductStore(idStore) async {
    var query = """
    query getProductsStore(\$id_store: uuid) {
      Products(where: {id_store: {_eq: \$id_store}}) {
        name
        price
        image_product
      }
    }
    """;
    var snapshot = await connect.query(query, variables: {"id_store": idStore});
    return ProductStoreModel.fromJsonList(snapshot["data"]["Products"]);
  }

  @override
  void dispose() {}
}
