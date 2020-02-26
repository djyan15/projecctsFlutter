import 'package:flutter/material.dart';

import 'package:componentes/src/utils/color_string_util.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  List<String> personas = new List<String>();

  String _nombre = "";
  String _email = "";
  // String _password = "N/A";
  String _fecha = "";
  String _opcionSelected = 'Volar';
  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFieldDate = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: getColor('grey'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      maxLength: 50,
      decoration: InputDecoration(
          counter: Text(' ${_nombre.length}/50'),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon(
            Icons.info,
            color: getColor('grey'),
          ),
          icon: Icon(Icons.account_circle, color: getColor('grey'))),
      onChanged: (valor) {
        setState(() {
          // personas.add('Bernarda');
          // personas.add('Juan');
          // personas.add('Pedro');
          _nombre = valor;
        });
      },
      onSubmitted: (valor) {
        // personas.add(valor);
        print(valor);
      },
    );
  }

  Widget _crearPersona() {
    // setState(() {asd

    return ListTile(
      title: Text(
        'Nombre es : $_nombre',
      ),
      subtitle: Text(
        'El correo es : $_email',
      ),
      trailing: Text(_opcionSelected),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      maxLength: 50,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Email de la persona',
          labelText: 'Email',
          suffixIcon: Icon(
            Icons.info,
            color: getColor('grey'),
          ),
          icon: Icon(Icons.email, color: getColor('grey'))),
      onChanged: (valor) {
        setState(() {
          // personas.add('Bernarda');
          // personas.add('Juan');
          // personas.add('Pedro');
          _email = valor;
        });
      },
      onSubmitted: (valor) {
        // personas.add(valor);
        print(valor);
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      maxLength: 50,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Password de la persona',
          labelText: 'Password',
          suffixIcon: Icon(
            Icons.info,
            color: getColor('grey'),
          ),
          icon: Icon(Icons.lock, color: getColor('grey'))),
      onChanged: (valor) {
        setState(() {
          // personas.add('Bernarda');
          // personas.add('Juan');
          // personas.add('Pedro');
          // _password = valor;
        });
      },
    );
  }

  Widget _crearFecha(context) {
    return TextField(
      // enableInteractiveSelection: false,
      maxLength: 50,
      controller: _inputFieldDate,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Fecha de Nacimiento',
          labelText: 'Fecha de Nacimiento',
          suffixIcon: Icon(
            Icons.info,
            color: getColor('grey'),
          ),
          icon: Icon(Icons.calendar_today, color: getColor('grey'))),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown() {
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded(
                  child: DropdownButton(
              items: getOpcionesDropDown(),
              value: _opcionSelected,
              onChanged: (opt) {
                setState(() {
                  _opcionSelected = opt;
                });
              }),
        )
      ],
    );
  }

  _selectDate(context) async {
    DateTime pick = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1990),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES '));

    if (pick != null) {
      setState(() {
        _fecha = '${pick.day}-${pick.month}-${pick.year}';
        _inputFieldDate.text = _fecha;
        // new DateFormat('dd-MM-yyyy')
      });
    }
  }
}
