
import 'package:http/http.dart' as http;

import 'dart:convert';

class   PdssProvider {

String _url = ' https://data.ct.gov/resource/y6p2-px98.json?category=Fruit&item=Peaches';



 Future<List<dynamic>> getPdss() async {
  
  final resp = await http.get(_url);
  

  final decodeData = json.decode(resp.body);


  print(decodeData.toString());
  
return [];

}

}