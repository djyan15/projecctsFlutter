import 'package:componentes/src/utils/color_string_util.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 200;
  bool _bloquearSlider = false;
  // bool _s = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
        backgroundColor: getColor('orange'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _checkBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen())
            ],
          )),
    );
  }

  _crearSlider() {
    return Slider(
        value: _valueSlider,
        label: 'Tamaño de la imagen',
        activeColor: Colors.orange,
        inactiveColor: Colors.red,
        min: 10,
        max: 220,
        onChanged: (_bloquearSlider)
            ? null
            : (value) {
                setState(() {
                  _valueSlider = value;
                });
              });
  }

  Widget _crearImagen() {
//    Image(
//      image: NetworkImage(''),
//      width: _valueSlider,
// fit: BoxFit.contain,
//      );

    return FadeInImage(
        placeholder: AssetImage('assets/gifduro.gif'),
        image: NetworkImage(
            'https://www.freepnglogos.com/uploads/deadpool-png/the-deadpool-imax-invitational-deviantart-10.png'),
        fadeInDuration: Duration(milliseconds: 200),
        width: _valueSlider,
        fit: BoxFit.contain);
  }

  Widget _checkBox() {
    return CheckboxListTile(
        value: _bloquearSlider,
        activeColor: Colors.orange,
        title: Text('Deshabilitar el Slider'),
        onChanged: (checked) {
          setState(() {
            _bloquearSlider = checked;

            // if (checked) {
            //   _valueSlider = 10.0;
            // } else {
            //   _valueSlider = 270.0;
            // }
          });
        });

    // return Checkbox(
    //     value: _checkboxchecked,
    //     onChanged: (checked) {

    //       setState(() {
    //         _checkboxchecked = checked;

    //       // if (checked) {
    //       //   _valueSlider = 10.0;
    //       // } else {
    //       //   _valueSlider = 270.0;
    //       // }

    //         });
    //     });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Deshabilitar el Slider'),
      value: _bloquearSlider,
      activeColor: Colors.orange,
      // inactiveThumbColor: Colors.red,
      // inactiveTrackColor: Colors.purple,
      onChanged: (value) {
        setState(() {
          _bloquearSlider = value;
        });
      },
    );
  }
}
