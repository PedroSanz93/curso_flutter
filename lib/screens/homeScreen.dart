import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
        ),
        body: Center(
          child: Container(
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/dos");
              },
              child: const Text('Ir a Screen dos'),
            ),
          ),
        ),
      )
    );
  }
}