import 'package:flutter/material.dart';

 import 'package:barcode_scan/barcode_scan.dart'; 

import 'package:qrreaderapp/src/pages/direcciones_page.dart';
import 'package:qrreaderapp/src/pages/mapas_page.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[
          IconButton (icon: Icon(Icons.delete_forever), onPressed: () {},)
        ],
      ),
      body: _callPage(currentPage),
      bottomNavigationBar: _crearBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _scanQR(), 
        child: Icon(Icons.filter_center_focus),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

 Widget  _crearBottomNavigationBar() {
            return BottomNavigationBar(
              currentIndex: currentPage,
              onTap: (index) {
                setState(() {
               currentPage = index;
                  // _callPage(index);
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.map), title:  Text('Mapas')),
                BottomNavigationBarItem(icon: Icon(Icons.brightness_5), title:  Text('Direcciones')),
              ]
              );

 }

  Widget _callPage(int paginaActual) {


   
switch (paginaActual) {
  case  0: return MapasPage();
  case  1: return DireccionesPages();
  default:
return MapasPage();
  break;
}

  }

  _scanQR()  {
    // https://flutter.dev/docs 
    // geo:40.737255860802501, -73.89333143671877


     String  futureString = '';
     

//       try{
//           futureString =  await BarcodeScanner.scan();
//       }  catch (e) {
//         futureString = e.toString();
//       }

// print('Future String $futureString');

// if (futureString !=null) {
//   print('Tenmos Información');
  
// }

  }
}
