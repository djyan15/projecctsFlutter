import 'package:flutter/material.dart';

import 'dart:async';

import 'package:componentes/src/utils/color_string_util.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List<int>();

  int _lastNumber = 0;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View'),
          backgroundColor: getColor('pink'),
        ),
        body: Stack(
          children: <Widget>[_crearLista(), _crearLoading()],
        ));
  }

  Widget _crearLista() {
    // var ruta = 'http://placeimg.com/500/300/';

    return RefreshIndicator(
          onRefresh: obtenerPagina1, 
        child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumeros[index];
          return FadeInImage(
              placeholder: AssetImage('assets/gifduro.gif'),
              image: NetworkImage('http://placeimg.com/500/300/$imagen'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 250.0,
              fit: BoxFit.cover);
        },
      ),
    );
  }

  Future<Null> obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
     new Timer(duration, () {
       _listaNumeros.clear();
       _lastNumber++;
       _agregar10();
     });



return Future.delayed(duration);
  }

  void _agregar10() {
    for (var i = 0; i < 10; i++) {
      _lastNumber++;
      _listaNumeros.add(_lastNumber);

      setState(() {});
    }
  }

  Future fetchData() async {
    _isLoading = true;

    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _agregar10();
    _scrollController.animateTo(_scrollController.position.pixels + 100, duration: Duration(milliseconds:  250), curve: Curves.fastOutSlowIn);
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator(backgroundColor: Colors.pink)],
          ),
          SizedBox(height: 15.0)
        ],
      );

      //
    } else {
      return Container();
    }
  }
}
