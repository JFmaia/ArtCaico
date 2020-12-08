import 'package:artca/app/modules/start/submodules/home/home_controller.dart';
import 'package:artca/app/modules/start/submodules/home/home_module.dart';
import 'package:artca/app/modules/start/submodules/home/models/stores_all_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DetailStorePage extends StatefulWidget {
  final StoreAll store;

  const DetailStorePage({Key key, this.store}) : super(key: key);
  @override
  _DetailStorePageState createState() => _DetailStorePageState();
}

class _DetailStorePageState extends State<DetailStorePage> {
  HomeController controller = HomeModule.to.get();
  @override
  void initState() {
    controller.setIdStore(widget.store.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.chevron_left),
            title: Text(widget.store.title),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.favorite_outline,
                ),
                onPressed: () {},
              )
            ],
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                widget.store.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Card(
                  elevation: 0.5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      widget.store.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '${widget.store.phone.toString()} ~~ ${widget.store.address}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.more),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Divider(),
                      Container(
                        height: 90,
                        width: 200,
                        child: Center(
                          child: Text(
                            widget.store.description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Observer(
            builder: (BuildContext context) {
              return SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            child: Image.network(
                              controller.listaProductStore[index].imageProduct,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: FittedBox(
                                  child: Text(
                                      controller.listaProductStore[index].name),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text(
                                    "R\$ ${controller.listaProductStore[index].price.toString()}"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: controller.listaProductStore.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.7,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
