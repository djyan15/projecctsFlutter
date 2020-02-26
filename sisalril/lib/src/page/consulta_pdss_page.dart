import 'package:flutter/material.dart';
import 'package:sisalril/src/providers/pdss_provider.dart';

import 'package:sisalril/src/search/search_delegate.dart';
import 'package:sisalril/src/widgets/drawer_widget.dart';

class ConsultaPdssPage extends StatefulWidget {
  // ConsultaPdssPage({Key key}) : super(key: key);

  @override
  _ConsultaPdssPageState createState() => _ConsultaPdssPageState();
}

class _ConsultaPdssPageState extends State<ConsultaPdssPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Consulta PDSS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch() );
            },
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          _getFiltroData(),
          SizedBox(
            width: 30.0,
            height: 20.0,
          ),
          _getListConsultaPdss(),
          SizedBox(
            width: 30.0,
            height: 20.0,
          ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
          // _getListConsultaPdss(),
          // SizedBox(
          //   width: 30.0,
          //   height: 20.0,
          // ),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }

  Widget _getFiltroData() {
    return Container(
      height: 50.0,
      width: 415.0,
      decoration: BoxDecoration(
        color: Colors.grey[350],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20),
        child: Text(
          '6 Resultados',
          style: TextStyle(color: Colors.green),
        ),
      ),
    );
  }

  Widget _getListConsultaPdss() {


    final pdssProvider = new PdssProvider();
    pdssProvider.getPdss();
    
    return ExpansionTile(
      leading: Image(
        image: AssetImage('assets/iconDatapdss.png'),
        fit: BoxFit.cover,
        color: Colors.green[400],
      ),
      title: Text(
        'XEROMAMOGRAFIA O MAMOGRAFIA, BILATERAL',
        style: TextStyle(
            color: Colors.green, fontSize: 13, fontWeight: FontWeight.bold),
      ),
      children: <Widget>[
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Código:',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
            VerticalDivider(
              width: 5.0,
            ),
            Text('724',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Tipo Cobertura:',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
            VerticalDivider(
              width: 5.0,
            ),
            Text('Mamografias',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nivel de Atención:',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
            VerticalDivider(
              width: 5.0,
            ),
            Text('2',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Subgrupo:',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
            VerticalDivider(
              width: 5.0,
            ),
            Text('1.10 | Prevención cáncer cérvico-uterino',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cobertura:',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
            VerticalDivider(
              width: 5.0,
            ),
            Text('Ilimitada',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                )),
          ],
        ),
        SizedBox(height: 20.0),
        RaisedButton(
          onPressed: () {},
          child: Text('Consultar', style: TextStyle(color: Colors.white)),
          color: Colors.green[700],
        ),
        SizedBox(height: 20.0),
      ],
    );

    // return        ListTile(
    //      title: Text(
    //       'XEROMAMOGRAFIA O MAMOGRAFIA, BILATERAL',
    //       style: TextStyle(color: Colors.green, fontSize: 13, fontWeight: FontWeight.bold),
    //    ),
    //    leading:  Image(
    //       image: AssetImage('assets/iconDatapdss.png'),
    //       fit: BoxFit.cover,
    //       color: Colors.green[400],
    //      ),

    //    );
  }
}
