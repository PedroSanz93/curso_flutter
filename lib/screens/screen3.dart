import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget{
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screen tres',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Screen tres'),
        ),
        body: Center(
          child: Container(
            child: Text('K dise'),
          ),
        ),
      )
    );
  }
}