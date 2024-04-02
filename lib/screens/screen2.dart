import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget{
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Screen dos"),
        ),
      body: const Center(
        child: Text("Screen dos"),
      )
    );
  }
}