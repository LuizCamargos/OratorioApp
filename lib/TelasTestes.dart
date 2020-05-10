import 'package:flutter/material.dart';
import 'package:oratorioapp/muralDeFotos.dart';
import 'Componentes/cardMural.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
];

List<Widget> _tiles = <Widget>[
  CardMural(),
  CardMural(),
  CardMural(),
  CardMural(),
  CardMural(),
  CardMural(),
  CardMural(),
  CardMural(),
  CardMural(),
  CardMural(),
];

class RetornoMural extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardMural();
  }
}

class Tela01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 2,
      staggeredTiles: _staggeredTiles,
      children: _tiles,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      padding: const EdgeInsets.all(4.0),
    );
  }
}

class Tela02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("02"));
  }
}

class Tela03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("03"));
  }
}

class Tela04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("04"));
  }
}

class Tela05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("05"));
  }
}
