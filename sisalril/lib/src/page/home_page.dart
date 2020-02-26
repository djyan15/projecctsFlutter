import 'package:flutter/material.dart';

import 'package:sisalril/src/widgets/drawer_widget.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
// import 'package:url_launcher/url_launcher.dart';
// import 'package:sisalril/src/providers/tabs_providers.dart';

// import 'package:sisalril/src/providers/tabs_providers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _getListView(),
      drawer: DrawerWidget(),
    );
    // \\body: _crearBuilder(),
    //   drawer: _crearDrawer()
    // );
  }

  Widget _getListView() {
    return Builder(
      builder: (BuildContext context) {
        return ListView(
          children: <Widget>[
            // SizedBox(height: 25.0),
            _logonombreSisalril(context),
            _getServicesSisalril(context)
          ],
        );
      },
    );
  }

  Widget _getServicesSisalril(context) {
    return Container(
      height: MediaQuery.of(context).size.height - 185.0,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(40.0),
        //     topRight: Radius.circular(40.0)),
      ),
      child: ListView(
        primary: false,
        padding: EdgeInsets.only(left: 25.0, right: 20.0),
        children: <Widget>[
          SizedBox(height: 30.0),
          Center(
              child: Column(
            children: <Widget>[
              Text('Bienvenido Bladimir Rosario Buten',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 17.0)),
              SizedBox(height: 20.0),
              Text('¿Qué desea realizar el dia de hoy?',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0)),
            ],
          )),
          Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Container(
                  height: MediaQuery.of(context).size.height - 300.0,
                  child: ListView(children: [
                    // Row
                    Row(
                      children: <Widget>[
                        _buildServiceItem(
                            'assets/1.png', 'Consulta del PDSS', false, context, 'pdss'),

                        Container(
                            width: 15.42,
                            height: 150,
                            child: VerticalDivider(color: Colors.grey)),

                        // s SizedBox(width: 4.0),
                        _buildServiceItem(
                            'assets/2.png', 'Consulta de Afiliación', false, context, 'afiliacion'),
                      ],
                    ),

                    SizedBox(height: 20.0),
                    Divider(color: Colors.grey),
                    SizedBox(height: 20.0),

                    Row(
                      children: <Widget>[
                        _buildServiceItem(
                            'assets/3.png', 'Consulta Traspaso', false, context, 'traspaso'),
                        Container(
                            width: 15.42,
                            height: 150,
                            child: VerticalDivider(color: Colors.grey)),
                        SizedBox(width: 40.0),
                        _buildServiceItem('assets/4.png', '  Mis Casos', true, context, 'casos')
                      ],
                    ),
                  ]))),
        ],
      ),
    );
  }

// Contiene el widget para cargar la parte superior de la pantalla
  Widget _logonombreSisalril(context) {
    return Container(
        height: 190.0,
        decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(355, 50.0),
              bottomRight: Radius.elliptical(355, 50.0)),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30.0,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      }),
                ],
              ),
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 70.0,
            ),
            SizedBox(width: 10.0),
            Text('SISALRIL VIRTUAL',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0))
          ],
        ));
    // return
  }



  
// }

Future<void> _launchInBrowser(String url) async {
  print(url);
  if  (await launcher.canLaunch(url)) {
    await launcher.launch(url);
  } else  {
    throw 'Could not launch $url';
  }
}
// Widget _listaDrawer() {
// // tabsProvider.cargarData().then((opciones) {
// //   print(opciones);
// // });

// // return Divider();
//   return FutureBuilder(
//     future: tabsProvider.cargarData(),
//     initialData: [],
//     builder: (context, snapshot) {
//       return   InkWell(
//             onTap: () {},
//             child: ListTile(
//               title: Text(snapshot.data[0]['texto']),
//               leading:  _notificationBadge('assets/${snapshot.data[0]['icon']}', false),
//               onTap: () {
//                 // print('dataMap');
//               },
//             ),
//           );
//         // children:,
//         // ListView(
//       // );
//     },
//   );
// }
  manejadorDeRutas(context, ruta) {


    Navigator.pushNamed(context, ruta);
    // final route = MaterialPageRoute(builder: (context) =>  AlertPage());
    

    // Navigator.push(
    //   context,
    //   route,
    // );
  }
Widget _createDrawerTabs(data) {
  // final List<Widget> datos = new List<Widget>();

  final List<Widget> opciones = [];

  final widgetTemp = InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(data[0]['text']),
        leading: Icon(Icons.home, color: Colors.black),
        onTap: () {},
      ));

  opciones.add(widgetTemp);
  data.forEach((opt) {
    final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.home, color: Colors.black),
        onTap: () {});

    opciones.add(widgetTemp);
    opciones.add(Divider(
      color: Colors.cyan,
    ));

    opciones.add(widgetTemp);
  });

  return widgetTemp;
}

Widget _buildServiceItem(String imgPath, String serviceName, bool recieved, context, ruta) {
  return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
          onTap: () {
            manejadorDeRutas(context, ruta);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Column(children: [
                Hero(
                    tag: imgPath, child: _notificationBadge(imgPath, recieved)),
                SizedBox(
                  width: 30.0,
                  height: 20.0,
                ),
                Text(serviceName,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      color: Colors.green[400],
                      fontWeight: FontWeight.bold,
                    )),
              ])),
            ],
          )));
}

Widget _notificationBadge(imgPath, recievedNotification) {
  return Stack(
    children: <Widget>[
      Image(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
          color: Colors.green[400],
          height: 75.0,
          width: 75.0),
      recievedNotification
          ? Positioned(
              right: 0,
              top: 0,
              child: new Container(
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 10,
                    minHeight: 10,
                  ),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 18,
                  )),
            )
          : new Container()
    ],
  );
}
// Widget _getListView() {
//     return Builder(
//       builder: (BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.only(top: 15.0, left: 10.0),
//           child: Row(
//             children: <Widget>[
//               IconButton(
//                    icon: Icon(Icons.menu),
//                    color: Colors.white,
//                     onPressed: () {
//                       Scaffold.of(context).openDrawer();
//                     }),
//               Container(
//                   width: 125.0,
//                   child: Row(
//                     children: <Widget>[
//                       IconButton(
//                           icon: Icon(Icons.filter_list),
//                           color: Colors.white,
//                           onPressed: () {}),
//                       IconButton(
//                           icon: Icon(Icons.menu),
//                           color: Colors.white,
//                           onPressed: () {}),
//                     ],
//                   ))
//             ],
//           ),
//         )
//       ],
//     );
//       },
//     );
//   }
}