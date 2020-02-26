import 'package:flutter/material.dart';


import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sisalril/src/page/home_page.dart';

import 'package:sisalril/src/routes/page_routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     localizationsDelegates: GlobalMaterialLocalizations.delegates,
  supportedLocales: [
    const Locale('en', 'US'), // American English
    const Locale('es', 'ES'), 
    ],
       title: 'Sisalril Virtual',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (setting){
        return MaterialPageRoute(builder: (context) => HomePage()) ;  
      },
    );
  }
}