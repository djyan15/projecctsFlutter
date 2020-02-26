import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
                 children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
        ),
 
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puente',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 6.0),
                  Text('Un lago en dinamarca  ', style: estiloSubTitulo),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
              , fit: BoxFit.cover, height:  200.0,),
              
    );
  }

  Widget _crearAcciones() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _accion(Icons.call, 'CALL'),
          _accion(Icons.near_me, 'ROUTE'),
          _accion(Icons.share, 'SHARE'),
        ]);
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
            'Do ut cillum ipsum occaecat. Labore consectetur incididunt irure proident anim est deserunt exercitation et esse nostrud. Labore incididunt eiusmod ad laborum. Exercitation nostrud esse proident consectetur duis officia nulla mollit esse consequat reprehenderit. Aliqua aliqua et cupidatat amet reprehenderit laborum nulla enim dolor eiusmod esse magna minim anim. Dolor aliqua consectetur minim excepteur in incididunt minim reprehenderit. Occaecat dolore sint labore culpa eiusmod veniam cupidatat excepteur elit ullamco est excepteur amet laborum.',
            textAlign:  TextAlign.justify,
            ),
      ),
    );
  }
}
