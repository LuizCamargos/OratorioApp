import 'package:flutter/material.dart';
import 'muralDeFotos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oratorio',
      home: Scaffold(
        body: TelaChamada(),
      ),
    );
  }
}

class TelaChamada extends StatelessWidget {
  List nomes = [
    "Nome Testes 01",
    "Nome Testes 02",
    "Nome Testes 03",
    "Nome Testes 04"
  ];
  List fotos = [
    "https://i1.wp.com/gamelogia.com.br/wp-content/uploads/2016/11/gamer.jpg",
    "https://assets-br.wemystic.com.br/20191113005712/diacriancas-850x640.jpg",
    "https://s1.1zoom.me/big0/278/Skulls_Gothic_Fantasy_Dress_554441_1280x917.jpg",
    "https://resultadosdigitais.com.br/blog/files/2015/08/istock.jpg"
  ];
  List descricoes = [
    "Atrapalhou o jogo",
    "...",
    "...",
    "...",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext ctxt, int index) => CardCriancaChamada(
          nome: nomes[index], foto: fotos[index], descricao: descricoes[index]),
      itemCount: nomes.length,
    );
  }
}

class CardCriancaChamada extends StatefulWidget {
  String nome, foto, descricao;

  CardCriancaChamada({Key key, @required this.nome, this.foto, this.descricao})
      : super(key: key);
  @override
  _CardCriancaChamadaState createState() => _CardCriancaChamadaState();
}

class _CardCriancaChamadaState extends State<CardCriancaChamada> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(
          this.widget.foto,
          fit: BoxFit.fitHeight,
          height: 50,
          width: 50,
        ),
      ),
      title: Text(this.widget.nome),
      subtitle: Text(this.widget.descricao),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/presente.png',
              height: 15,
            ),
            onPressed: () => print("Presente"),
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/ausente.png',
              height: 15,
            ),
            onPressed: () => print("Ausente"),
          ),
        ],
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CardFoto(),
        ),
      ),
    );
  }
}
