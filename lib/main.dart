import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
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

  final MuralDeFotos _tela01 = new MuralDeFotos();
  final Tela02 _tela02 = new Tela02();
  final TelaChamada _tela03 = new TelaChamada();
  final Tela04 _tela04 = new Tela04();
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
        color: Colors.indigoAccent,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.indigoAccent,
        items: <Widget>[
          Icon(Icons.ac_unit, color: Colors.white),
          Icon(Icons.access_alarm, color: Colors.white),
          Icon(Icons.accessibility, color: Colors.white),
          Icon(Icons.airplanemode_active, color: Colors.white),
          Icon(Icons.arrow_right, color: Colors.white)
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
