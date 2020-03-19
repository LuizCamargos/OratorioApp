import 'package:flutter/material.dart';

class CardMural extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 350,
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    "https://naturam.com.br/ilhabela/wp-content/uploads/sites/8/2016/10/6-praia-de-indaiauba-ilhabela.jpg",
                    //'https://abrilviagemeturismo.files.wordpress.com/2017/01/2013_01_07_1823_bonete-ilhabela-foto-flavio-veloso-opcao-brasil-imagens-1-e1489696231850.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                width: 350,
                height: 180,
                bottom: 50,
              ),
              Positioned(
                width: 350,
                height: 80,
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Text("Foto na praia"),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 16,
                                  ),
                                  Text("400 likes")
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 16,
                                  ),
                                  Text("122 Comentarios")
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 16,
                                  ),
                                  Text("Like")
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 16,
                                  ),
                                  Text("Comentar")
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.ac_unit,
                                    size: 16,
                                  ),
                                  Text("Compartilhar")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
