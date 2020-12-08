import 'package:artca/app/modules/start/submodules/home/home_module.dart';
import 'package:artca/app/modules/start/submodules/search/search_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'start_controller.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: controller.pageViewController,
        children: [
          RouterOutlet(
            module: HomeModule(),
          ),
          RouterOutlet(
            module: SearchModule(),
          ),
          Container(
            child: Center(
              child: Text("My Loja"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Perfil"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Início",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_outlined,
                  ),
                  label: "Busca",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.store,
                  ),
                  label: "My Loja",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Perfil",
                ),
              ],
              currentIndex: controller.pageViewController?.page?.round() ?? 0,
              selectedItemColor: Theme.of(context).accentColor,
              showUnselectedLabels: true,
              unselectedItemColor: Theme.of(context).primaryColor,
              unselectedLabelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
              onTap: (index) {
                controller.pageViewController.jumpToPage(index);
              },
            );
          }),
    );
  }
}
