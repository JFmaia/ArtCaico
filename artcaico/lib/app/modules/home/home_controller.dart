import 'package:artcaico/app/modules/home/repository/artcaico_repository_impl.dart';

import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'models/loja.dart';

part 'home_controller.g.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IArtcaicoRepository repository;

  @observable
  ObservableStream<List<Loja>> lojaList;

  _HomeControllerBase(this.repository) {
    getList();
  }

  @action
  getList() {
    lojaList = repository.getLojas().asObservable();
  }
}
