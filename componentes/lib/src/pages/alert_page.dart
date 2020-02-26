import 'package:flutter/material.dart';

import 'package:componentes/src/utils/color_string_util.dart';
final _formKey = GlobalKey<FormState>();
class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false, // Hace que el icono de regresar en el appbar no aparezca
        title: Text('Alertas'),
        backgroundColor: getColor('red'),
      ),
      body: Center(
          child: RaisedButton(
        color: Colors.red,
        child: Text('Mostrar Alerta'),
        textColor: Colors.white,
        shape: StadiumBorder(),
        onPressed: () => _showAlertDialog(context),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: getColor('red'),
      ),
    );
  }
}

void _showAlertDialog(context) {
  var alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    title: Text('coronao coronao'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
    Text('tu no entiende papa tranquilo que andamos por aquí' ),
    // FlutterLogo(size: 100.0),
    Form(
    key: _formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Enter your email',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            child: Text('Submit'),
          ),
        ),
      ],
    ),
  )
      ],
   ),
    actions: <Widget>[
      FlatButton(
        child: Text('la pampara'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
       FlatButton(
        child: Text('entiende'),
        onPressed: () {
          // Navigator.of(context).pop();
        },
      ),
    ],
  );

  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return alert;
      });
}
