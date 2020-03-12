import 'package:flutter/material.dart';

class CardCriancaChamada extends StatefulWidget {
  final String nome, foto, descricao;

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
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes
                  : null,
            );
          },
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
      onTap: () => print("CARD FOTO"),
      /*onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CardFoto(),
        ),
      ),*/
    );
  }
}
