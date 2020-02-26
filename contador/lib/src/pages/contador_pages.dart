import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }

  // _ContadorPage createState() => _ContadorPage();

}

class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = new TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador durísimo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de clicks:',
                style: _textStyle,
              ),
              Text('$_conteo', style: _textStyle),
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }
  
Widget _crearBotones() {

return Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    SizedBox(width: 30.0,),
    FloatingActionButton(onPressed: _reset, child: Icon(Icons.restore) ),
    Expanded(child: SizedBox()),
    FloatingActionButton(onPressed: _removeClick, child: Icon(Icons.remove) ),
    SizedBox(width: 10.0,),
    FloatingActionButton(onPressed: _addClick, child: Icon(Icons.add) )
  ]
  );

// FloatingActionButton(onPressed: null, child: Icon(Icons.add_a_photo) );

}

void _addClick() {
       setState(() {
         _conteo++;

         });
}
void _removeClick() {
       setState(() {

         if (_conteo > 0) {
         _conteo--;
           
         }

         });
}
void _reset() {
       setState(() {
         _conteo = 0;
         });
}
}




