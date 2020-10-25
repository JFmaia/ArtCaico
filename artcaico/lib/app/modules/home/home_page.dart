import 'package:artcaico/app/modules/home/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

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
      body: Column(
        children: <Widget>[],
      ),
      drawer: AppDrawer(),
    );
  }
}
