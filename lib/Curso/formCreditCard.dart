
import 'package:flutter/material.dart';
import 'package:curso_flutter/widgets/form_card.dart';


void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Pago con tarjeta'),
        ),
        body: FormCard(),
      )
    );
  }
}