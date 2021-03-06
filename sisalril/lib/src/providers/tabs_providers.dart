import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;


class _TabsProvider {
  List<dynamic> opciones = [];

  _TabsProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/tabs_drawer.json');
    
    Map dataMap = json.decode(resp);

    opciones = dataMap['tabs'];

    return opciones;
  }
}

final tabsProvider = new _TabsProvider();