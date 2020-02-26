import 'package:flutter/material.dart';

import 'package:componentes/src/utils/color_string_util.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';


class HomePage extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        backgroundColor: Colors.cyan,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
//         menuProvider.cargarData();
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems( data, context) {
    final List<Widget> opciones = [];



    data.forEach((opt) {
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon'], opt['color']),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: getColor(opt['color'])),
          onTap: () {
            manejadorDeRutas(context, opt['ruta']);
          });

      opciones.add(widgetTemp);
      opciones.add(Divider(
        color: Colors.cyan,
      ));
    });

    return opciones;

    // return rutas.map((item) {
    //   return Column(
    //     children: <Widget>[
    //       ListTile(
    //         title: Text(item.toString()),
    //         // subtitle: Text('Eso mismo'),
    //         leading: Icon(Icons.keyboard_arrow_left),
    //         // trailing: Icon(Icons.delete) ,
    //         onTap: () {},
    //       ),
    //       Divider(color: Colors.red)
    //     ],
    //   );
    // }).toList();
  }

  manejadorDeRutas(context, ruta) {


    Navigator.pushNamed(context, ruta);
    // final route = MaterialPageRoute(builder: (context) =>  AlertPage());
    

    // Navigator.push(
    //   context,
    //   route,
    // );
  }
}
