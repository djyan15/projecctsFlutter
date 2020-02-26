import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  final pdss = [
    'Spiderman',
    'Capitan America',
    'Batman',
    'Dr Strange',
    'Capitana Marvel',
    'Superman',
    'IronMan'
  ];

  final recientes = ['Spiderman', 'Capitan America'];

  @override
  List<Widget> buildActions(BuildContext context) {
// Las acciones de nuestro AppBar

    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icon a la izquierda del appbar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          //  Navigator.pop(context);
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // El builder los resultados que se muestran
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // las sugerencias a las busquedas hechas

    final listaSugerida = (query.isEmpty)
        ? recientes
        : pdss
            .where((p) => p.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return ListView.builder(
        itemCount: listaSugerida.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Image(
              image: AssetImage('assets/iconDatapdss.png'),
              fit: BoxFit.cover,
              color: Colors.green[400],
              height: 30,
            ),
            title: Text(listaSugerida[i]),
            onTap:  () {},
          );
        });
  }
}
