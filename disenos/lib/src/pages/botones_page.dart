// import 'dart:js';

import 'package:flutter/material.dart';

import 'dart:ui';
import 'dart:math';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _titulos(),
                  _botonesRedondeados(context),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context)
        // BottomNavigationBar(
        //   items: <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Container()  ),
        //     BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outlined),  title: Container()  ),
        //     BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),  title: Container()  ),

        //   ]
        //   ),
        );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1.0),
        Color.fromRGBO(35, 37, 57, 1.0),
      ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1))),
    );
    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100,
        )
      ],
    );
    //  return
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 81, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            title: Container()),
      ]),
    );
  }

  Widget _botonesRedondeados(context) {
    return Table(
      // border: TableBorder.all(),
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General', context),
   _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus', context),

        ]),
        TableRow(children: [
           _crearBotonRedondeado(Colors.red, Icons.dashboard, 'Dashboard', context),
   _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'Buy', context),
        ]),
        TableRow(children: [
            _crearBotonRedondeado(Colors.orange, Icons.insert_drive_file, 'File', context),
   _crearBotonRedondeado(Colors.blueAccent, Icons.movie_filter, 'Entertaiment', context),
        ]),
        TableRow(children: [
            _crearBotonRedondeado(Colors.green, Icons.cloud, 'Grocery', context),
   _crearBotonRedondeado(Colors.teal, Icons.collections, 'Photos', context),
        ]),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto,BuildContext  context) {
    
    final botonRedondeado = 
     Padding(
      padding: EdgeInsets.all(15.0),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // SizedBox(height: 5.0),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(icono, color: Colors.white, size: 30.0),
                ),
                Text(texto, style: TextStyle(color: color)),
                // SizedBox(height: 5.0)
              ],
            ),
          ),
        ),
      ),
    );
    //  ClipRect (
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur(sigmaY: 5.0, sigmaX: 5.0) ,
    //     // filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10.0),
    //     child: Container(
    //       height: 180.0,
    //       margin: EdgeInsets.all(15.0),
    //       decoration: BoxDecoration(
    //           color: Color.fromRGBO(62, 66, 107, 0.70),
    //           borderRadius: BorderRadius.circular(20.0)),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: <Widget>[
    //           CircleAvatar(
    //             backgroundColor: color,
    //             radius: 35.0,
    //             child: Icon(icono, color: Colors.white),
    //           ),
    //           Text(
    //            texto,
    //             style: TextStyle(color: color),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );

      return GestureDetector(
      child: botonRedondeado,
      onTap: (){

        Navigator.pushNamed(context, 'scroll');

      },
    );
  }
}
