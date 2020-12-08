import 'package:artca/app/modules/start/submodules/home/models/product_store_model.dart';
import 'package:artca/app/modules/start/submodules/home/repositories/product_repository.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'models/stores_all_model.dart';
import 'repositories/stores_repository.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store implements Disposable {
  final StoresRepository _repositoryStore;
  final ProductRepository _repositoryProduct;

  _HomeControllerBase(this._repositoryStore, this._repositoryProduct) {
    getDataStores();
    _repositoryProduct
        .getProductStore(idStoreM)
        .then((data) => listaProductStore = data);
  }

  @observable
  Snapshot<List<StoreAll>> snapshotGet;
  @observable
  List<ProductStoreModel> listaProductStore = [];

  Future getDataStores() async {
    snapshotGet = await _repositoryStore.getStores();
  }

  @computed
  ObservableStream<List<StoreAll>> get listaStoresAll =>
      snapshotGet?.asObservable();

  @observable
  String idStoreM;

  @action
  void setIdStore(String _idStore) {
    idStoreM = _idStore;
  }

  @override
  void dispose() {
    snapshotGet.close();
  }
}
