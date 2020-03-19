import 'package:flutter/material.dart';

class TelaPesquisa extends StatefulWidget {
  @override
  _TelaPesquisaState createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
  final _editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: TextField(
                controller: _editingController,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 16),
                  hintText: 'Digite o que deseja Pesquisar',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                    onPressed: () =>
                        print("PESQUISAR: ${_editingController.text}"),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
