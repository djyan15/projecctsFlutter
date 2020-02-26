import 'dart:math';

import 'package:componentes/src/utils/color_string_util.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.red;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        backgroundColor: getColor('purple'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          _cambiarContainer();
        },
        backgroundColor: getColor('purple'),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
        width: _width,
        height: _height,
        decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
      )),
    );
  }

  void _cambiarContainer() {
    final rng = new Random();
    setState(() {
      _width = rng.nextInt(300).toDouble();
      _height = rng.nextInt(300).toDouble();
      _borderRadius = BorderRadius.circular(rng.nextInt(100).toDouble());
      _color = Color.fromRGBO(
          rng.nextInt(255), rng.nextInt(255), rng.nextInt(2550), 1);
      // _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }
}
