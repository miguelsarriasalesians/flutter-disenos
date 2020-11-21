import 'package:disenos/src/widgets/slider.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Opacity(
              opacity: 0,
              child: Icon(
                Icons.arrow_right,
                size: 40,
              )),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'scroll');
              },
              child: Icon(
                Icons.arrow_right,
                size: 40,
              ),
            )
          ],
          backgroundColor: Colors.blue[900],
          elevation: 10,
          title: Center(
              child: Text(
            'Press to navigate',
            style: TextStyle(fontSize: 30),
          )),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Slideshow(
                  colorPrimario: Colors.blue,
                  colorSecundario: Colors.blue[100],
                  bulletPrimario: 20,
                  slides: [
                    Icon(
                      Icons.local_fire_department_sharp,
                      color: Colors.blue,
                      size: 140,
                    ),
                    Icon(
                      Icons.accessibility,
                      color: Colors.blue,
                      size: 140,
                    ),
                    Icon(
                      Icons.image,
                      color: Colors.blue,
                      size: 140,
                    ),
                    Icon(
                      Icons.lightbulb_outlined,
                      color: Colors.blue,
                      size: 140,
                    ),
                    Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                      size: 140,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Slideshow(
                  colorPrimario: Colors.red,
                  colorSecundario: Colors.red[100],
                  bulletPrimario: 20,
                  puntosArriba: true,
                  slides: [
                    Icon(
                      Icons.local_fire_department_sharp,
                      color: Colors.red,
                      size: 140,
                    ),
                    Icon(
                      Icons.accessibility,
                      color: Colors.red,
                      size: 140,
                    ),
                    Icon(
                      Icons.image,
                      color: Colors.red,
                      size: 140,
                    ),
                    Icon(
                      Icons.lightbulb_outlined,
                      color: Colors.red,
                      size: 140,
                    ),
                    Icon(
                      Icons.home_outlined,
                      color: Colors.red,
                      size: 140,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con un puente', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Un lago en Alemania', style: estiloSubTitulo),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Sit minim aliqua minim laborum duis occaecat consectetur aliquip id ad deserunt. Adipisicing qui reprehenderit eu eu qui occaecat exercitation et aliqua laboris dolor. Nisi duis consectetur veniam id nulla deserunt aliqua velit ullamco. Deserunt exercitation adipisicing nostrud amet eu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
