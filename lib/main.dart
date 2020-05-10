import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:oratorioapp/telaPesquisa.dart';
import 'muralDeFotos.dart';
import 'telaChamada.dart';
import 'TelasTestes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Oratorio', home: TelaBase());
  }
}

class TelaBase extends StatefulWidget {
  @override
  _TelaBaseState createState() => _TelaBaseState();
}

class _TelaBaseState extends State<TelaBase> {
  int iTela = 0;
  final List<String> titulos = [
    "HOMEBREAKER",
    "MURAL",
    "CHAMADA",
    "PESQUISA",
    "CONFIGURACOES"
  ];

  final Tela01 _tela01 = new Tela01();
  final MuralDeFotos _tela02 = new MuralDeFotos();
  final TelaChamada _tela03 = new TelaChamada();
  final TelaPesquisa _tela04 = new TelaPesquisa();
  final Tela05 _tela05 = new Tela05();

  Widget _pageChooser(page) {
    switch (page) {
      case 0:
        return _tela01;
        break;
      case 1:
        return _tela02;
        break;
      case 2:
        return _tela03;
        break;
      case 3:
        return _tela04;
        break;
      case 4:
        return _tela05;
        break;
      default:
        return Container(
          child: Center(child: Text("Nao encontrado Tela..")),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titulos[iTela],
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
          onPressed: () {
            setState(() {
              iTela = (iTela - 1) % titulos.length;
            });
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_right, color: Colors.black),
            onPressed: () {
              setState(() {
                iTela = (iTela + 1) % titulos.length;
              });
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: iTela,
        animationDuration: Duration(milliseconds: 100),
        height: 50,
        color: Color(0xffECE7E3),
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xffECE7E3),
        items: <Widget>[
          Icon(Icons.assessment, color: Colors.black54),
          Icon(Icons.view_quilt, color: Colors.black54),
          Icon(Icons.class_, color: Colors.black54),
          Icon(Icons.search, color: Colors.black54),
          Icon(Icons.all_inclusive, color: Colors.black54)
        ],
        onTap: (index) {
          setState(() {
            iTela = index;
          });
        },
      ),
      body: _pageChooser(iTela),
    );
  }
}
