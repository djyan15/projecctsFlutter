import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _textStyle = new TextStyle(fontSize: 25.0);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador durísimo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de clicks:',
                style: _textStyle,
              ),
              Text('$conteo', style: _textStyle),
            ],
          ),
        ),
        floatingActionButton: _crearBotones()
        );
  }
}

Widget _crearBotones() {
  return FloatingActionButton(child: Icon(Icons.add_a_photo) , onPressed:  () {} );
}
// Text('Número de taps:') FloatingActionButton(
// onPressed: () {

// },

// child: Icon(Icons.add),
// ),
