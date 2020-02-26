import 'package:flutter/material.dart';

import 'package:componentes/src/utils/color_string_util.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: Colors.amber,
            ),
          )
        ],
        backgroundColor: getColor('blue'),
      ),
      body: Center(
        child : FadeInImage(
            placeholder: AssetImage('assets/gifduro.gif'),
            image: NetworkImage(
                'https://www.unir.net/wp-content/uploads/2018/11/st-lee.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover),
        
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: getColor('blue'),
      ),
    );
  }
}
