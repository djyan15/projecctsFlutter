// import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/routes/page_routes.dart';
import 'package:componentes/src/pages/404_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
  supportedLocales: [
    const Locale('en', 'US'), // American English
    const Locale('es', 'ES'), // España
    // ...
  ],
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (setting){
        return MaterialPageRoute(builder: (context) => pageNotFound()) ;  
      },

    );
  }
}