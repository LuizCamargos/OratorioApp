import 'dart:ffi';

import 'package:flutter/material.dart';

class CardMural extends StatefulWidget {
  @override
  _CardMuralState createState() => _CardMuralState();
}

class _CardMuralState extends State<CardMural> {
  bool favorite = false, bookmark = false;
  atualizaFavorito() {
    setState(() {
      favorite = (!favorite);
    });
  }

  atualizaBookmark() {
    setState(() {
      bookmark = (!bookmark);
    });
  }

  @override
  Widget build(BuildContext context) {
    double yWidth = MediaQuery.of(context).size.width / 2;
    double xHeight = MediaQuery.of(context).size.height / 2;

    return new Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                child: Image.asset(
                  'assets/images/presente.png',
                  repeat: ImageRepeat.repeat,
                  scale: 3,
                  /*Image.network(
                    "https://naturam.com.br/ilhabela/wp-content/uploads/sites/8/2016/10/6-praia-de-indaiauba-ilhabela.jpg",
                    //'https://abrilviagemeturismo.files.wordpress.com/2017/01/2013_01_07_1823_bonete-ilhabela-foto-flavio-veloso-opcao-brasil-imagens-1-e1489696231850.jpeg',
                    fit: BoxFit.cover,*/
                ),
              ),
              width: yWidth,
              height: xHeight,
              bottom: 50,
            ),
            Positioned(
              width: yWidth - 9,
              height: 70,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Spacer(),
                            (favorite)
                                ? IconButton(
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Color(0xffF45C3C),
                                    ),
                                    onPressed: () => atualizaFavorito(),
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Color(0xffF45C3C),
                                    ),
                                    onPressed: () => atualizaFavorito(),
                                  ),
                            Spacer(flex: 2),
                            (bookmark)
                                ? IconButton(
                                    icon: Icon(
                                      Icons.turned_in,
                                      color: Color(0xff055161),
                                    ),
                                    onPressed: () => atualizaBookmark(),
                                  )
                                : IconButton(
                                    icon: Icon(
                                      Icons.turned_in_not,
                                      color: Color(0xff055161),
                                    ),
                                    onPressed: () => atualizaBookmark(),
                                  ),
                            Spacer(flex: 2),
                            Icon(Icons.share),
                            Spacer(flex: 3)
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
    );
  }
}

/*
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
*/
