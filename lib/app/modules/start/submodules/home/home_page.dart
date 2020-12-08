import 'package:artca/app/modules/start/submodules/home/pages/detail_store_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'widgets/listview_categoria.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "ArtCaico"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 29,
              fontFamily: 'Dancing',
            ),
          ),
          actions: [
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.place),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            ListviewCategoria(),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                bottom: 2,
              ),
              width: double.infinity,
              child: Text(
                "Lojas",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Observer(
              builder: (BuildContext context) {
                if (controller.listaStoresAll?.hasError ?? false) {
                  print(controller.listaStoresAll.error);
                  return Center(
                    child:
                        Text("Ocorreu um erro ao relaizar essa requisição!!"),
                  );
                }
                if (controller.listaStoresAll?.value == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 480,
                  child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: controller.listaStoresAll.value.length,
                    itemBuilder: (BuildContext ctx, i) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GridTile(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailStorePage(
                                            store: controller
                                                .listaStoresAll.value[i],
                                          )));
                            },
                            child: Image.network(
                              controller.listaStoresAll.value[i].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          footer: GridTileBar(
                            backgroundColor: Colors.white,
                            title: Text(
                              controller.listaStoresAll.value[i].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
