import 'package:flutter/material.dart';

class ListviewCategoria extends StatelessWidget {
  const ListviewCategoria({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 8,
          ),
          InkWell(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(),
                  height: 20,
                  child: Text(
                    "Bordados",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontFamily: "Dancing",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i.pinimg.com/736x/92/b9/e6/92b9e6b84f039b26a3f4b8ef9c7add73.jpg",
                      height: 50,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(),
                  height: 20,
                  child: Text(
                    "Cestaria",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontFamily: "Dancing",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://www.cidadeecultura.com/wp-content/uploads/2017/01/IMG_3205-paraty-cestaria-indigena-guarani-X-bx.jpg",
                      height: 50,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(),
                  height: 20,
                  child: Text(
                    "Cerâmica",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontFamily: "Dancing",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i.pinimg.com/originals/dc/ce/34/dcce34cebdf8c973e4ef1363999a8250.jpg",
                      height: 50,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(),
                  height: 20,
                  child: Text(
                    "Crochê",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontFamily: "Dancing",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://img.elo7.com.br/product/original/170166E/tapete-croche-margarida-croche-croche-croxe-croxe-tapete-decoracao-designer.jpg",
                      height: 50,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(),
                  height: 20,
                  child: Text(
                    "Bonecas de Pano",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontFamily: "Dancing",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://i.eduk.com.br/n4gjbLgBybZeo8zAa6-Q0OTy7ZE=/570x321/smart/https%3A%2F%2Fcdn.eduk.com.br%2Fimages%2Fcourse%2Fimage%2F18500%2F1573507531-63-0005-4969_18500-boneca-negra-de-pano-raizes-e-historias-camilacamacho.jpg",
                      height: 50,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
