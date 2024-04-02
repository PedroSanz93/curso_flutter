import 'package:flutter/material.dart';


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
          title: Text('Material App BAr'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      )
    );
  }
}