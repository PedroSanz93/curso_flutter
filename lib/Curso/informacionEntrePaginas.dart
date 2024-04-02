import 'package:flutter/material.dart';
import 'package:curso_flutter/pages/pageStateful.dart';
import 'package:curso_flutter/pages/pageStateless.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material App',
      home:Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController _textoController = TextEditingController(text: "");


    return Scaffold(
      appBar: AppBar(
        title: Text('Material App BAr'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _textoController,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey[300],
                filled: true,
                hintText: "Escribe informacion"
              ),
              )
            ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder:(context) => PageStateless(_textoController.text),
                  )
                );
            }, 
            child: Text("Enviar a Statefull"),
          ),
          SizedBox(height: 8,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder:(context) => PageStateful(_textoController.text),
                  )
                );
            }, 
            child: Text("Enviar a Stateless"),
          )
        ],
      ),
    );
  }
}