import 'package:flutter/material.dart';
import 'package:qrreaderapp/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRReader',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home' :(BuildContext context) => HomePage()
      },
      theme: ThemeData(
        // primaryColor: Color.fromRGBO(43, 29, 239, 0)
          primaryColor: Color.lerp(Colors.lightBlue, Colors.black,  0.2)
      ) ,
    );
  }
}