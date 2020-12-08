import 'package:artca/app/modules/start/submodules/home/models/stores_all_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

part 'stores_repository.g.dart';

@Injectable()
class StoresRepository extends Disposable {
  final HasuraConnect hasuraConnect;

  StoresRepository(this.hasuraConnect);

  Future<Snapshot<List<StoreAll>>> getStores() async {
    var subscription = """ 
    subscription getStores {
      Stores {
        id
        address
        description
        imageUrl
        isFavorite
        title
        phone
      }
    }
    """;
    // ignore: close_sinks
    var snapshot1 = await hasuraConnect.subscription(subscription);
    return snapshot1.map((data) {
      if (data == null) {
        return null;
      }
      return StoreAll.fromJsonList(data["data"]["Stores"]);
    });
  }

  @override
  void dispose() {}
}
