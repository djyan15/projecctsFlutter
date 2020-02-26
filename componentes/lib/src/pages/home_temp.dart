import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const HomePageTemp({Key key}) : super(key: key);
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componenentes temp')),
      body: ListView(
        children: _crearItemsCorto()
        ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String op in opciones) {
      final tempWidget = ListTile(
        title: Text(op),
      );

      lista..add(tempWidget)..add(Divider(color: Colors.red));
    }
    return lista;
  }

  List<Widget> _crearItemsCorto() {

  return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Eso mismo'),
            leading: Icon(Icons.edit),
            trailing: Icon(Icons.delete) ,
            onTap: () {},
            ),
            Divider(color: Colors.red) 
        ],
      );
    }).toList();
    
  }
}
