import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart' as launcher;

class DrawerWidget extends StatelessWidget {
  // const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.person, color: Colors.white),
                Text(
                  'SISALRIL VIRTUAL',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            accountEmail: Row(
              children: <Widget>[
                Text('Bladimir Rosario Buten'),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.only(left: 110, top: 0),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue[900],
                image: DecorationImage(
                    image: AssetImage("assets/drawer_background.jpg"),
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.blue[900], BlendMode.lighten))),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Align(
                child: Text('Portada'),
                alignment: Alignment(-1.2, 0),
              ),
              leading: Icon(Icons.home, color: Colors.black),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
          InkWell(
            onTap: () {
             
            },
            child: ListTile(
              title: Align(
                child: Text('Consulta del PDSS'),
                alignment: Alignment(-1.3, 0),
              ),
              leading: Image(
                image: AssetImage('assets/1.png'),
                height: 20,
              ),
              onTap: () {
                 Navigator.pushNamed(context, 'pdss');
              },
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Align(
                child: Text('Consulta de Afiliación'),
                alignment: Alignment(-1.4, 0),
              ),
              leading: Image(
                image: AssetImage('assets/2.png'),
                height: 20,
              ),
              onTap: () {
                // print('dataMap');
              },
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Align(
                child: Text('Consulta Traspaso ARS'),
                alignment: Alignment(-1.5, 0),
              ),
              leading: Image(
                image: AssetImage('assets/3.png'),
                height: 20,
              ),
              onTap: () {
                // print('dataMap');
              },
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Align(
                child: Text('Mis Casos'),
                alignment: Alignment(-1.2, 0),
              ),
              leading: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/4.png'),
                    height: 20,
                    // color: Colors.green[400],
                    // height: 75.0,
                    // width: 75.0
                  ),
                  Positioned(
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
                          size: 5,
                        )),
                  )
                ],
              ),
              onTap: () {
                // print('dataMap');
              },
            ),
          ),
          Divider(
            color: Colors.green,
          ),
          Padding(
              padding: EdgeInsets.only(left: 17),
              child: Text(
                'Enlaces',
                style: TextStyle(color: Colors.green),
                textAlign: TextAlign.start,
              )),
          _crearEnlances(),
          Divider(
            color: Colors.green,
          ),
          _crearRedesSociales(),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            onTap: () {},
            title: Align(
              child: Text('Acerca de la aplicación'),
              alignment: Alignment(-1.2, 0),
            ),
            leading: Icon(Icons.info_outline),
          ),
        ],
      ),
    );
  }

  Widget _crearEnlances() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        ListTile(
          onTap: () {
            _launchInBrowser('https://www.sisalril.gov.do/');
          },
          title: Align(
            child: Text('Portal web SISALRIL'),
            alignment: Alignment(-1.2, 0),
          ),
          leading: Icon(Icons.link),
        ),
        ListTile(
          onTap: () {
            _launchInBrowser('https://virtual.sisalril.gob.do/');
          },
          title: Align(
            child: Text('Oficina Virtual'),
            alignment: Alignment(-1.1, 0),
          ),
          leading: Icon(Icons.link),
        )
      ],
    );
  }

  Future<void> _launchInBrowser(String url) async {
    print(url);
    if (await launcher.canLaunch(url)) {
      await launcher.launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _crearRedesSociales() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        ListTile(
          onTap: () {
            _launchInBrowser('https://www.facebook.com/SISALRILRD/');
          },
          title: Align(
            child: Text('Facebook'),
            alignment: Alignment(-1.2, 0),
          ),
          leading: Image(
            image: AssetImage('assets/facebook.png'),
            height: 20,
          ),
        ),
        ListTile(
          onTap: () {
            _launchInBrowser('https://www.instagram.com/sisalrilrd/?hl=es');
          },
          title: Align(
            child: Text('Instagram'),
            alignment: Alignment(-1.2, 0),
          ),
          leading: Image(
            image: AssetImage('assets/instagram.png'),
            height: 20,
          ),
        ),
        ListTile(
          onTap: () {
            _launchInBrowser(
                'https://www.youtube.com/channel/UCxt_URCDHD_nXFp0emVORYA');
          },
          title: Align(
            child: Text('Youtube'),
            alignment: Alignment(-1.2, 0),
          ),
          leading: Image(
            image: AssetImage('assets/youtube.png'),
            height: 18,
          ),
        )
      ],
    );
  }
}
