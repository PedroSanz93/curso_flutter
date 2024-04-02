import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:curso_flutter/models/Gif.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  late Future<List<Gif>> _listadoGifs;
  Future<List<Gif>> _getGifts() async {
    final response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=Vs2ea9IdEC9yivgVatKo3nb3UKjOfgIg&limit=10&offset=0&rating=g&bundle=messaging_non_clips"));

    List<Gif> gifs = [];

    if(response.statusCode == 200){
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        gifs.add(
          Gif(
            item["title"], 
            item["images"]
                ["original"]
                ["url"]
            )
          );
      }

      return gifs;
    } else{
      throw Exception("Fallo la conexion");
    }

  }


  @override
  void initState() {
    super.initState();
    _listadoGifs = _getGifts();

  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material App',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Material App BAr'),
        ),
        body: FutureBuilder(
          future: _listadoGifs,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              print(snapshot.data);
              return GridView.count(
                crossAxisCount: 2,
                children: _listGifts(snapshot.data),
              );
            } else if(snapshot.hasError){
                print(snapshot.error);
                return Text("Error");
            }
            return Center(
              child: CircularProgressIndicator(),
              );
          },
        )
      )
    );
  }

  List<Widget> _listGifts(data){
    List<Widget> gifs = [];

    for (var gif in data) {
      gifs.add(Card(child: Column(
        children: [
          Image.network(
            gif.url, 
            fit: BoxFit.fill
            ),
          
        ],
          )
        )
      );
    }
    return gifs;
  }
}


