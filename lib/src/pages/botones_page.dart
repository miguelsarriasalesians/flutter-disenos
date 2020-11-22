import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(),
            Column(
              children: <Widget>[_titulos(), _botonesRedondeados()],
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.1),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Colors.yellow,
            Colors.orange,
            Colors.red,
          ])),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ])),
        ));

    return Stack(
      children: <Widget>[
        gradiente,
        // Positioned(
        //   top: -100.0,
        //   child: cajaRosa
        // )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SlideInDown(
              duration: Duration(milliseconds: 1500),
              child: Center(
                child: Text('Classify transaction',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10.0),
            ZoomIn(
              duration: Duration(milliseconds: 1500),
              child: Center(child: Text(
                    'Classify this transaction into a particular category',
                    style: TextStyle(color: Colors.black, fontSize: 18.0,), textAlign: TextAlign.center,),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return SlideInUp(

      child: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.red[900],
            primaryColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Colors.black54))),
        child: BottomNavigationBar(
          elevation: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
            BottomNavigationBarItem(
                icon: Icon(Icons.bubble_chart, size: 30.0), title: Container()),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle, size: 30.0),
                title: Container()),
          ],
        ),
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Column(
      children: [
        FadeInLeftBig(
          duration: Duration(milliseconds: 1500),
          child: Table(
            children: [
              TableRow(children: [
                _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
                _crearBotonRedondeado(
                    Colors.purpleAccent, Icons.directions_bus, 'Bus'),
              ]),
            ],
          ),
        ),
        FadeInRightBig(
          duration: Duration(milliseconds: 1500),
          child: Table(
            children: [
              TableRow(children: [
                _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'Buy'),
                _crearBotonRedondeado(Colors.orange, Icons.insert_drive_file, 'File'),
              ]),
            ],
          ),
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 140.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color: Colors.white, size: 30.0),
              ),
              Text(texto, style: TextStyle(color: color, fontSize: 20)),
              SizedBox(height: 5.0)
            ],
          ),
        ),
      ),
    );
  }
}
