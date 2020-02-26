import 'package:componentes/src/utils/color_string_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
        title: Text('Cards'),
        backgroundColor: getColor('green'),
      ),
      body: ListView(padding: EdgeInsets.all(20.0), children: <Widget>[
        _cardtipo1(context),
        SizedBox(height: 20.0),
        _cardtipo2(context),
         SizedBox(height: 20.0),
             _cardtipo1(context),
        SizedBox(height: 20.0),
        _cardtipo2(context),
         SizedBox(height: 20.0),
             _cardtipo1(context),
        SizedBox(height: 20.0),
        _cardtipo2(context),
         SizedBox(height: 20.0),
             _cardtipo1(context),
        SizedBox(height: 20.0),
        _cardtipo2(context),
         SizedBox(height: 20.0),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: getColor('green'),
      ),
    );
  }

  Widget _cardtipo1(context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Esta es la descripción del titulo ya saben pero veanlo ahi bien bonito te gusta te lo vendo papa ajajaja la pampara tu no sabe'),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            FlatButton(
              child: Icon(Icons.clear),
              onPressed: () {},
            ),
            FlatButton(
              child: Icon(Icons.check),
              onPressed: () {
                showAlertDialog(context);
              },
            )
          ])
        ],
      ),
    );
  }

  Widget _cardtipo2(context) {
    final card = Container(
      child: Column(children: <Widget>[
        FadeInImage(
            placeholder: AssetImage('assets/gifduro.gif'),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover),
        // Image(
        //     image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg')
        //     ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Debemos ver como lo resolvemos'))
      ]
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26, 
              blurRadius: 10.0, 
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)
              )
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

showAlertDialog(context) {
  var alert = AlertDialog(
    title: Text('coronao coronao'),
    content: Text('tu no entiende'),
    actions: <Widget>[
      FlatButton(
        child: Text('la pampara'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );

  showDialog(
      context: context,
      builder: (context) {
        return alert;
      });
}
