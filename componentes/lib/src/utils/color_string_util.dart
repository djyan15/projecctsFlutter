import 'package:flutter/material.dart';

final _colors = <String, MaterialColor > {
'red' : Colors.red,
'blue' : Colors.blue,
'green' : Colors.green,
'purple' : Colors.purple,
'grey' : Colors.grey,
'orange' : Colors.orange,
'pink' : Colors.pink
};

MaterialColor getColor(String nombreColor) {

  return  _colors[nombreColor];
}
