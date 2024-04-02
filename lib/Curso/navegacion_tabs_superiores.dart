import 'package:curso_flutter/srcNavegacion/pagesNavegacion/HomePageNAvegacion/HomePageNavegacion.dart';
import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion de prueba',
      home:HomePageNavegacion()
    );
  }
}
