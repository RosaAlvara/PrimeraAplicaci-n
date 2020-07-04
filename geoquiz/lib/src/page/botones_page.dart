import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GeoQuiz'), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white), onPressed: null),
      ]),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 250.0),
            _titulo(),
            SizedBox(height: 50.0),
            _botonRedondo()
          ],
        ),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            title:
                Text('¿Es Guayaquil la Ciudad del Ecuador con más habitantes?'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('VERDADERO'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('FALSO'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _botonRedondo() {
    final card = Card(
      child: Column(
        children: <Widget>[
          Container(padding: EdgeInsets.all(10.0), child: Text('CORRECTO!!!'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.blue,
                blurRadius: 3.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, -10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: card,
      ),
    );
  }
}
