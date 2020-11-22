import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pagina1(), _pagina2(context)],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/lava.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('You missed', style: estiloTexto),
          Text('A SEMICOLON', style: estiloTexto),
          Expanded(child: Container(height: 30,)),
          Bounce(
              infinite: true,
              child: Icon(Icons.keyboard_arrow_down,
                  size: 150.0, color: Colors.black54))
        ],
      ),
    );
  }

  Widget _pagina2(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.3),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Colors.yellow,
            Colors.orange,
            Colors.red,
            Colors.red[900]
          ])),
      child: Center(
        child: ElasticIn(
          duration: Duration(milliseconds: 2000),
          child: RaisedButton(
            elevation: 10,
            shape: StadiumBorder(),
            color: Colors.red[900],
            textColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child:
                  Text('Welcome to Debug Hell', style: TextStyle(fontSize: 25.0)),
            ),
            onPressed: () => Navigator.pushNamed(context, 'botones'),
          ),
        ),
      ),
    );
  }
}
