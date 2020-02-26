import 'package:flutter/material.dart';

class pageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('404'),
          backgroundColor: Colors.grey,
        ),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Icon(Icons.not_interested, size: 50, color: Colors.grey,),
            Text('Página no encontrada' , style: TextStyle(fontSize: 40, color: Colors.grey ),  )
            ],
        ),
        
        // Center(
        //    child:  
        //   ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.keyboard_arrow_left), onPressed: () { Navigator.pop(context); } ,backgroundColor: Colors.grey,),

        );
  }
}
