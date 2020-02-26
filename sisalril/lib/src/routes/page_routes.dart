import 'package:flutter/material.dart';
import 'package:sisalril/src/page/consulta_pdss_page.dart';


import 'package:sisalril/src/page/home_page.dart';


// final _route ;




Map<String, WidgetBuilder> getRoutes() {
final  _route = <String, WidgetBuilder> {
        '/' : (BuildContext context) => HomePage(),
        'pdss' : (BuildContext context) => ConsultaPdssPage(),
      };

      return _route;
}

  // {
        //     "ruta" : "portada",
        //     "icon" : "home",
        //     "texto": "Portada",
        //     "color": "black"
        // },
        // {
        //     "ruta" : "pdss",
        //     "icon" : "1.png",
        //     "texto": "Consulta del PDSS",
        //     "color": "black"
        // },
        // {
        //     "ruta" : "afiliacion",
        //     "icon" : "2.png",
        //     "texto": "Consulta de Afiliación",
        //     "color": "black"
        // }
        // ,
        // {
        //     "ruta" : "traspaso",
        //     "icon" : "3.png",
        //     "texto": "Consulta Traspaso ARS",
        //     "color": "black"
        // },