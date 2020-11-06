import 'package:artcaico/app/modules/home/repository/artcaico_repository.dart';
import 'package:artcaico/app/modules/home/repository/artcaico_repository_impl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get())),
        Bind<IArtcaicoRepository>(
            (i) => ArtcaicoRepository(FirebaseFirestore.instance)),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
