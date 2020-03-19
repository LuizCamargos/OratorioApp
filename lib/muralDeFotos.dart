import 'package:flutter/material.dart';
import 'Componentes/cardMural.dart';

class MuralDeFotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext ctxt, int index) => CardMural(),
      itemCount: 3,
    );
  }
}
