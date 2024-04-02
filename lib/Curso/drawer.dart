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
          title: const Text('Material App BAr'),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.red,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/a/a9/Sporting_Cristal_escudo_%28nuevo%2C_500x500%29.png"),
                ),
                const Text("Prueba de texto", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: const Color.fromARGB(255, 158, 79, 79),
                  child: const Text("Home"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: const Color.fromARGB(255, 158, 79, 79),
                  child: const Text("Setting"),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: Color.fromARGB(255, 78, 28, 28),
                  alignment: Alignment.center,
                  child: const Text("Exit"),
                )
              ],
            )
          ),
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