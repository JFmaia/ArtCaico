import 'package:artcaico/app/modules/home/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'models/loja.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          )
        ],
      ),
      body: Observer(builder: (_) {
        if (controller.lojaList.hasError) {
          return Center(
            child: RaisedButton(
              onPressed: controller.getList(),
              child: Text('Error'),
            ),
          );
        }
        if (controller.lojaList.data == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        List<Loja> list = controller.lojaList.data;

        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, index) {
            Loja loja = list[index];
            return GestureDetector(
              onTap: () {},
              child: Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                        loja.imageUrl,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(loja.title),
                    trailing: IconButton(
                      icon: Icon(Icons.favorite_border_outlined),
                      onPressed: () {},
                    ),
                    subtitle: Text(
                      loja.description,
                    )),
              ),
            );
          },
        );
      }),
      drawer: AppDrawer(),
    );
  }
}
