import 'package:flutter/material.dart';

import 'package:componentes/src/utils/color_string_util.dart';
final _icons = <String, IconData> {

'add_alert' : Icons.add_alert,
'accessibility' : Icons.accessible,
'folder_open' : Icons.folder_open,
'donut_large':  Icons.donut_large,
'input':  Icons.input,
'tune':  Icons.tune,
'list':  Icons.list,
};

Icon getIcon(String nombreIcono, String nombreColor) {

  return  Icon(_icons[nombreIcono], color: getColor(nombreColor));
}
